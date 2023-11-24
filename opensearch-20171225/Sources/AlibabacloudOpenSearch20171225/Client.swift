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
        self._endpoint = try getEndpoint("opensearch", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func bindESUserAnalyzerWithOptions(_ appGroupIdentity: String, _ esInstanceId: String, _ request: BindESUserAnalyzerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BindESUserAnalyzerResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindESUserAnalyzer",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/es/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(esInstanceId) + "/actions/bind-analyzer",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindESUserAnalyzerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindESUserAnalyzer(_ appGroupIdentity: String, _ esInstanceId: String, _ request: BindESUserAnalyzerRequest) async throws -> BindESUserAnalyzerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await bindESUserAnalyzerWithOptions(appGroupIdentity as! String, esInstanceId as! String, request as! BindESUserAnalyzerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindEsInstanceWithOptions(_ appGroupIdentity: String, _ request: BindEsInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BindEsInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.body)) {
            body["body"] = request.body ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindEsInstance",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/actions/bind-es-instance",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindEsInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindEsInstance(_ appGroupIdentity: String, _ request: BindEsInstanceRequest) async throws -> BindEsInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await bindEsInstanceWithOptions(appGroupIdentity as! String, request as! BindEsInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func compileSortScriptWithOptions(_ appGroupIdentity: String, _ scriptName: String, _ appVersionId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CompileSortScriptResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CompileSortScript",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appVersionId) + "/sort-scripts/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(scriptName) + "/actions/compiling",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CompileSortScriptResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func compileSortScript(_ appGroupIdentity: String, _ scriptName: String, _ appVersionId: String) async throws -> CompileSortScriptResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await compileSortScriptWithOptions(appGroupIdentity as! String, scriptName as! String, appVersionId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createABTestExperimentWithOptions(_ appGroupIdentity: String, _ sceneId: String, _ groupId: String, _ request: CreateABTestExperimentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateABTestExperimentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateABTestExperiment",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scenes/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(sceneId) + "/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId) + "/experiments",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateABTestExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createABTestExperiment(_ appGroupIdentity: String, _ sceneId: String, _ groupId: String, _ request: CreateABTestExperimentRequest) async throws -> CreateABTestExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createABTestExperimentWithOptions(appGroupIdentity as! String, sceneId as! String, groupId as! String, request as! CreateABTestExperimentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createABTestGroupWithOptions(_ appGroupIdentity: String, _ sceneId: String, _ request: CreateABTestGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateABTestGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateABTestGroup",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scenes/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(sceneId) + "/groups",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateABTestGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createABTestGroup(_ appGroupIdentity: String, _ sceneId: String, _ request: CreateABTestGroupRequest) async throws -> CreateABTestGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createABTestGroupWithOptions(appGroupIdentity as! String, sceneId as! String, request as! CreateABTestGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createABTestSceneWithOptions(_ appGroupIdentity: String, _ request: CreateABTestSceneRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateABTestSceneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateABTestScene",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scenes",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateABTestSceneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createABTestScene(_ appGroupIdentity: String, _ request: CreateABTestSceneRequest) async throws -> CreateABTestSceneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createABTestSceneWithOptions(appGroupIdentity as! String, request as! CreateABTestSceneRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAppWithOptions(_ appGroupIdentity: String, _ request: CreateAppRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAppResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApp",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApp(_ appGroupIdentity: String, _ request: CreateAppRequest) async throws -> CreateAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAppWithOptions(appGroupIdentity as! String, request as! CreateAppRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAppGroupWithOptions(_ request: CreateAppGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAppGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAppGroup",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAppGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAppGroup(_ request: CreateAppGroupRequest) async throws -> CreateAppGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAppGroupWithOptions(request as! CreateAppGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFirstRankWithOptions(_ appGroupIdentity: String, _ appId: String, _ request: CreateFirstRankRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFirstRankResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFirstRank",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/first-ranks",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFirstRankResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFirstRank(_ appGroupIdentity: String, _ appId: String, _ request: CreateFirstRankRequest) async throws -> CreateFirstRankResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createFirstRankWithOptions(appGroupIdentity as! String, appId as! String, request as! CreateFirstRankRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFunctionInstanceWithOptions(_ appGroupIdentity: String, _ functionName: String, _ request: CreateFunctionInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFunctionInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createParameters)) {
            body["createParameters"] = request.createParameters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.cron)) {
            body["cron"] = request.cron ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.functionType)) {
            body["functionType"] = request.functionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["instanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelType)) {
            body["modelType"] = request.modelType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usageParameters)) {
            body["usageParameters"] = request.usageParameters ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFunctionInstance",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/instances",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFunctionInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFunctionInstance(_ appGroupIdentity: String, _ functionName: String, _ request: CreateFunctionInstanceRequest) async throws -> CreateFunctionInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createFunctionInstanceWithOptions(appGroupIdentity as! String, functionName as! String, request as! CreateFunctionInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFunctionResourceWithOptions(_ appGroupIdentity: String, _ functionName: String, _ request: CreateFunctionResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFunctionResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.data)) {
            body["Data"] = request.data!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceName)) {
            body["ResourceName"] = request.resourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFunctionResource",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/resources",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFunctionResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFunctionResource(_ appGroupIdentity: String, _ functionName: String, _ request: CreateFunctionResourceRequest) async throws -> CreateFunctionResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createFunctionResourceWithOptions(appGroupIdentity as! String, functionName as! String, request as! CreateFunctionResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFunctionTaskWithOptions(_ appGroupIdentity: String, _ functionName: String, _ instanceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFunctionTaskResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFunctionTask",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceName) + "/tasks",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFunctionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFunctionTask(_ appGroupIdentity: String, _ functionName: String, _ instanceName: String) async throws -> CreateFunctionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createFunctionTaskWithOptions(appGroupIdentity as! String, functionName as! String, instanceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInterventionDictionaryWithOptions(_ request: CreateInterventionDictionaryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateInterventionDictionaryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.analyzerType)) {
            body["analyzerType"] = request.analyzerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateInterventionDictionary",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/intervention-dictionaries",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateInterventionDictionaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInterventionDictionary(_ request: CreateInterventionDictionaryRequest) async throws -> CreateInterventionDictionaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createInterventionDictionaryWithOptions(request as! CreateInterventionDictionaryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createQueryProcessorWithOptions(_ appGroupIdentity: String, _ appId: String, _ request: CreateQueryProcessorRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateQueryProcessorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateQueryProcessor",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/query-processors",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateQueryProcessorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createQueryProcessor(_ appGroupIdentity: String, _ appId: String, _ request: CreateQueryProcessorRequest) async throws -> CreateQueryProcessorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createQueryProcessorWithOptions(appGroupIdentity as! String, appId as! String, request as! CreateQueryProcessorRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScheduledTaskWithOptions(_ appGroupIdentity: String, _ request: CreateScheduledTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateScheduledTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateScheduledTask",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scheduled-tasks",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateScheduledTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScheduledTask(_ appGroupIdentity: String, _ request: CreateScheduledTaskRequest) async throws -> CreateScheduledTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createScheduledTaskWithOptions(appGroupIdentity as! String, request as! CreateScheduledTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSearchStrategyWithOptions(_ appGroupIdentity: String, _ appId: String, _ request: CreateSearchStrategyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSearchStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSearchStrategy",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/search-strategies",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSearchStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSearchStrategy(_ appGroupIdentity: String, _ appId: String, _ request: CreateSearchStrategyRequest) async throws -> CreateSearchStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createSearchStrategyWithOptions(appGroupIdentity as! String, appId as! String, request as! CreateSearchStrategyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSecondRankWithOptions(_ appGroupIdentity: String, _ appId: String, _ request: CreateSecondRankRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSecondRankResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSecondRank",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/second-ranks",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSecondRankResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSecondRank(_ appGroupIdentity: String, _ appId: String, _ request: CreateSecondRankRequest) async throws -> CreateSecondRankResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createSecondRankWithOptions(appGroupIdentity as! String, appId as! String, request as! CreateSecondRankRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSortScriptWithOptions(_ appGroupIdentity: String, _ appVersionId: String, _ request: CreateSortScriptRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSortScriptResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scriptName)) {
            body["scriptName"] = request.scriptName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSortScript",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appVersionId) + "/sort-scripts",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSortScriptResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSortScript(_ appGroupIdentity: String, _ appVersionId: String, _ request: CreateSortScriptRequest) async throws -> CreateSortScriptResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createSortScriptWithOptions(appGroupIdentity as! String, appVersionId as! String, request as! CreateSortScriptRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserAnalyzerWithOptions(_ request: CreateUserAnalyzerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUserAnalyzerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.business)) {
            body["business"] = request.business ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessAppGroupId)) {
            body["businessAppGroupId"] = request.businessAppGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessType)) {
            body["businessType"] = request.businessType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUserAnalyzer",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/user-analyzers",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUserAnalyzerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserAnalyzer(_ request: CreateUserAnalyzerRequest) async throws -> CreateUserAnalyzerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createUserAnalyzerWithOptions(request as! CreateUserAnalyzerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteABTestExperimentWithOptions(_ appGroupIdentity: String, _ sceneId: String, _ groupId: String, _ experimentId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteABTestExperimentResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteABTestExperiment",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scenes/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(sceneId) + "/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId) + "/experiments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(experimentId),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteABTestExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteABTestExperiment(_ appGroupIdentity: String, _ sceneId: String, _ groupId: String, _ experimentId: String) async throws -> DeleteABTestExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteABTestExperimentWithOptions(appGroupIdentity as! String, sceneId as! String, groupId as! String, experimentId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteABTestGroupWithOptions(_ appGroupIdentity: String, _ sceneId: String, _ groupId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteABTestGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteABTestGroup",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scenes/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(sceneId) + "/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteABTestGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteABTestGroup(_ appGroupIdentity: String, _ sceneId: String, _ groupId: String) async throws -> DeleteABTestGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteABTestGroupWithOptions(appGroupIdentity as! String, sceneId as! String, groupId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteABTestSceneWithOptions(_ appGroupIdentity: String, _ sceneId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteABTestSceneResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteABTestScene",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scenes/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(sceneId),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteABTestSceneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteABTestScene(_ appGroupIdentity: String, _ sceneId: String) async throws -> DeleteABTestSceneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteABTestSceneWithOptions(appGroupIdentity as! String, sceneId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFunctionInstanceWithOptions(_ appGroupIdentity: String, _ functionName: String, _ instanceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFunctionInstanceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFunctionInstance",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceName),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFunctionInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFunctionInstance(_ appGroupIdentity: String, _ functionName: String, _ instanceName: String) async throws -> DeleteFunctionInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteFunctionInstanceWithOptions(appGroupIdentity as! String, functionName as! String, instanceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFunctionResourceWithOptions(_ appGroupIdentity: String, _ functionName: String, _ resourceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFunctionResourceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFunctionResource",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/resources/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(resourceName),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFunctionResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFunctionResource(_ appGroupIdentity: String, _ functionName: String, _ resourceName: String) async throws -> DeleteFunctionResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteFunctionResourceWithOptions(appGroupIdentity as! String, functionName as! String, resourceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFunctionTaskWithOptions(_ appGroupIdentity: String, _ functionName: String, _ instanceName: String, _ generation: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFunctionTaskResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFunctionTask",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceName) + "/tasks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(generation),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFunctionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFunctionTask(_ appGroupIdentity: String, _ functionName: String, _ instanceName: String, _ generation: String) async throws -> DeleteFunctionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteFunctionTaskWithOptions(appGroupIdentity as! String, functionName as! String, instanceName as! String, generation as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSortScriptWithOptions(_ appGroupIdentity: String, _ scriptName: String, _ appVersionId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSortScriptResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSortScript",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appVersionId) + "/sort-scripts/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(scriptName),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSortScriptResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSortScript(_ appGroupIdentity: String, _ scriptName: String, _ appVersionId: String) async throws -> DeleteSortScriptResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteSortScriptWithOptions(appGroupIdentity as! String, scriptName as! String, appVersionId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSortScriptFileWithOptions(_ appGroupIdentity: String, _ appVersionId: String, _ scriptName: String, _ fileName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSortScriptFileResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSortScriptFile",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appVersionId) + "/sort-scripts/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(scriptName) + "/files/src/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(fileName),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSortScriptFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSortScriptFile(_ appGroupIdentity: String, _ appVersionId: String, _ scriptName: String, _ fileName: String) async throws -> DeleteSortScriptFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteSortScriptFileWithOptions(appGroupIdentity as! String, appVersionId as! String, scriptName as! String, fileName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeABTestExperimentWithOptions(_ appGroupIdentity: String, _ sceneId: String, _ groupId: String, _ experimentId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeABTestExperimentResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeABTestExperiment",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scenes/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(sceneId) + "/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId) + "/experiments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(experimentId),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeABTestExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeABTestExperiment(_ appGroupIdentity: String, _ sceneId: String, _ groupId: String, _ experimentId: String) async throws -> DescribeABTestExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeABTestExperimentWithOptions(appGroupIdentity as! String, sceneId as! String, groupId as! String, experimentId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeABTestGroupWithOptions(_ appGroupIdentity: String, _ sceneId: String, _ groupId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeABTestGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeABTestGroup",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scenes/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(sceneId) + "/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeABTestGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeABTestGroup(_ appGroupIdentity: String, _ sceneId: String, _ groupId: String) async throws -> DescribeABTestGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeABTestGroupWithOptions(appGroupIdentity as! String, sceneId as! String, groupId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeABTestSceneWithOptions(_ appGroupIdentity: String, _ sceneId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeABTestSceneResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeABTestScene",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scenes/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(sceneId),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeABTestSceneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeABTestScene(_ appGroupIdentity: String, _ sceneId: String) async throws -> DescribeABTestSceneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeABTestSceneWithOptions(appGroupIdentity as! String, sceneId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppWithOptions(_ appGroupIdentity: String, _ appId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAppResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApp",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApp(_ appGroupIdentity: String, _ appId: String) async throws -> DescribeAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeAppWithOptions(appGroupIdentity as! String, appId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppGroupWithOptions(_ appGroupIdentity: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAppGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAppGroup",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAppGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppGroup(_ appGroupIdentity: String) async throws -> DescribeAppGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeAppGroupWithOptions(appGroupIdentity as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppStatisticsWithOptions(_ appGroupIdentity: String, _ appId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAppStatisticsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAppStatistics",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/statistics",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAppStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppStatistics(_ appGroupIdentity: String, _ appId: String) async throws -> DescribeAppStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeAppStatisticsWithOptions(appGroupIdentity as! String, appId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAppsWithOptions(_ appGroupIdentity: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAppsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApps",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAppsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApps(_ appGroupIdentity: String) async throws -> DescribeAppsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeAppsWithOptions(appGroupIdentity as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDataCollctionWithOptions(_ appGroupIdentity: String, _ dataCollectionIdentity: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDataCollctionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDataCollction",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/data-collections/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(dataCollectionIdentity),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDataCollctionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDataCollction(_ appGroupIdentity: String, _ dataCollectionIdentity: String) async throws -> DescribeDataCollctionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeDataCollctionWithOptions(appGroupIdentity as! String, dataCollectionIdentity as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFirstRankWithOptions(_ appGroupIdentity: String, _ appId: String, _ name: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFirstRankResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFirstRank",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/first-ranks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(name),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFirstRankResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFirstRank(_ appGroupIdentity: String, _ appId: String, _ name: String) async throws -> DescribeFirstRankResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeFirstRankWithOptions(appGroupIdentity as! String, appId as! String, name as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInterventionDictionaryWithOptions(_ name: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInterventionDictionaryResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInterventionDictionary",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/intervention-dictionaries/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(name),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInterventionDictionaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInterventionDictionary(_ name: String) async throws -> DescribeInterventionDictionaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeInterventionDictionaryWithOptions(name as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeQueryProcessorWithOptions(_ appGroupIdentity: String, _ appId: String, _ name: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeQueryProcessorResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeQueryProcessor",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/query-processors/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(name),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeQueryProcessorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeQueryProcessor(_ appGroupIdentity: String, _ appId: String, _ name: String) async throws -> DescribeQueryProcessorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeQueryProcessorWithOptions(appGroupIdentity as! String, appId as! String, name as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/regions",
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
    public func describeRegions() async throws -> DescribeRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeRegionsWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScheduledTaskWithOptions(_ appGroupIdentity: String, _ taskId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeScheduledTaskResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeScheduledTask",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scheduled-tasks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeScheduledTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScheduledTask(_ appGroupIdentity: String, _ taskId: String) async throws -> DescribeScheduledTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeScheduledTaskWithOptions(appGroupIdentity as! String, taskId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecondRankWithOptions(_ appGroupIdentity: String, _ appId: String, _ name: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSecondRankResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSecondRank",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/second-ranks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(name),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSecondRankResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecondRank(_ appGroupIdentity: String, _ appId: String, _ name: String) async throws -> DescribeSecondRankResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeSecondRankWithOptions(appGroupIdentity as! String, appId as! String, name as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSlowQueryStatusWithOptions(_ appGroupIdentity: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSlowQueryStatusResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSlowQueryStatus",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/optimizers/slow-query",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSlowQueryStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSlowQueryStatus(_ appGroupIdentity: String) async throws -> DescribeSlowQueryStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeSlowQueryStatusWithOptions(appGroupIdentity as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserAnalyzerWithOptions(_ name: String, _ request: DescribeUserAnalyzerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserAnalyzerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.with)) {
            query["with"] = request.with ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUserAnalyzer",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/user-analyzers/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(name),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUserAnalyzerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserAnalyzer(_ name: String, _ request: DescribeUserAnalyzerRequest) async throws -> DescribeUserAnalyzerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeUserAnalyzerWithOptions(name as! String, request as! DescribeUserAnalyzerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableSlowQueryWithOptions(_ appGroupIdentity: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableSlowQueryResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableSlowQuery",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/optimizers/slow-query/actions/disable",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableSlowQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableSlowQuery(_ appGroupIdentity: String) async throws -> DisableSlowQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await disableSlowQueryWithOptions(appGroupIdentity as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableSlowQueryWithOptions(_ appGroupIdentity: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableSlowQueryResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableSlowQuery",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/optimizers/slow-query/actions/enable",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableSlowQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableSlowQuery(_ appGroupIdentity: String) async throws -> EnableSlowQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await enableSlowQueryWithOptions(appGroupIdentity as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateMergedTableWithOptions(_ request: GenerateMergedTableRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateMergedTableResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.spec)) {
            query["spec"] = request.spec ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateMergedTable",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/assist/schema/actions/merge",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateMergedTableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateMergedTable(_ request: GenerateMergedTableRequest) async throws -> GenerateMergedTableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await generateMergedTableWithOptions(request as! GenerateMergedTableRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDomainWithOptions(_ domainName: String, _ request: GetDomainRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appGroupIdentity)) {
            query["appGroupIdentity"] = request.appGroupIdentity ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDomain",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/domains/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(domainName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDomain(_ domainName: String, _ request: GetDomainRequest) async throws -> GetDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDomainWithOptions(domainName as! String, request as! GetDomainRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunctionCurrentVersionWithOptions(_ functionName: String, _ request: GetFunctionCurrentVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFunctionCurrentVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.functionType)) {
            query["functionType"] = request.functionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelType)) {
            query["modelType"] = request.modelType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFunctionCurrentVersion",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/current-version",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFunctionCurrentVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunctionCurrentVersion(_ functionName: String, _ request: GetFunctionCurrentVersionRequest) async throws -> GetFunctionCurrentVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getFunctionCurrentVersionWithOptions(functionName as! String, request as! GetFunctionCurrentVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunctionDefaultInstanceWithOptions(_ appGroupIdentity: String, _ functionName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFunctionDefaultInstanceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFunctionDefaultInstance",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/default-instance",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFunctionDefaultInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunctionDefaultInstance(_ appGroupIdentity: String, _ functionName: String) async throws -> GetFunctionDefaultInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getFunctionDefaultInstanceWithOptions(appGroupIdentity as! String, functionName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunctionInstanceWithOptions(_ appGroupIdentity: String, _ functionName: String, _ instanceName: String, _ request: GetFunctionInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFunctionInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.output)) {
            query["output"] = request.output ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFunctionInstance",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFunctionInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunctionInstance(_ appGroupIdentity: String, _ functionName: String, _ instanceName: String, _ request: GetFunctionInstanceRequest) async throws -> GetFunctionInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getFunctionInstanceWithOptions(appGroupIdentity as! String, functionName as! String, instanceName as! String, request as! GetFunctionInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunctionResourceWithOptions(_ appGroupIdentity: String, _ functionName: String, _ resourceName: String, _ request: GetFunctionResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFunctionResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.output)) {
            query["output"] = request.output ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFunctionResource",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/resources/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(resourceName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFunctionResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunctionResource(_ appGroupIdentity: String, _ functionName: String, _ resourceName: String, _ request: GetFunctionResourceRequest) async throws -> GetFunctionResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getFunctionResourceWithOptions(appGroupIdentity as! String, functionName as! String, resourceName as! String, request as! GetFunctionResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunctionTaskWithOptions(_ appGroupIdentity: String, _ functionName: String, _ instanceName: String, _ generation: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFunctionTaskResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFunctionTask",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceName) + "/tasks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(generation),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFunctionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunctionTask(_ appGroupIdentity: String, _ functionName: String, _ instanceName: String, _ generation: String) async throws -> GetFunctionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getFunctionTaskWithOptions(appGroupIdentity as! String, functionName as! String, instanceName as! String, generation as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunctionVersionWithOptions(_ functionName: String, _ versionId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFunctionVersionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFunctionVersion",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/versions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(versionId),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFunctionVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFunctionVersion(_ functionName: String, _ versionId: String) async throws -> GetFunctionVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getFunctionVersionWithOptions(functionName as! String, versionId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScriptFileNamesWithOptions(_ appGroupIdentity: String, _ appVersionId: String, _ scriptName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetScriptFileNamesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetScriptFileNames",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appVersionId) + "/sort-scripts/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(scriptName) + "/file-names",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetScriptFileNamesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScriptFileNames(_ appGroupIdentity: String, _ appVersionId: String, _ scriptName: String) async throws -> GetScriptFileNamesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getScriptFileNamesWithOptions(appGroupIdentity as! String, appVersionId as! String, scriptName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSearchStrategyWithOptions(_ appGroupIdentity: String, _ appId: String, _ strategyName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSearchStrategyResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSearchStrategy",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/search-strategies/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(strategyName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSearchStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSearchStrategy(_ appGroupIdentity: String, _ appId: String, _ strategyName: String) async throws -> GetSearchStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSearchStrategyWithOptions(appGroupIdentity as! String, appId as! String, strategyName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSortScriptWithOptions(_ appGroupIdentity: String, _ scriptName: String, _ appVersionId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSortScriptResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSortScript",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appVersionId) + "/sort-scripts/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(scriptName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSortScriptResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSortScript(_ appGroupIdentity: String, _ scriptName: String, _ appVersionId: String) async throws -> GetSortScriptResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSortScriptWithOptions(appGroupIdentity as! String, scriptName as! String, appVersionId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSortScriptFileWithOptions(_ appGroupIdentity: String, _ scriptName: String, _ appVersionId: String, _ fileName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSortScriptFileResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSortScriptFile",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appVersionId) + "/sort-scripts/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(scriptName) + "/files/src/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(fileName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSortScriptFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSortScriptFile(_ appGroupIdentity: String, _ scriptName: String, _ appVersionId: String, _ fileName: String) async throws -> GetSortScriptFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSortScriptFileWithOptions(appGroupIdentity as! String, scriptName as! String, appVersionId as! String, fileName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listABTestExperimentsWithOptions(_ appGroupIdentity: String, _ sceneId: String, _ groupId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListABTestExperimentsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListABTestExperiments",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scenes/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(sceneId) + "/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId) + "/experiments",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListABTestExperimentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listABTestExperiments(_ appGroupIdentity: String, _ sceneId: String, _ groupId: String) async throws -> ListABTestExperimentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listABTestExperimentsWithOptions(appGroupIdentity as! String, sceneId as! String, groupId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listABTestFixedFlowDividersWithOptions(_ appGroupIdentity: String, _ sceneId: String, _ groupId: String, _ experimentId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListABTestFixedFlowDividersResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListABTestFixedFlowDividers",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scenes/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(sceneId) + "/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId) + "/experiments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(experimentId) + "/fixed-flow-dividers",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListABTestFixedFlowDividersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listABTestFixedFlowDividers(_ appGroupIdentity: String, _ sceneId: String, _ groupId: String, _ experimentId: String) async throws -> ListABTestFixedFlowDividersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listABTestFixedFlowDividersWithOptions(appGroupIdentity as! String, sceneId as! String, groupId as! String, experimentId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listABTestGroupsWithOptions(_ appGroupIdentity: String, _ sceneId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListABTestGroupsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListABTestGroups",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scenes/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(sceneId) + "/groups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListABTestGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listABTestGroups(_ appGroupIdentity: String, _ sceneId: String) async throws -> ListABTestGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listABTestGroupsWithOptions(appGroupIdentity as! String, sceneId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listABTestScenesWithOptions(_ appGroupIdentity: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListABTestScenesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListABTestScenes",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scenes",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListABTestScenesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listABTestScenes(_ appGroupIdentity: String) async throws -> ListABTestScenesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listABTestScenesWithOptions(appGroupIdentity as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppGroupsWithOptions(_ tmpReq: ListAppGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAppGroupsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListAppGroupsShrinkRequest = ListAppGroupsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["instanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["sortBy"] = request.sortBy!;
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAppGroups",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAppGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAppGroups(_ request: ListAppGroupsRequest) async throws -> ListAppGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAppGroupsWithOptions(request as! ListAppGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCollectionsWithOptions(_ appGroupIdentity: String, _ request: ListDataCollectionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataCollectionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataCollections",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/data-collections",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataCollectionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataCollections(_ appGroupIdentity: String, _ request: ListDataCollectionsRequest) async throws -> ListDataCollectionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDataCollectionsWithOptions(appGroupIdentity as! String, request as! ListDataCollectionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataSourceTableFieldsWithOptions(_ dataSourceType: String, _ request: ListDataSourceTableFieldsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataSourceTableFieldsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.params)) {
            query["params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rawType)) {
            query["rawType"] = request.rawType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataSourceTableFields",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/assist/data-sources/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(dataSourceType) + "/fields",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataSourceTableFieldsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataSourceTableFields(_ dataSourceType: String, _ request: ListDataSourceTableFieldsRequest) async throws -> ListDataSourceTableFieldsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDataSourceTableFieldsWithOptions(dataSourceType as! String, request as! ListDataSourceTableFieldsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataSourceTablesWithOptions(_ dataSourceType: String, _ request: ListDataSourceTablesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataSourceTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.params)) {
            query["params"] = request.params ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataSourceTables",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/assist/data-sources/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(dataSourceType) + "/tables",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataSourceTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataSourceTables(_ dataSourceType: String, _ request: ListDataSourceTablesRequest) async throws -> ListDataSourceTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDataSourceTablesWithOptions(dataSourceType as! String, request as! ListDataSourceTablesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFirstRanksWithOptions(_ appGroupIdentity: String, _ appId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFirstRanksResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFirstRanks",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/first-ranks",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFirstRanksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFirstRanks(_ appGroupIdentity: String, _ appId: String) async throws -> ListFirstRanksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listFirstRanksWithOptions(appGroupIdentity as! String, appId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFunctionInstancesWithOptions(_ appGroupIdentity: String, _ functionName: String, _ request: ListFunctionInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFunctionInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.functionType)) {
            query["functionType"] = request.functionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelType)) {
            query["modelType"] = request.modelType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.output)) {
            query["output"] = request.output ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["source"] = request.source ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFunctionInstances",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/instances",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFunctionInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFunctionInstances(_ appGroupIdentity: String, _ functionName: String, _ request: ListFunctionInstancesRequest) async throws -> ListFunctionInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listFunctionInstancesWithOptions(appGroupIdentity as! String, functionName as! String, request as! ListFunctionInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFunctionResourcesWithOptions(_ appGroupIdentity: String, _ functionName: String, _ request: ListFunctionResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFunctionResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.output)) {
            query["output"] = request.output ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["resourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFunctionResources",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/resources",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFunctionResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFunctionResources(_ appGroupIdentity: String, _ functionName: String, _ request: ListFunctionResourcesRequest) async throws -> ListFunctionResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listFunctionResourcesWithOptions(appGroupIdentity as! String, functionName as! String, request as! ListFunctionResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFunctionTasksWithOptions(_ appGroupIdentity: String, _ functionName: String, _ instanceName: String, _ request: ListFunctionTasksRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFunctionTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["endTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["startTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFunctionTasks",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceName) + "/tasks",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFunctionTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFunctionTasks(_ appGroupIdentity: String, _ functionName: String, _ instanceName: String, _ request: ListFunctionTasksRequest) async throws -> ListFunctionTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listFunctionTasksWithOptions(appGroupIdentity as! String, functionName as! String, instanceName as! String, request as! ListFunctionTasksRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInterventionDictionariesWithOptions(_ request: ListInterventionDictionariesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInterventionDictionariesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.types)) {
            query["types"] = request.types ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInterventionDictionaries",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/intervention-dictionaries",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInterventionDictionariesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInterventionDictionaries(_ request: ListInterventionDictionariesRequest) async throws -> ListInterventionDictionariesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listInterventionDictionariesWithOptions(request as! ListInterventionDictionariesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInterventionDictionaryEntriesWithOptions(_ name: String, _ request: ListInterventionDictionaryEntriesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInterventionDictionaryEntriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.word)) {
            query["word"] = request.word ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInterventionDictionaryEntries",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/intervention-dictionaries/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(name) + "/entries",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInterventionDictionaryEntriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInterventionDictionaryEntries(_ name: String, _ request: ListInterventionDictionaryEntriesRequest) async throws -> ListInterventionDictionaryEntriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listInterventionDictionaryEntriesWithOptions(name as! String, request as! ListInterventionDictionaryEntriesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInterventionDictionaryNerResultsWithOptions(_ name: String, _ request: ListInterventionDictionaryNerResultsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInterventionDictionaryNerResultsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["query"] = request.query ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInterventionDictionaryNerResults",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/intervention-dictionaries/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(name) + "/ner-results",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInterventionDictionaryNerResultsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInterventionDictionaryNerResults(_ name: String, _ request: ListInterventionDictionaryNerResultsRequest) async throws -> ListInterventionDictionaryNerResultsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listInterventionDictionaryNerResultsWithOptions(name as! String, request as! ListInterventionDictionaryNerResultsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInterventionDictionaryRelatedEntitiesWithOptions(_ name: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInterventionDictionaryRelatedEntitiesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInterventionDictionaryRelatedEntities",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/intervention-dictionaries/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(name) + "/related",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInterventionDictionaryRelatedEntitiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInterventionDictionaryRelatedEntities(_ name: String) async throws -> ListInterventionDictionaryRelatedEntitiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listInterventionDictionaryRelatedEntitiesWithOptions(name as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProceedingsWithOptions(_ appGroupIdentity: String, _ request: ListProceedingsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProceedingsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterFinished)) {
            query["filterFinished"] = request.filterFinished!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProceedings",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/proceedings",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProceedingsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProceedings(_ appGroupIdentity: String, _ request: ListProceedingsRequest) async throws -> ListProceedingsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProceedingsWithOptions(appGroupIdentity as! String, request as! ListProceedingsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQueryProcessorAnalyzerResultsWithOptions(_ appGroupIdentity: String, _ appId: String, _ name: String, _ request: ListQueryProcessorAnalyzerResultsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListQueryProcessorAnalyzerResultsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.text)) {
            query["text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListQueryProcessorAnalyzerResults",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/query-processors/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(name) + "/analyze",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListQueryProcessorAnalyzerResultsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQueryProcessorAnalyzerResults(_ appGroupIdentity: String, _ appId: String, _ name: String, _ request: ListQueryProcessorAnalyzerResultsRequest) async throws -> ListQueryProcessorAnalyzerResultsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listQueryProcessorAnalyzerResultsWithOptions(appGroupIdentity as! String, appId as! String, name as! String, request as! ListQueryProcessorAnalyzerResultsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQueryProcessorNersWithOptions(_ request: ListQueryProcessorNersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListQueryProcessorNersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["domain"] = request.domain ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListQueryProcessorNers",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/query-processor/ner/default-priorities",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListQueryProcessorNersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQueryProcessorNers(_ request: ListQueryProcessorNersRequest) async throws -> ListQueryProcessorNersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listQueryProcessorNersWithOptions(request as! ListQueryProcessorNersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQueryProcessorsWithOptions(_ appGroupIdentity: String, _ appId: String, _ request: ListQueryProcessorsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListQueryProcessorsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isActive)) {
            query["isActive"] = request.isActive!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListQueryProcessors",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/query-processors",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListQueryProcessorsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQueryProcessors(_ appGroupIdentity: String, _ appId: String, _ request: ListQueryProcessorsRequest) async throws -> ListQueryProcessorsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listQueryProcessorsWithOptions(appGroupIdentity as! String, appId as! String, request as! ListQueryProcessorsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQuotaReviewTasksWithOptions(_ appGroupIdentity: String, _ request: ListQuotaReviewTasksRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListQuotaReviewTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListQuotaReviewTasks",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/quota-review-tasks",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListQuotaReviewTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQuotaReviewTasks(_ appGroupIdentity: String, _ request: ListQuotaReviewTasksRequest) async throws -> ListQuotaReviewTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listQuotaReviewTasksWithOptions(appGroupIdentity as! String, request as! ListQuotaReviewTasksRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listScheduledTasksWithOptions(_ appGroupIdentity: String, _ request: ListScheduledTasksRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListScheduledTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
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
            "action": "ListScheduledTasks",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scheduled-tasks",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListScheduledTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listScheduledTasks(_ appGroupIdentity: String, _ request: ListScheduledTasksRequest) async throws -> ListScheduledTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listScheduledTasksWithOptions(appGroupIdentity as! String, request as! ListScheduledTasksRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSearchStrategiesWithOptions(_ appGroupIdentity: String, _ appId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSearchStrategiesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSearchStrategies",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/search-strategies",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSearchStrategiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSearchStrategies(_ appGroupIdentity: String, _ appId: String) async throws -> ListSearchStrategiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSearchStrategiesWithOptions(appGroupIdentity as! String, appId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSecondRanksWithOptions(_ appGroupIdentity: String, _ appId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSecondRanksResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSecondRanks",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/second-ranks",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSecondRanksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSecondRanks(_ appGroupIdentity: String, _ appId: String) async throws -> ListSecondRanksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSecondRanksWithOptions(appGroupIdentity as! String, appId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSlowQueryCategoriesWithOptions(_ appGroupIdentity: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSlowQueryCategoriesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSlowQueryCategories",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/optimizers/slow-query/categories",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSlowQueryCategoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSlowQueryCategories(_ appGroupIdentity: String) async throws -> ListSlowQueryCategoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSlowQueryCategoriesWithOptions(appGroupIdentity as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSlowQueryQueriesWithOptions(_ appGroupIdentity: String, _ categoryIndex: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSlowQueryQueriesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSlowQueryQueries",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/optimizers/slow-query/categories/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(categoryIndex) + "/queries",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSlowQueryQueriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSlowQueryQueries(_ appGroupIdentity: String, _ categoryIndex: String) async throws -> ListSlowQueryQueriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSlowQueryQueriesWithOptions(appGroupIdentity as! String, categoryIndex as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSortExpressionsWithOptions(_ appGroupIdentity: String, _ appId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSortExpressionsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSortExpressions",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/sort-expressions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSortExpressionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSortExpressions(_ appGroupIdentity: String, _ appId: String) async throws -> ListSortExpressionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSortExpressionsWithOptions(appGroupIdentity as! String, appId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSortScriptsWithOptions(_ appGroupIdentity: String, _ appVersionId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSortScriptsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSortScripts",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appVersionId) + "/sort-scripts",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSortScriptsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSortScripts(_ appGroupIdentity: String, _ appVersionId: String) async throws -> ListSortScriptsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSortScriptsWithOptions(appGroupIdentity as! String, appVersionId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStatisticLogsWithOptions(_ appGroupIdentity: String, _ moduleName: String, _ request: ListStatisticLogsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListStatisticLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.columns)) {
            query["columns"] = request.columns ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distinct)) {
            query["distinct"] = request.distinct!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["sortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["startTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.stopTime)) {
            query["stopTime"] = request.stopTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListStatisticLogs",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/statistic-logs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(moduleName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListStatisticLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStatisticLogs(_ appGroupIdentity: String, _ moduleName: String, _ request: ListStatisticLogsRequest) async throws -> ListStatisticLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listStatisticLogsWithOptions(appGroupIdentity as! String, moduleName as! String, request as! ListStatisticLogsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStatisticReportWithOptions(_ appGroupIdentity: String, _ moduleName: String, _ request: ListStatisticReportRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListStatisticReportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.columns)) {
            query["columns"] = request.columns ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["endTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["startTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListStatisticReport",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/statistic-report/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(moduleName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListStatisticReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listStatisticReport(_ appGroupIdentity: String, _ moduleName: String, _ request: ListStatisticReportRequest) async throws -> ListStatisticReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listStatisticReportWithOptions(appGroupIdentity as! String, moduleName as! String, request as! ListStatisticReportRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResourcesWithOptions(_ tmpReq: ListTagResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagResourcesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListTagResourcesShrinkRequest = ListTagResourcesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.resourceId)) {
            request.resourceIdShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resourceId, "resourceId", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIdShrink)) {
            query["resourceId"] = request.resourceIdShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["resourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["tag"] = request.tagShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagResources",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/resource-tags",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResources(_ request: ListTagResourcesRequest) async throws -> ListTagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTagResourcesWithOptions(request as! ListTagResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserAnalyzerEntriesWithOptions(_ name: String, _ request: ListUserAnalyzerEntriesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserAnalyzerEntriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.word)) {
            query["word"] = request.word ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserAnalyzerEntries",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/user-analyzers/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(name) + "/entries",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserAnalyzerEntriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserAnalyzerEntries(_ name: String, _ request: ListUserAnalyzerEntriesRequest) async throws -> ListUserAnalyzerEntriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listUserAnalyzerEntriesWithOptions(name as! String, request as! ListUserAnalyzerEntriesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserAnalyzersWithOptions(_ request: ListUserAnalyzersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserAnalyzersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserAnalyzers",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/user-analyzers",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserAnalyzersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserAnalyzers(_ request: ListUserAnalyzersRequest) async throws -> ListUserAnalyzersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listUserAnalyzersWithOptions(request as! ListUserAnalyzersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAppGroupWithOptions(_ appGroupIdentity: String, _ request: ModifyAppGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAppGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentVersion)) {
            body["currentVersion"] = request.currentVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            body["domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAppGroup",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAppGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAppGroup(_ appGroupIdentity: String, _ request: ModifyAppGroupRequest) async throws -> ModifyAppGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyAppGroupWithOptions(appGroupIdentity as! String, request as! ModifyAppGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAppGroupQuotaWithOptions(_ appGroupIdentity: String, _ request: ModifyAppGroupQuotaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAppGroupQuotaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAppGroupQuota",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/quota",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAppGroupQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAppGroupQuota(_ appGroupIdentity: String, _ request: ModifyAppGroupQuotaRequest) async throws -> ModifyAppGroupQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyAppGroupQuotaWithOptions(appGroupIdentity as! String, request as! ModifyAppGroupQuotaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyFirstRankWithOptions(_ appGroupIdentity: String, _ appId: String, _ name: String, _ request: ModifyFirstRankRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyFirstRankResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyFirstRank",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/first-ranks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(name),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyFirstRankResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyFirstRank(_ appGroupIdentity: String, _ appId: String, _ name: String, _ request: ModifyFirstRankRequest) async throws -> ModifyFirstRankResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyFirstRankWithOptions(appGroupIdentity as! String, appId as! String, name as! String, request as! ModifyFirstRankRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyQueryProcessorWithOptions(_ appGroupIdentity: String, _ appId: String, _ name: String, _ request: ModifyQueryProcessorRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyQueryProcessorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyQueryProcessor",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/query-processors/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(name),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyQueryProcessorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyQueryProcessor(_ appGroupIdentity: String, _ appId: String, _ name: String, _ request: ModifyQueryProcessorRequest) async throws -> ModifyQueryProcessorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyQueryProcessorWithOptions(appGroupIdentity as! String, appId as! String, name as! String, request as! ModifyQueryProcessorRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyScheduledTaskWithOptions(_ appGroupIdentity: String, _ taskId: String, _ request: ModifyScheduledTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyScheduledTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyScheduledTask",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scheduled-tasks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyScheduledTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyScheduledTask(_ appGroupIdentity: String, _ taskId: String, _ request: ModifyScheduledTaskRequest) async throws -> ModifyScheduledTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifyScheduledTaskWithOptions(appGroupIdentity as! String, taskId as! String, request as! ModifyScheduledTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySecondRankWithOptions(_ appGroupIdentity: String, _ appId: String, _ name: String, _ request: ModifySecondRankRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifySecondRankResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifySecondRank",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/second-ranks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(name),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifySecondRankResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySecondRank(_ appGroupIdentity: String, _ appId: String, _ name: String, _ request: ModifySecondRankRequest) async throws -> ModifySecondRankResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await modifySecondRankWithOptions(appGroupIdentity as! String, appId as! String, name as! String, request as! ModifySecondRankRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushInterventionDictionaryEntriesWithOptions(_ name: String, _ request: PushInterventionDictionaryEntriesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PushInterventionDictionaryEntriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": TeaUtils.Client.toArray(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushInterventionDictionaryEntries",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/intervention-dictionaries/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(name) + "/entries/actions/bulk",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushInterventionDictionaryEntriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushInterventionDictionaryEntries(_ name: String, _ request: PushInterventionDictionaryEntriesRequest) async throws -> PushInterventionDictionaryEntriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await pushInterventionDictionaryEntriesWithOptions(name as! String, request as! PushInterventionDictionaryEntriesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushUserAnalyzerEntriesWithOptions(_ name: String, _ request: PushUserAnalyzerEntriesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PushUserAnalyzerEntriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.entries)) {
            body["entries"] = request.entries ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushUserAnalyzerEntries",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/user-analyzers/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(name) + "/entries/actions/bulk",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushUserAnalyzerEntriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushUserAnalyzerEntries(_ name: String, _ request: PushUserAnalyzerEntriesRequest) async throws -> PushUserAnalyzerEntriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await pushUserAnalyzerEntriesWithOptions(name as! String, request as! PushUserAnalyzerEntriesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rankPreviewQueryWithOptions(_ appGroupIdentity: String, _ modelName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RankPreviewQueryResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RankPreviewQuery",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/algorithm/models/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(modelName) + "/actions/query-rank",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RankPreviewQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rankPreviewQuery(_ appGroupIdentity: String, _ modelName: String) async throws -> RankPreviewQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await rankPreviewQueryWithOptions(appGroupIdentity as! String, modelName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseSortScriptWithOptions(_ appGroupIdentity: String, _ scriptName: String, _ appVersionId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseSortScriptResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseSortScript",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appVersionId) + "/sort-scripts/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(scriptName) + "/actions/release",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseSortScriptResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseSortScript(_ appGroupIdentity: String, _ scriptName: String, _ appVersionId: String) async throws -> ReleaseSortScriptResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await releaseSortScriptWithOptions(appGroupIdentity as! String, scriptName as! String, appVersionId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeAppWithOptions(_ appGroupIdentity: String, _ appId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveAppResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveApp",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveAppResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeApp(_ appGroupIdentity: String, _ appId: String) async throws -> RemoveAppResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeAppWithOptions(appGroupIdentity as! String, appId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeAppGroupWithOptions(_ appGroupIdentity: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveAppGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveAppGroup",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveAppGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeAppGroup(_ appGroupIdentity: String) async throws -> RemoveAppGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeAppGroupWithOptions(appGroupIdentity as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeDataCollectionWithOptions(_ appGroupIdentity: String, _ dataCollectionIdentity: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveDataCollectionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveDataCollection",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/data-collections/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(dataCollectionIdentity),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveDataCollectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeDataCollection(_ appGroupIdentity: String, _ dataCollectionIdentity: String) async throws -> RemoveDataCollectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeDataCollectionWithOptions(appGroupIdentity as! String, dataCollectionIdentity as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeFirstRankWithOptions(_ appGroupIdentity: String, _ appId: String, _ name: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveFirstRankResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveFirstRank",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/first-ranks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(name),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveFirstRankResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeFirstRank(_ appGroupIdentity: String, _ appId: String, _ name: String) async throws -> RemoveFirstRankResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeFirstRankWithOptions(appGroupIdentity as! String, appId as! String, name as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeInterventionDictionaryWithOptions(_ name: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveInterventionDictionaryResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveInterventionDictionary",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/intervention-dictionaries/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(name),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveInterventionDictionaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeInterventionDictionary(_ name: String) async throws -> RemoveInterventionDictionaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeInterventionDictionaryWithOptions(name as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeQueryProcessorWithOptions(_ appGroupIdentity: String, _ appId: String, _ name: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveQueryProcessorResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveQueryProcessor",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/query-processors/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(name),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveQueryProcessorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeQueryProcessor(_ appGroupIdentity: String, _ appId: String, _ name: String) async throws -> RemoveQueryProcessorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeQueryProcessorWithOptions(appGroupIdentity as! String, appId as! String, name as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeScheduledTaskWithOptions(_ appGroupIdentity: String, _ taskId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveScheduledTaskResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveScheduledTask",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scheduled-tasks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(taskId),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveScheduledTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeScheduledTask(_ appGroupIdentity: String, _ taskId: String) async throws -> RemoveScheduledTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeScheduledTaskWithOptions(appGroupIdentity as! String, taskId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeSearchStrategyWithOptions(_ appGroupIdentity: String, _ appId: String, _ strategyName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveSearchStrategyResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveSearchStrategy",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/search-strategies/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(strategyName),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveSearchStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeSearchStrategy(_ appGroupIdentity: String, _ appId: String, _ strategyName: String) async throws -> RemoveSearchStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeSearchStrategyWithOptions(appGroupIdentity as! String, appId as! String, strategyName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeSecondRankWithOptions(_ appGroupIdentity: String, _ appId: String, _ name: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveSecondRankResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveSecondRank",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/second-ranks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(name),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveSecondRankResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeSecondRank(_ appGroupIdentity: String, _ appId: String, _ name: String) async throws -> RemoveSecondRankResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeSecondRankWithOptions(appGroupIdentity as! String, appId as! String, name as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeUserAnalyzerWithOptions(_ name: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveUserAnalyzerResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveUserAnalyzer",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/user-analyzers/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(name),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveUserAnalyzerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeUserAnalyzer(_ name: String) async throws -> RemoveUserAnalyzerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeUserAnalyzerWithOptions(name as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewAppGroupWithOptions(_ appGroupIdentity: String, _ request: RenewAppGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewAppGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["clientToken"] = request.clientToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenewAppGroup",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/actions/renew",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenewAppGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewAppGroup(_ appGroupIdentity: String, _ request: RenewAppGroupRequest) async throws -> RenewAppGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await renewAppGroupWithOptions(appGroupIdentity as! String, request as! RenewAppGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func replaceAppGroupCommodityCodeWithOptions(_ appGroupIdentity: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ReplaceAppGroupCommodityCodeResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReplaceAppGroupCommodityCode",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/actions/to-instance-typed",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReplaceAppGroupCommodityCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func replaceAppGroupCommodityCode(_ appGroupIdentity: String) async throws -> ReplaceAppGroupCommodityCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await replaceAppGroupCommodityCodeWithOptions(appGroupIdentity as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSortScriptFileWithOptions(_ appGroupIdentity: String, _ scriptName: String, _ appVersionId: String, _ fileName: String, _ request: SaveSortScriptFileRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveSortScriptFileResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["version"] = request.version!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveSortScriptFile",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appVersionId) + "/sort-scripts/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(scriptName) + "/files/src/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(fileName),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveSortScriptFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveSortScriptFile(_ appGroupIdentity: String, _ scriptName: String, _ appVersionId: String, _ fileName: String, _ request: SaveSortScriptFileRequest) async throws -> SaveSortScriptFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await saveSortScriptFileWithOptions(appGroupIdentity as! String, scriptName as! String, appVersionId as! String, fileName as! String, request as! SaveSortScriptFileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startSlowQueryAnalyzerWithOptions(_ appGroupIdentity: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartSlowQueryAnalyzerResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartSlowQueryAnalyzer",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/optimizers/slow-query/actions/run",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartSlowQueryAnalyzerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startSlowQueryAnalyzer(_ appGroupIdentity: String) async throws -> StartSlowQueryAnalyzerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startSlowQueryAnalyzerWithOptions(appGroupIdentity as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesWithOptions(_ request: TagResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["resourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["resourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagResources",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/resource-tags",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResources(_ request: TagResourcesRequest) async throws -> TagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await tagResourcesWithOptions(request as! TagResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindESUserAnalyzerWithOptions(_ appGroupIdentity: String, _ esInstanceId: String, _ request: UnbindESUserAnalyzerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindESUserAnalyzerResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": request.body!
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindESUserAnalyzer",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/es/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(esInstanceId) + "/actions/unbind-analyzer",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindESUserAnalyzerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindESUserAnalyzer(_ appGroupIdentity: String, _ esInstanceId: String, _ request: UnbindESUserAnalyzerRequest) async throws -> UnbindESUserAnalyzerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await unbindESUserAnalyzerWithOptions(appGroupIdentity as! String, esInstanceId as! String, request as! UnbindESUserAnalyzerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindEsInstanceWithOptions(_ appGroupIdentity: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindEsInstanceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindEsInstance",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/actions/unbind-es-instance",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindEsInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindEsInstance(_ appGroupIdentity: String) async throws -> UnbindEsInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await unbindEsInstanceWithOptions(appGroupIdentity as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResourcesWithOptions(_ tmpReq: UntagResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UntagResourcesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UntagResourcesShrinkRequest = UntagResourcesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.resourceId)) {
            request.resourceIdShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resourceId, "resourceId", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tagKey)) {
            request.tagKeyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tagKey, "tagKey", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.all)) {
            query["all"] = request.all!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceIdShrink)) {
            query["resourceId"] = request.resourceIdShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["resourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKeyShrink)) {
            query["tagKey"] = request.tagKeyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UntagResources",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/resource-tags",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UntagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResources(_ request: UntagResourcesRequest) async throws -> UntagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await untagResourcesWithOptions(request as! UntagResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateABTestExperimentWithOptions(_ appGroupIdentity: String, _ sceneId: String, _ groupId: String, _ experimentId: String, _ request: UpdateABTestExperimentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateABTestExperimentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateABTestExperiment",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scenes/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(sceneId) + "/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId) + "/experiments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(experimentId),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateABTestExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateABTestExperiment(_ appGroupIdentity: String, _ sceneId: String, _ groupId: String, _ experimentId: String, _ request: UpdateABTestExperimentRequest) async throws -> UpdateABTestExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateABTestExperimentWithOptions(appGroupIdentity as! String, sceneId as! String, groupId as! String, experimentId as! String, request as! UpdateABTestExperimentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateABTestFixedFlowDividersWithOptions(_ appGroupIdentity: String, _ sceneId: String, _ groupId: String, _ experimentId: String, _ request: UpdateABTestFixedFlowDividersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateABTestFixedFlowDividersResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": request.body ?? []
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateABTestFixedFlowDividers",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scenes/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(sceneId) + "/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId) + "/experiments/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(experimentId) + "/fixed-flow-dividers",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateABTestFixedFlowDividersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateABTestFixedFlowDividers(_ appGroupIdentity: String, _ sceneId: String, _ groupId: String, _ experimentId: String, _ request: UpdateABTestFixedFlowDividersRequest) async throws -> UpdateABTestFixedFlowDividersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateABTestFixedFlowDividersWithOptions(appGroupIdentity as! String, sceneId as! String, groupId as! String, experimentId as! String, request as! UpdateABTestFixedFlowDividersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateABTestGroupWithOptions(_ appGroupIdentity: String, _ sceneId: String, _ groupId: String, _ request: UpdateABTestGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateABTestGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateABTestGroup",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scenes/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(sceneId) + "/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(groupId),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateABTestGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateABTestGroup(_ appGroupIdentity: String, _ sceneId: String, _ groupId: String, _ request: UpdateABTestGroupRequest) async throws -> UpdateABTestGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateABTestGroupWithOptions(appGroupIdentity as! String, sceneId as! String, groupId as! String, request as! UpdateABTestGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateABTestSceneWithOptions(_ appGroupIdentity: String, _ sceneId: String, _ request: UpdateABTestSceneRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateABTestSceneResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateABTestScene",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/scenes/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(sceneId),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateABTestSceneResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateABTestScene(_ appGroupIdentity: String, _ sceneId: String, _ request: UpdateABTestSceneRequest) async throws -> UpdateABTestSceneResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateABTestSceneWithOptions(appGroupIdentity as! String, sceneId as! String, request as! UpdateABTestSceneRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFetchFieldsWithOptions(_ appGroupIdentity: String, _ appId: String, _ request: UpdateFetchFieldsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFetchFieldsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body ?? []
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFetchFields",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/fetch-fields",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFetchFieldsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFetchFields(_ appGroupIdentity: String, _ appId: String, _ request: UpdateFetchFieldsRequest) async throws -> UpdateFetchFieldsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateFetchFieldsWithOptions(appGroupIdentity as! String, appId as! String, request as! UpdateFetchFieldsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFunctionDefaultInstanceWithOptions(_ appGroupIdentity: String, _ functionName: String, _ request: UpdateFunctionDefaultInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFunctionDefaultInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["instanceName"] = request.instanceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFunctionDefaultInstance",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/default-instance",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFunctionDefaultInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFunctionDefaultInstance(_ appGroupIdentity: String, _ functionName: String, _ request: UpdateFunctionDefaultInstanceRequest) async throws -> UpdateFunctionDefaultInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateFunctionDefaultInstanceWithOptions(appGroupIdentity as! String, functionName as! String, request as! UpdateFunctionDefaultInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFunctionInstanceWithOptions(_ appGroupIdentity: String, _ functionName: String, _ instanceName: String, _ request: UpdateFunctionInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFunctionInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createParameters)) {
            body["createParameters"] = request.createParameters ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.cron)) {
            body["cron"] = request.cron ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usageParameters)) {
            body["usageParameters"] = request.usageParameters ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFunctionInstance",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceName),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFunctionInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFunctionInstance(_ appGroupIdentity: String, _ functionName: String, _ instanceName: String, _ request: UpdateFunctionInstanceRequest) async throws -> UpdateFunctionInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateFunctionInstanceWithOptions(appGroupIdentity as! String, functionName as! String, instanceName as! String, request as! UpdateFunctionInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFunctionResourceWithOptions(_ appGroupIdentity: String, _ functionName: String, _ resourceName: String, _ request: UpdateFunctionResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFunctionResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.data)) {
            body["Data"] = request.data!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFunctionResource",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/functions/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName) + "/resources/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(resourceName),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFunctionResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFunctionResource(_ appGroupIdentity: String, _ functionName: String, _ resourceName: String, _ request: UpdateFunctionResourceRequest) async throws -> UpdateFunctionResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateFunctionResourceWithOptions(appGroupIdentity as! String, functionName as! String, resourceName as! String, request as! UpdateFunctionResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSearchStrategyWithOptions(_ appGroupIdentity: String, _ appId: String, _ strategyName: String, _ request: UpdateSearchStrategyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSearchStrategyResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSearchStrategy",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/search-strategies/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(strategyName),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSearchStrategyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSearchStrategy(_ appGroupIdentity: String, _ appId: String, _ strategyName: String, _ request: UpdateSearchStrategyRequest) async throws -> UpdateSearchStrategyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateSearchStrategyWithOptions(appGroupIdentity as! String, appId as! String, strategyName as! String, request as! UpdateSearchStrategyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSortScriptWithOptions(_ appGroupIdentity: String, _ appVersionId: String, _ scriptName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSortScriptResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSortScript",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appVersionId) + "/sort-scripts/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(scriptName),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSortScriptResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSortScript(_ appGroupIdentity: String, _ appVersionId: String, _ scriptName: String) async throws -> UpdateSortScriptResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateSortScriptWithOptions(appGroupIdentity as! String, appVersionId as! String, scriptName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSummariesWithOptions(_ appGroupIdentity: String, _ appId: String, _ request: UpdateSummariesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSummariesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dryRun)) {
            query["dryRun"] = request.dryRun!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": TeaUtils.Client.toArray(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSummaries",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/app-groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appGroupIdentity) + "/apps/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(appId) + "/summaries",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSummariesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSummaries(_ appGroupIdentity: String, _ appId: String, _ request: UpdateSummariesRequest) async throws -> UpdateSummariesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateSummariesWithOptions(appGroupIdentity as! String, appId as! String, request as! UpdateSummariesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateDataSourcesWithOptions(_ request: ValidateDataSourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ValidateDataSourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ValidateDataSources",
            "version": "2017-12-25",
            "protocol": "HTTPS",
            "pathname": "/v4/openapi/assist/data-sources/validations",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ValidateDataSourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateDataSources(_ request: ValidateDataSourcesRequest) async throws -> ValidateDataSourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await validateDataSourcesWithOptions(request as! ValidateDataSourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
