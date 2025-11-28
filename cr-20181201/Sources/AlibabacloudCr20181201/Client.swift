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
        self._endpoint = try getEndpoint("cr", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func cancelArtifactBuildTaskWithOptions(_ request: CancelArtifactBuildTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelArtifactBuildTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.buildTaskId)) {
            query["BuildTaskId"] = request.buildTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelArtifactBuildTask",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelArtifactBuildTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelArtifactBuildTask(_ request: CancelArtifactBuildTaskRequest) async throws -> CancelArtifactBuildTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelArtifactBuildTaskWithOptions(request as! CancelArtifactBuildTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelRepoBuildRecordWithOptions(_ request: CancelRepoBuildRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelRepoBuildRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.buildRecordId)) {
            query["BuildRecordId"] = request.buildRecordId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelRepoBuildRecord",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelRepoBuildRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelRepoBuildRecord(_ request: CancelRepoBuildRecordRequest) async throws -> CancelRepoBuildRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelRepoBuildRecordWithOptions(request as! CancelRepoBuildRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelRepoSyncTaskWithOptions(_ request: CancelRepoSyncTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelRepoSyncTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syncTaskId)) {
            query["SyncTaskId"] = request.syncTaskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelRepoSyncTask",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelRepoSyncTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelRepoSyncTask(_ request: CancelRepoSyncTaskRequest) async throws -> CancelRepoSyncTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelRepoSyncTaskWithOptions(request as! CancelRepoSyncTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeResourceGroupWithOptions(_ request: ChangeResourceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceRegionId)) {
            query["ResourceRegionId"] = request.resourceRegionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeResourceGroup",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeResourceGroup(_ request: ChangeResourceGroupRequest) async throws -> ChangeResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeResourceGroupWithOptions(request as! ChangeResourceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createArtifactBuildRuleWithOptions(_ tmpReq: CreateArtifactBuildRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateArtifactBuildRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateArtifactBuildRuleShrinkRequest = CreateArtifactBuildRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.parameters)) {
            request.parametersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.parameters, "Parameters", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.artifactType)) {
            query["ArtifactType"] = request.artifactType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parametersShrink)) {
            query["Parameters"] = request.parametersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scopeId)) {
            query["ScopeId"] = request.scopeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scopeType)) {
            query["ScopeType"] = request.scopeType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateArtifactBuildRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateArtifactBuildRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createArtifactBuildRule(_ request: CreateArtifactBuildRuleRequest) async throws -> CreateArtifactBuildRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createArtifactBuildRuleWithOptions(request as! CreateArtifactBuildRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createArtifactLifecycleRuleWithOptions(_ request: CreateArtifactLifecycleRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateArtifactLifecycleRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.auto)) {
            query["Auto"] = request.auto!;
        }
        if (!TeaUtils.Client.isUnset(request.enableDeleteTag)) {
            query["EnableDeleteTag"] = request.enableDeleteTag!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["NamespaceName"] = request.namespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.retentionTagCount)) {
            query["RetentionTagCount"] = request.retentionTagCount!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduleTime)) {
            query["ScheduleTime"] = request.scheduleTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            query["Scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagRegexp)) {
            query["TagRegexp"] = request.tagRegexp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateArtifactLifecycleRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateArtifactLifecycleRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createArtifactLifecycleRule(_ request: CreateArtifactLifecycleRuleRequest) async throws -> CreateArtifactLifecycleRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createArtifactLifecycleRuleWithOptions(request as! CreateArtifactLifecycleRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createArtifactSubscriptionRuleWithOptions(_ request: CreateArtifactSubscriptionRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateArtifactSubscriptionRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accelerate)) {
            query["Accelerate"] = request.accelerate!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["NamespaceName"] = request.namespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.override_)) {
            query["Override"] = request.override_!;
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            query["Platform"] = request.platform ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceNamespaceName)) {
            query["SourceNamespaceName"] = request.sourceNamespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceProvider)) {
            query["SourceProvider"] = request.sourceProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceRepoName)) {
            query["SourceRepoName"] = request.sourceRepoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagCount)) {
            query["TagCount"] = request.tagCount!;
        }
        if (!TeaUtils.Client.isUnset(request.tagRegexp)) {
            query["TagRegexp"] = request.tagRegexp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateArtifactSubscriptionRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateArtifactSubscriptionRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createArtifactSubscriptionRule(_ request: CreateArtifactSubscriptionRuleRequest) async throws -> CreateArtifactSubscriptionRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createArtifactSubscriptionRuleWithOptions(request as! CreateArtifactSubscriptionRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createArtifactSubscriptionTaskWithOptions(_ request: CreateArtifactSubscriptionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateArtifactSubscriptionTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateArtifactSubscriptionTask",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateArtifactSubscriptionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createArtifactSubscriptionTask(_ request: CreateArtifactSubscriptionTaskRequest) async throws -> CreateArtifactSubscriptionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createArtifactSubscriptionTaskWithOptions(request as! CreateArtifactSubscriptionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBuildRecordByRecordWithOptions(_ request: CreateBuildRecordByRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBuildRecordByRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.buildRecordId)) {
            query["BuildRecordId"] = request.buildRecordId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBuildRecordByRecord",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateBuildRecordByRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBuildRecordByRecord(_ request: CreateBuildRecordByRecordRequest) async throws -> CreateBuildRecordByRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createBuildRecordByRecordWithOptions(request as! CreateBuildRecordByRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBuildRecordByRuleWithOptions(_ request: CreateBuildRecordByRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBuildRecordByRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.buildRuleId)) {
            query["BuildRuleId"] = request.buildRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBuildRecordByRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateBuildRecordByRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBuildRecordByRule(_ request: CreateBuildRecordByRuleRequest) async throws -> CreateBuildRecordByRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createBuildRecordByRuleWithOptions(request as! CreateBuildRecordByRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createChainWithOptions(_ request: CreateChainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateChainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chainConfig)) {
            query["ChainConfig"] = request.chainConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoNamespaceName)) {
            query["RepoNamespaceName"] = request.repoNamespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scopeExclude)) {
            query["ScopeExclude"] = request.scopeExclude ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateChain",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateChainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createChain(_ request: CreateChainRequest) async throws -> CreateChainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createChainWithOptions(request as! CreateChainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createChartNamespaceWithOptions(_ request: CreateChartNamespaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateChartNamespaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoCreateRepo)) {
            query["AutoCreateRepo"] = request.autoCreateRepo!;
        }
        if (!TeaUtils.Client.isUnset(request.defaultRepoType)) {
            query["DefaultRepoType"] = request.defaultRepoType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["NamespaceName"] = request.namespaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateChartNamespace",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateChartNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createChartNamespace(_ request: CreateChartNamespaceRequest) async throws -> CreateChartNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createChartNamespaceWithOptions(request as! CreateChartNamespaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createChartRepositoryWithOptions(_ request: CreateChartRepositoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateChartRepositoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoNamespaceName)) {
            query["RepoNamespaceName"] = request.repoNamespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoType)) {
            query["RepoType"] = request.repoType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.summary)) {
            query["Summary"] = request.summary ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateChartRepository",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateChartRepositoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createChartRepository(_ request: CreateChartRepositoryRequest) async throws -> CreateChartRepositoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createChartRepositoryWithOptions(request as! CreateChartRepositoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceEndpointAclPolicyWithOptions(_ request: CreateInstanceEndpointAclPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateInstanceEndpointAclPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endpointType)) {
            query["EndpointType"] = request.endpointType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.entry)) {
            query["Entry"] = request.entry ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleName)) {
            query["ModuleName"] = request.moduleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateInstanceEndpointAclPolicy",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateInstanceEndpointAclPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceEndpointAclPolicy(_ request: CreateInstanceEndpointAclPolicyRequest) async throws -> CreateInstanceEndpointAclPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createInstanceEndpointAclPolicyWithOptions(request as! CreateInstanceEndpointAclPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceVpcEndpointLinkedVpcWithOptions(_ request: CreateInstanceVpcEndpointLinkedVpcRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateInstanceVpcEndpointLinkedVpcResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enableCreateDNSRecordInPvzt)) {
            query["EnableCreateDNSRecordInPvzt"] = request.enableCreateDNSRecordInPvzt!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleName)) {
            query["ModuleName"] = request.moduleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vswitchId)) {
            query["VswitchId"] = request.vswitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateInstanceVpcEndpointLinkedVpc",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateInstanceVpcEndpointLinkedVpcResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceVpcEndpointLinkedVpc(_ request: CreateInstanceVpcEndpointLinkedVpcRequest) async throws -> CreateInstanceVpcEndpointLinkedVpcResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createInstanceVpcEndpointLinkedVpcWithOptions(request as! CreateInstanceVpcEndpointLinkedVpcRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNamespaceWithOptions(_ tmpReq: CreateNamespaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateNamespaceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateNamespaceShrinkRequest = CreateNamespaceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.defaultRepoConfiguration)) {
            request.defaultRepoConfigurationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.defaultRepoConfiguration, "DefaultRepoConfiguration", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoCreateRepo)) {
            query["AutoCreateRepo"] = request.autoCreateRepo!;
        }
        if (!TeaUtils.Client.isUnset(request.defaultRepoConfigurationShrink)) {
            query["DefaultRepoConfiguration"] = request.defaultRepoConfigurationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultRepoType)) {
            query["DefaultRepoType"] = request.defaultRepoType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["NamespaceName"] = request.namespaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateNamespace",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNamespace(_ request: CreateNamespaceRequest) async throws -> CreateNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createNamespaceWithOptions(request as! CreateNamespaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepoBuildRuleWithOptions(_ request: CreateRepoBuildRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRepoBuildRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.buildArgs)) {
            query["BuildArgs"] = request.buildArgs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.dockerfileLocation)) {
            query["DockerfileLocation"] = request.dockerfileLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dockerfileName)) {
            query["DockerfileName"] = request.dockerfileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageTag)) {
            query["ImageTag"] = request.imageTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platforms)) {
            query["Platforms"] = request.platforms ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.pushName)) {
            query["PushName"] = request.pushName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pushType)) {
            query["PushType"] = request.pushType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRepoBuildRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRepoBuildRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepoBuildRule(_ request: CreateRepoBuildRuleRequest) async throws -> CreateRepoBuildRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRepoBuildRuleWithOptions(request as! CreateRepoBuildRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepoSourceCodeRepoWithOptions(_ request: CreateRepoSourceCodeRepoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRepoSourceCodeRepoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoBuild)) {
            query["AutoBuild"] = request.autoBuild!;
        }
        if (!TeaUtils.Client.isUnset(request.codeRepoName)) {
            query["CodeRepoName"] = request.codeRepoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeRepoNamespaceName)) {
            query["CodeRepoNamespaceName"] = request.codeRepoNamespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeRepoType)) {
            query["CodeRepoType"] = request.codeRepoType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disableCacheBuild)) {
            query["DisableCacheBuild"] = request.disableCacheBuild!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.overseaBuild)) {
            query["OverseaBuild"] = request.overseaBuild!;
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRepoSourceCodeRepo",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRepoSourceCodeRepoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepoSourceCodeRepo(_ request: CreateRepoSourceCodeRepoRequest) async throws -> CreateRepoSourceCodeRepoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRepoSourceCodeRepoWithOptions(request as! CreateRepoSourceCodeRepoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepoSyncRuleWithOptions(_ request: CreateRepoSyncRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRepoSyncRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["NamespaceName"] = request.namespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoNameFilter)) {
            query["RepoNameFilter"] = request.repoNameFilter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syncRuleName)) {
            query["SyncRuleName"] = request.syncRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syncScope)) {
            query["SyncScope"] = request.syncScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syncTrigger)) {
            query["SyncTrigger"] = request.syncTrigger ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagFilter)) {
            query["TagFilter"] = request.tagFilter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetInstanceId)) {
            query["TargetInstanceId"] = request.targetInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetNamespaceName)) {
            query["TargetNamespaceName"] = request.targetNamespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetRegionId)) {
            query["TargetRegionId"] = request.targetRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetRepoName)) {
            query["TargetRepoName"] = request.targetRepoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetUserId)) {
            query["TargetUserId"] = request.targetUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRepoSyncRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRepoSyncRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepoSyncRule(_ request: CreateRepoSyncRuleRequest) async throws -> CreateRepoSyncRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRepoSyncRuleWithOptions(request as! CreateRepoSyncRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepoSyncTaskWithOptions(_ request: CreateRepoSyncTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRepoSyncTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.override_)) {
            query["Override"] = request.override_!;
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetInstanceId)) {
            query["TargetInstanceId"] = request.targetInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetNamespace)) {
            query["TargetNamespace"] = request.targetNamespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetRegionId)) {
            query["TargetRegionId"] = request.targetRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetRepoName)) {
            query["TargetRepoName"] = request.targetRepoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetTag)) {
            query["TargetTag"] = request.targetTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetUserId)) {
            query["TargetUserId"] = request.targetUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRepoSyncTask",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRepoSyncTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepoSyncTask(_ request: CreateRepoSyncTaskRequest) async throws -> CreateRepoSyncTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRepoSyncTaskWithOptions(request as! CreateRepoSyncTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepoSyncTaskByRuleWithOptions(_ request: CreateRepoSyncTaskByRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRepoSyncTaskByRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syncRuleId)) {
            query["SyncRuleId"] = request.syncRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRepoSyncTaskByRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRepoSyncTaskByRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepoSyncTaskByRule(_ request: CreateRepoSyncTaskByRuleRequest) async throws -> CreateRepoSyncTaskByRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRepoSyncTaskByRuleWithOptions(request as! CreateRepoSyncTaskByRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepoTagWithOptions(_ request: CreateRepoTagRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRepoTagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fromTag)) {
            query["FromTag"] = request.fromTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["NamespaceName"] = request.namespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toTag)) {
            query["ToTag"] = request.toTag ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRepoTag",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRepoTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepoTag(_ request: CreateRepoTagRequest) async throws -> CreateRepoTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRepoTagWithOptions(request as! CreateRepoTagRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepoTagScanTaskWithOptions(_ request: CreateRepoTagScanTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRepoTagScanTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.digest)) {
            query["Digest"] = request.digest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scanService)) {
            query["ScanService"] = request.scanService ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scanType)) {
            query["ScanType"] = request.scanType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRepoTagScanTask",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRepoTagScanTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepoTagScanTask(_ request: CreateRepoTagScanTaskRequest) async throws -> CreateRepoTagScanTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRepoTagScanTaskWithOptions(request as! CreateRepoTagScanTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepoTriggerWithOptions(_ request: CreateRepoTriggerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRepoTriggerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerName)) {
            query["TriggerName"] = request.triggerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerTag)) {
            query["TriggerTag"] = request.triggerTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerType)) {
            query["TriggerType"] = request.triggerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerUrl)) {
            query["TriggerUrl"] = request.triggerUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRepoTrigger",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRepoTriggerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepoTrigger(_ request: CreateRepoTriggerRequest) async throws -> CreateRepoTriggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRepoTriggerWithOptions(request as! CreateRepoTriggerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepositoryWithOptions(_ request: CreateRepositoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRepositoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.detail)) {
            query["Detail"] = request.detail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoNamespaceName)) {
            query["RepoNamespaceName"] = request.repoNamespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoType)) {
            query["RepoType"] = request.repoType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.summary)) {
            query["Summary"] = request.summary ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagImmutability)) {
            query["TagImmutability"] = request.tagImmutability!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRepository",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRepositoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRepository(_ request: CreateRepositoryRequest) async throws -> CreateRepositoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRepositoryWithOptions(request as! CreateRepositoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScanRuleWithOptions(_ tmpReq: CreateScanRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateScanRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateScanRuleShrinkRequest = CreateScanRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.namespaces)) {
            request.namespacesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.namespaces, "Namespaces", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.repoNames)) {
            request.repoNamesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.repoNames, "RepoNames", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespacesShrink)) {
            query["Namespaces"] = request.namespacesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoNamesShrink)) {
            query["RepoNames"] = request.repoNamesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoTagFilterPattern)) {
            query["RepoTagFilterPattern"] = request.repoTagFilterPattern ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            query["RuleName"] = request.ruleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scanScope)) {
            query["ScanScope"] = request.scanScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scanType)) {
            query["ScanType"] = request.scanType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerType)) {
            query["TriggerType"] = request.triggerType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateScanRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateScanRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScanRule(_ request: CreateScanRuleRequest) async throws -> CreateScanRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createScanRuleWithOptions(request as! CreateScanRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStorageDomainRoutingRuleWithOptions(_ tmpReq: CreateStorageDomainRoutingRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateStorageDomainRoutingRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateStorageDomainRoutingRuleShrinkRequest = CreateStorageDomainRoutingRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.routes)) {
            request.routesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.routes, "Routes", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routesShrink)) {
            query["Routes"] = request.routesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateStorageDomainRoutingRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateStorageDomainRoutingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStorageDomainRoutingRule(_ request: CreateStorageDomainRoutingRuleRequest) async throws -> CreateStorageDomainRoutingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createStorageDomainRoutingRuleWithOptions(request as! CreateStorageDomainRoutingRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteArtifactLifecycleRuleWithOptions(_ request: DeleteArtifactLifecycleRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteArtifactLifecycleRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteArtifactLifecycleRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteArtifactLifecycleRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteArtifactLifecycleRule(_ request: DeleteArtifactLifecycleRuleRequest) async throws -> DeleteArtifactLifecycleRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteArtifactLifecycleRuleWithOptions(request as! DeleteArtifactLifecycleRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteArtifactSubscriptionRuleWithOptions(_ request: DeleteArtifactSubscriptionRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteArtifactSubscriptionRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteArtifactSubscriptionRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteArtifactSubscriptionRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteArtifactSubscriptionRule(_ request: DeleteArtifactSubscriptionRuleRequest) async throws -> DeleteArtifactSubscriptionRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteArtifactSubscriptionRuleWithOptions(request as! DeleteArtifactSubscriptionRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteChainWithOptions(_ request: DeleteChainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteChainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chainId)) {
            query["ChainId"] = request.chainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteChain",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteChainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteChain(_ request: DeleteChainRequest) async throws -> DeleteChainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteChainWithOptions(request as! DeleteChainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteChartNamespaceWithOptions(_ request: DeleteChartNamespaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteChartNamespaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["NamespaceName"] = request.namespaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteChartNamespace",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteChartNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteChartNamespace(_ request: DeleteChartNamespaceRequest) async throws -> DeleteChartNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteChartNamespaceWithOptions(request as! DeleteChartNamespaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteChartReleaseWithOptions(_ request: DeleteChartReleaseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteChartReleaseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chart)) {
            query["Chart"] = request.chart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.release)) {
            query["Release"] = request.release ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoNamespaceName)) {
            query["RepoNamespaceName"] = request.repoNamespaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteChartRelease",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteChartReleaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteChartRelease(_ request: DeleteChartReleaseRequest) async throws -> DeleteChartReleaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteChartReleaseWithOptions(request as! DeleteChartReleaseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteChartRepositoryWithOptions(_ request: DeleteChartRepositoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteChartRepositoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoNamespaceName)) {
            query["RepoNamespaceName"] = request.repoNamespaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteChartRepository",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteChartRepositoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteChartRepository(_ request: DeleteChartRepositoryRequest) async throws -> DeleteChartRepositoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteChartRepositoryWithOptions(request as! DeleteChartRepositoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEventCenterRuleWithOptions(_ request: DeleteEventCenterRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEventCenterRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEventCenterRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEventCenterRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEventCenterRule(_ request: DeleteEventCenterRuleRequest) async throws -> DeleteEventCenterRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEventCenterRuleWithOptions(request as! DeleteEventCenterRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstanceEndpointAclPolicyWithOptions(_ request: DeleteInstanceEndpointAclPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteInstanceEndpointAclPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endpointType)) {
            query["EndpointType"] = request.endpointType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.entry)) {
            query["Entry"] = request.entry ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleName)) {
            query["ModuleName"] = request.moduleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteInstanceEndpointAclPolicy",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteInstanceEndpointAclPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstanceEndpointAclPolicy(_ request: DeleteInstanceEndpointAclPolicyRequest) async throws -> DeleteInstanceEndpointAclPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteInstanceEndpointAclPolicyWithOptions(request as! DeleteInstanceEndpointAclPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstanceVpcEndpointLinkedVpcWithOptions(_ request: DeleteInstanceVpcEndpointLinkedVpcRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteInstanceVpcEndpointLinkedVpcResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleName)) {
            query["ModuleName"] = request.moduleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vswitchId)) {
            query["VswitchId"] = request.vswitchId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteInstanceVpcEndpointLinkedVpc",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteInstanceVpcEndpointLinkedVpcResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstanceVpcEndpointLinkedVpc(_ request: DeleteInstanceVpcEndpointLinkedVpcRequest) async throws -> DeleteInstanceVpcEndpointLinkedVpcResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteInstanceVpcEndpointLinkedVpcWithOptions(request as! DeleteInstanceVpcEndpointLinkedVpcRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNamespaceWithOptions(_ request: DeleteNamespaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteNamespaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["NamespaceName"] = request.namespaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteNamespace",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNamespace(_ request: DeleteNamespaceRequest) async throws -> DeleteNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteNamespaceWithOptions(request as! DeleteNamespaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepoBuildRuleWithOptions(_ request: DeleteRepoBuildRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRepoBuildRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.buildRuleId)) {
            query["BuildRuleId"] = request.buildRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRepoBuildRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRepoBuildRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepoBuildRule(_ request: DeleteRepoBuildRuleRequest) async throws -> DeleteRepoBuildRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteRepoBuildRuleWithOptions(request as! DeleteRepoBuildRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepoSyncRuleWithOptions(_ request: DeleteRepoSyncRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRepoSyncRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syncRuleId)) {
            query["SyncRuleId"] = request.syncRuleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRepoSyncRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRepoSyncRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepoSyncRule(_ request: DeleteRepoSyncRuleRequest) async throws -> DeleteRepoSyncRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteRepoSyncRuleWithOptions(request as! DeleteRepoSyncRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepoTagWithOptions(_ request: DeleteRepoTagRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRepoTagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRepoTag",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRepoTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepoTag(_ request: DeleteRepoTagRequest) async throws -> DeleteRepoTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteRepoTagWithOptions(request as! DeleteRepoTagRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepoTriggerWithOptions(_ request: DeleteRepoTriggerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRepoTriggerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerId)) {
            query["TriggerId"] = request.triggerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRepoTrigger",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRepoTriggerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepoTrigger(_ request: DeleteRepoTriggerRequest) async throws -> DeleteRepoTriggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteRepoTriggerWithOptions(request as! DeleteRepoTriggerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepositoryWithOptions(_ request: DeleteRepositoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRepositoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoNamespaceName)) {
            query["RepoNamespaceName"] = request.repoNamespaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRepository",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRepositoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRepository(_ request: DeleteRepositoryRequest) async throws -> DeleteRepositoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteRepositoryWithOptions(request as! DeleteRepositoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteScanRuleWithOptions(_ request: DeleteScanRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteScanRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scanRuleId)) {
            query["ScanRuleId"] = request.scanRuleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteScanRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteScanRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteScanRule(_ request: DeleteScanRuleRequest) async throws -> DeleteScanRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteScanRuleWithOptions(request as! DeleteScanRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStorageDomainRoutingRuleWithOptions(_ request: DeleteStorageDomainRoutingRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteStorageDomainRoutingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteStorageDomainRoutingRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteStorageDomainRoutingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStorageDomainRoutingRule(_ request: DeleteStorageDomainRoutingRuleRequest) async throws -> DeleteStorageDomainRoutingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteStorageDomainRoutingRuleWithOptions(request as! DeleteStorageDomainRoutingRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getArtifactBuildRuleWithOptions(_ request: GetArtifactBuildRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetArtifactBuildRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetArtifactBuildRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetArtifactBuildRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getArtifactBuildRule(_ request: GetArtifactBuildRuleRequest) async throws -> GetArtifactBuildRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getArtifactBuildRuleWithOptions(request as! GetArtifactBuildRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getArtifactBuildTaskWithOptions(_ request: GetArtifactBuildTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetArtifactBuildTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetArtifactBuildTask",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetArtifactBuildTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getArtifactBuildTask(_ request: GetArtifactBuildTaskRequest) async throws -> GetArtifactBuildTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getArtifactBuildTaskWithOptions(request as! GetArtifactBuildTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getArtifactLifecycleRuleWithOptions(_ request: GetArtifactLifecycleRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetArtifactLifecycleRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetArtifactLifecycleRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetArtifactLifecycleRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getArtifactLifecycleRule(_ request: GetArtifactLifecycleRuleRequest) async throws -> GetArtifactLifecycleRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getArtifactLifecycleRuleWithOptions(request as! GetArtifactLifecycleRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getArtifactSubscriptionRuleWithOptions(_ request: GetArtifactSubscriptionRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetArtifactSubscriptionRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetArtifactSubscriptionRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetArtifactSubscriptionRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getArtifactSubscriptionRule(_ request: GetArtifactSubscriptionRuleRequest) async throws -> GetArtifactSubscriptionRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getArtifactSubscriptionRuleWithOptions(request as! GetArtifactSubscriptionRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getArtifactSubscriptionTaskWithOptions(_ request: GetArtifactSubscriptionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetArtifactSubscriptionTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetArtifactSubscriptionTask",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetArtifactSubscriptionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getArtifactSubscriptionTask(_ request: GetArtifactSubscriptionTaskRequest) async throws -> GetArtifactSubscriptionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getArtifactSubscriptionTaskWithOptions(request as! GetArtifactSubscriptionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getArtifactSubscriptionTaskResultWithOptions(_ request: GetArtifactSubscriptionTaskResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetArtifactSubscriptionTaskResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetArtifactSubscriptionTaskResult",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetArtifactSubscriptionTaskResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getArtifactSubscriptionTaskResult(_ request: GetArtifactSubscriptionTaskResultRequest) async throws -> GetArtifactSubscriptionTaskResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getArtifactSubscriptionTaskResultWithOptions(request as! GetArtifactSubscriptionTaskResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAuthorizationTokenWithOptions(_ request: GetAuthorizationTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAuthorizationTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAuthorizationToken",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAuthorizationTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAuthorizationToken(_ request: GetAuthorizationTokenRequest) async throws -> GetAuthorizationTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAuthorizationTokenWithOptions(request as! GetAuthorizationTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChainWithOptions(_ request: GetChainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetChainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chainId)) {
            query["ChainId"] = request.chainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetChain",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetChainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChain(_ request: GetChainRequest) async throws -> GetChainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getChainWithOptions(request as! GetChainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChartNamespaceWithOptions(_ request: GetChartNamespaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetChartNamespaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["NamespaceName"] = request.namespaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetChartNamespace",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetChartNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChartNamespace(_ request: GetChartNamespaceRequest) async throws -> GetChartNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getChartNamespaceWithOptions(request as! GetChartNamespaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChartRepositoryWithOptions(_ request: GetChartRepositoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetChartRepositoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoNamespaceName)) {
            query["RepoNamespaceName"] = request.repoNamespaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetChartRepository",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetChartRepositoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChartRepository(_ request: GetChartRepositoryRequest) async throws -> GetChartRepositoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getChartRepositoryWithOptions(request as! GetChartRepositoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceWithOptions(_ request: GetInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstance",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstance(_ request: GetInstanceRequest) async throws -> GetInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getInstanceWithOptions(request as! GetInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceCountWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceCountResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstanceCount",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceCountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceCount() async throws -> GetInstanceCountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getInstanceCountWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceEndpointWithOptions(_ request: GetInstanceEndpointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceEndpointResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endpointType)) {
            query["EndpointType"] = request.endpointType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleName)) {
            query["ModuleName"] = request.moduleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstanceEndpoint",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceEndpointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceEndpoint(_ request: GetInstanceEndpointRequest) async throws -> GetInstanceEndpointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getInstanceEndpointWithOptions(request as! GetInstanceEndpointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceUsageWithOptions(_ request: GetInstanceUsageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceUsageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstanceUsage",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceUsageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceUsage(_ request: GetInstanceUsageRequest) async throws -> GetInstanceUsageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getInstanceUsageWithOptions(request as! GetInstanceUsageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceVpcEndpointWithOptions(_ request: GetInstanceVpcEndpointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceVpcEndpointResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleName)) {
            query["ModuleName"] = request.moduleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstanceVpcEndpoint",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceVpcEndpointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceVpcEndpoint(_ request: GetInstanceVpcEndpointRequest) async throws -> GetInstanceVpcEndpointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getInstanceVpcEndpointWithOptions(request as! GetInstanceVpcEndpointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNamespaceWithOptions(_ request: GetNamespaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNamespaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceId)) {
            query["NamespaceId"] = request.namespaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["NamespaceName"] = request.namespaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNamespace",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNamespace(_ request: GetNamespaceRequest) async throws -> GetNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNamespaceWithOptions(request as! GetNamespaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoBuildRecordWithOptions(_ request: GetRepoBuildRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepoBuildRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.buildRecordId)) {
            query["BuildRecordId"] = request.buildRecordId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepoBuildRecord",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepoBuildRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoBuildRecord(_ request: GetRepoBuildRecordRequest) async throws -> GetRepoBuildRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRepoBuildRecordWithOptions(request as! GetRepoBuildRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoBuildRecordStatusWithOptions(_ request: GetRepoBuildRecordStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepoBuildRecordStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.buildRecordId)) {
            query["BuildRecordId"] = request.buildRecordId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepoBuildRecordStatus",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepoBuildRecordStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoBuildRecordStatus(_ request: GetRepoBuildRecordStatusRequest) async throws -> GetRepoBuildRecordStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRepoBuildRecordStatusWithOptions(request as! GetRepoBuildRecordStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoSourceCodeRepoWithOptions(_ request: GetRepoSourceCodeRepoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepoSourceCodeRepoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepoSourceCodeRepo",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepoSourceCodeRepoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoSourceCodeRepo(_ request: GetRepoSourceCodeRepoRequest) async throws -> GetRepoSourceCodeRepoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRepoSourceCodeRepoWithOptions(request as! GetRepoSourceCodeRepoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoSyncTaskWithOptions(_ request: GetRepoSyncTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepoSyncTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syncTaskId)) {
            query["SyncTaskId"] = request.syncTaskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepoSyncTask",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepoSyncTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoSyncTask(_ request: GetRepoSyncTaskRequest) async throws -> GetRepoSyncTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRepoSyncTaskWithOptions(request as! GetRepoSyncTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoTagWithOptions(_ request: GetRepoTagRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepoTagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepoTag",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepoTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoTag(_ request: GetRepoTagRequest) async throws -> GetRepoTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRepoTagWithOptions(request as! GetRepoTagRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoTagScanStatusWithOptions(_ request: GetRepoTagScanStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepoTagScanStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.digest)) {
            query["Digest"] = request.digest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scanTaskId)) {
            query["ScanTaskId"] = request.scanTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scanType)) {
            query["ScanType"] = request.scanType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepoTagScanStatus",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepoTagScanStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoTagScanStatus(_ request: GetRepoTagScanStatusRequest) async throws -> GetRepoTagScanStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRepoTagScanStatusWithOptions(request as! GetRepoTagScanStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoTagScanSummaryWithOptions(_ request: GetRepoTagScanSummaryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepoTagScanSummaryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.digest)) {
            query["Digest"] = request.digest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scanTaskId)) {
            query["ScanTaskId"] = request.scanTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepoTagScanSummary",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepoTagScanSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepoTagScanSummary(_ request: GetRepoTagScanSummaryRequest) async throws -> GetRepoTagScanSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRepoTagScanSummaryWithOptions(request as! GetRepoTagScanSummaryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepositoryWithOptions(_ request: GetRepositoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRepositoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoNamespaceName)) {
            query["RepoNamespaceName"] = request.repoNamespaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRepository",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRepositoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRepository(_ request: GetRepositoryRequest) async throws -> GetRepositoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRepositoryWithOptions(request as! GetRepositoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScanRuleWithOptions(_ request: GetScanRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetScanRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scanRuleId)) {
            query["ScanRuleId"] = request.scanRuleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetScanRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetScanRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getScanRule(_ request: GetScanRuleRequest) async throws -> GetScanRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getScanRuleWithOptions(request as! GetScanRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStorageDomainRoutingRuleWithOptions(_ request: GetStorageDomainRoutingRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStorageDomainRoutingRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStorageDomainRoutingRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStorageDomainRoutingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStorageDomainRoutingRule(_ request: GetStorageDomainRoutingRuleRequest) async throws -> GetStorageDomainRoutingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getStorageDomainRoutingRuleWithOptions(request as! GetStorageDomainRoutingRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listArtifactBuildTaskLogWithOptions(_ request: ListArtifactBuildTaskLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListArtifactBuildTaskLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListArtifactBuildTaskLog",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListArtifactBuildTaskLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listArtifactBuildTaskLog(_ request: ListArtifactBuildTaskLogRequest) async throws -> ListArtifactBuildTaskLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listArtifactBuildTaskLogWithOptions(request as! ListArtifactBuildTaskLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listArtifactLifecycleRuleWithOptions(_ request: ListArtifactLifecycleRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListArtifactLifecycleRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListArtifactLifecycleRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListArtifactLifecycleRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listArtifactLifecycleRule(_ request: ListArtifactLifecycleRuleRequest) async throws -> ListArtifactLifecycleRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listArtifactLifecycleRuleWithOptions(request as! ListArtifactLifecycleRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listArtifactSubscriptionRuleWithOptions(_ request: ListArtifactSubscriptionRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListArtifactSubscriptionRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListArtifactSubscriptionRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListArtifactSubscriptionRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listArtifactSubscriptionRule(_ request: ListArtifactSubscriptionRuleRequest) async throws -> ListArtifactSubscriptionRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listArtifactSubscriptionRuleWithOptions(request as! ListArtifactSubscriptionRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listArtifactSubscriptionTaskWithOptions(_ request: ListArtifactSubscriptionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListArtifactSubscriptionTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListArtifactSubscriptionTask",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListArtifactSubscriptionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listArtifactSubscriptionTask(_ request: ListArtifactSubscriptionTaskRequest) async throws -> ListArtifactSubscriptionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listArtifactSubscriptionTaskWithOptions(request as! ListArtifactSubscriptionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChainWithOptions(_ request: ListChainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListChainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoNamespaceName)) {
            query["RepoNamespaceName"] = request.repoNamespaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListChain",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListChainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChain(_ request: ListChainRequest) async throws -> ListChainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listChainWithOptions(request as! ListChainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChainInstanceWithOptions(_ request: ListChainInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListChainInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoNamespaceName)) {
            query["RepoNamespaceName"] = request.repoNamespaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListChainInstance",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListChainInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChainInstance(_ request: ListChainInstanceRequest) async throws -> ListChainInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listChainInstanceWithOptions(request as! ListChainInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChartNamespaceWithOptions(_ request: ListChartNamespaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListChartNamespaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["NamespaceName"] = request.namespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceStatus)) {
            query["NamespaceStatus"] = request.namespaceStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListChartNamespace",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListChartNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChartNamespace(_ request: ListChartNamespaceRequest) async throws -> ListChartNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listChartNamespaceWithOptions(request as! ListChartNamespaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChartReleaseWithOptions(_ request: ListChartReleaseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListChartReleaseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chart)) {
            query["Chart"] = request.chart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoNamespaceName)) {
            query["RepoNamespaceName"] = request.repoNamespaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListChartRelease",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListChartReleaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChartRelease(_ request: ListChartReleaseRequest) async throws -> ListChartReleaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listChartReleaseWithOptions(request as! ListChartReleaseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChartRepositoryWithOptions(_ request: ListChartRepositoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListChartRepositoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoNamespaceName)) {
            query["RepoNamespaceName"] = request.repoNamespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoStatus)) {
            query["RepoStatus"] = request.repoStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListChartRepository",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListChartRepositoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChartRepository(_ request: ListChartRepositoryRequest) async throws -> ListChartRepositoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listChartRepositoryWithOptions(request as! ListChartRepositoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventCenterRecordWithOptions(_ request: ListEventCenterRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEventCenterRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEventCenterRecord",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEventCenterRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventCenterRecord(_ request: ListEventCenterRecordRequest) async throws -> ListEventCenterRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listEventCenterRecordWithOptions(request as! ListEventCenterRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventCenterRuleNameWithOptions(_ request: ListEventCenterRuleNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEventCenterRuleNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEventCenterRuleName",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEventCenterRuleNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEventCenterRuleName(_ request: ListEventCenterRuleNameRequest) async throws -> ListEventCenterRuleNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listEventCenterRuleNameWithOptions(request as! ListEventCenterRuleNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceWithOptions(_ request: ListInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceStatus)) {
            query["InstanceStatus"] = request.instanceStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstance",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstance(_ request: ListInstanceRequest) async throws -> ListInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listInstanceWithOptions(request as! ListInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceEndpointWithOptions(_ request: ListInstanceEndpointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstanceEndpointResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleName)) {
            query["ModuleName"] = request.moduleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.summary)) {
            query["Summary"] = request.summary!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstanceEndpoint",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstanceEndpointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceEndpoint(_ request: ListInstanceEndpointRequest) async throws -> ListInstanceEndpointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listInstanceEndpointWithOptions(request as! ListInstanceEndpointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceRegionWithOptions(_ request: ListInstanceRegionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstanceRegionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstanceRegion",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstanceRegionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceRegion(_ request: ListInstanceRegionRequest) async throws -> ListInstanceRegionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listInstanceRegionWithOptions(request as! ListInstanceRegionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNamespaceWithOptions(_ request: ListNamespaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListNamespaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["NamespaceName"] = request.namespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceStatus)) {
            query["NamespaceStatus"] = request.namespaceStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListNamespace",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listNamespace(_ request: ListNamespaceRequest) async throws -> ListNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listNamespaceWithOptions(request as! ListNamespaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepoBuildRecordWithOptions(_ request: ListRepoBuildRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepoBuildRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepoBuildRecord",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRepoBuildRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepoBuildRecord(_ request: ListRepoBuildRecordRequest) async throws -> ListRepoBuildRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRepoBuildRecordWithOptions(request as! ListRepoBuildRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepoBuildRecordLogWithOptions(_ request: ListRepoBuildRecordLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepoBuildRecordLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.buildRecordId)) {
            query["BuildRecordId"] = request.buildRecordId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.offset)) {
            query["Offset"] = request.offset!;
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepoBuildRecordLog",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRepoBuildRecordLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepoBuildRecordLog(_ request: ListRepoBuildRecordLogRequest) async throws -> ListRepoBuildRecordLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRepoBuildRecordLogWithOptions(request as! ListRepoBuildRecordLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepoBuildRuleWithOptions(_ request: ListRepoBuildRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepoBuildRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepoBuildRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRepoBuildRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepoBuildRule(_ request: ListRepoBuildRuleRequest) async throws -> ListRepoBuildRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRepoBuildRuleWithOptions(request as! ListRepoBuildRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepoSyncRuleWithOptions(_ request: ListRepoSyncRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepoSyncRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["NamespaceName"] = request.namespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetInstanceId)) {
            query["TargetInstanceId"] = request.targetInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetRegionId)) {
            query["TargetRegionId"] = request.targetRegionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepoSyncRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRepoSyncRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepoSyncRule(_ request: ListRepoSyncRuleRequest) async throws -> ListRepoSyncRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRepoSyncRuleWithOptions(request as! ListRepoSyncRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepoSyncTaskWithOptions(_ request: ListRepoSyncTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepoSyncTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoNamespaceName)) {
            query["RepoNamespaceName"] = request.repoNamespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.syncRecordId)) {
            query["SyncRecordId"] = request.syncRecordId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepoSyncTask",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRepoSyncTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepoSyncTask(_ request: ListRepoSyncTaskRequest) async throws -> ListRepoSyncTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRepoSyncTaskWithOptions(request as! ListRepoSyncTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepoTagWithOptions(_ request: ListRepoTagRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepoTagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepoTag",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRepoTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepoTag(_ request: ListRepoTagRequest) async throws -> ListRepoTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRepoTagWithOptions(request as! ListRepoTagRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepoTagScanResultWithOptions(_ request: ListRepoTagScanResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepoTagScanResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.digest)) {
            query["Digest"] = request.digest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterValue)) {
            query["FilterValue"] = request.filterValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scanTaskId)) {
            query["ScanTaskId"] = request.scanTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scanType)) {
            query["ScanType"] = request.scanType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.severity)) {
            query["Severity"] = request.severity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vulQueryKey)) {
            query["VulQueryKey"] = request.vulQueryKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepoTagScanResult",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRepoTagScanResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepoTagScanResult(_ request: ListRepoTagScanResultRequest) async throws -> ListRepoTagScanResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRepoTagScanResultWithOptions(request as! ListRepoTagScanResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepoTriggerWithOptions(_ request: ListRepoTriggerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepoTriggerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepoTrigger",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRepoTriggerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepoTrigger(_ request: ListRepoTriggerRequest) async throws -> ListRepoTriggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRepoTriggerWithOptions(request as! ListRepoTriggerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepositoryWithOptions(_ request: ListRepositoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRepositoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoNamespaceName)) {
            query["RepoNamespaceName"] = request.repoNamespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoStatus)) {
            query["RepoStatus"] = request.repoStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRepository",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRepositoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRepository(_ request: ListRepositoryRequest) async throws -> ListRepositoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRepositoryWithOptions(request as! ListRepositoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listScanBaselineByTaskWithOptions(_ request: ListScanBaselineByTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListScanBaselineByTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListScanBaselineByTask",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListScanBaselineByTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listScanBaselineByTask(_ request: ListScanBaselineByTaskRequest) async throws -> ListScanBaselineByTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listScanBaselineByTaskWithOptions(request as! ListScanBaselineByTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listScanMaliciousFileByTaskWithOptions(_ request: ListScanMaliciousFileByTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListScanMaliciousFileByTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListScanMaliciousFileByTask",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListScanMaliciousFileByTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listScanMaliciousFileByTask(_ request: ListScanMaliciousFileByTaskRequest) async throws -> ListScanMaliciousFileByTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listScanMaliciousFileByTaskWithOptions(request as! ListScanMaliciousFileByTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listScanRuleWithOptions(_ request: ListScanRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListScanRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListScanRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListScanRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listScanRule(_ request: ListScanRuleRequest) async throws -> ListScanRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listScanRuleWithOptions(request as! ListScanRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResourcesWithOptions(_ request: ListTagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagResources",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResources(_ request: ListTagResourcesRequest) async throws -> ListTagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTagResourcesWithOptions(request as! ListTagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetLoginPasswordWithOptions(_ request: ResetLoginPasswordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetLoginPasswordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetLoginPassword",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetLoginPasswordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetLoginPassword(_ request: ResetLoginPasswordRequest) async throws -> ResetLoginPasswordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resetLoginPasswordWithOptions(request as! ResetLoginPasswordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesWithOptions(_ request: TagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagResources",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResources(_ request: TagResourcesRequest) async throws -> TagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await tagResourcesWithOptions(request as! TagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResourcesWithOptions(_ request: UntagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UntagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.all)) {
            query["All"] = request.all!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKey)) {
            query["TagKey"] = request.tagKey ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UntagResources",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UntagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResources(_ request: UntagResourcesRequest) async throws -> UntagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await untagResourcesWithOptions(request as! UntagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateArtifactLifecycleRuleWithOptions(_ request: UpdateArtifactLifecycleRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateArtifactLifecycleRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.auto)) {
            query["Auto"] = request.auto!;
        }
        if (!TeaUtils.Client.isUnset(request.enableDeleteTag)) {
            query["EnableDeleteTag"] = request.enableDeleteTag!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["NamespaceName"] = request.namespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.retentionTagCount)) {
            query["RetentionTagCount"] = request.retentionTagCount!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleTime)) {
            query["ScheduleTime"] = request.scheduleTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            query["Scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagRegexp)) {
            query["TagRegexp"] = request.tagRegexp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateArtifactLifecycleRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateArtifactLifecycleRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateArtifactLifecycleRule(_ request: UpdateArtifactLifecycleRuleRequest) async throws -> UpdateArtifactLifecycleRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateArtifactLifecycleRuleWithOptions(request as! UpdateArtifactLifecycleRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateArtifactSubscriptionRuleWithOptions(_ request: UpdateArtifactSubscriptionRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateArtifactSubscriptionRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accelerate)) {
            query["Accelerate"] = request.accelerate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["NamespaceName"] = request.namespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.override_)) {
            query["Override"] = request.override_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platform)) {
            query["Platform"] = request.platform ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceNamespaceName)) {
            query["SourceNamespaceName"] = request.sourceNamespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceProvider)) {
            query["SourceProvider"] = request.sourceProvider ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceRepoName)) {
            query["SourceRepoName"] = request.sourceRepoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagCount)) {
            query["TagCount"] = request.tagCount!;
        }
        if (!TeaUtils.Client.isUnset(request.tagRegexp)) {
            query["TagRegexp"] = request.tagRegexp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateArtifactSubscriptionRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateArtifactSubscriptionRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateArtifactSubscriptionRule(_ request: UpdateArtifactSubscriptionRuleRequest) async throws -> UpdateArtifactSubscriptionRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateArtifactSubscriptionRuleWithOptions(request as! UpdateArtifactSubscriptionRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateChainWithOptions(_ request: UpdateChainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateChainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chainConfig)) {
            query["ChainConfig"] = request.chainConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chainId)) {
            query["ChainId"] = request.chainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scopeExclude)) {
            query["ScopeExclude"] = request.scopeExclude ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateChain",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateChainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateChain(_ request: UpdateChainRequest) async throws -> UpdateChainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateChainWithOptions(request as! UpdateChainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateChartNamespaceWithOptions(_ request: UpdateChartNamespaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateChartNamespaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoCreateRepo)) {
            query["AutoCreateRepo"] = request.autoCreateRepo!;
        }
        if (!TeaUtils.Client.isUnset(request.defaultRepoType)) {
            query["DefaultRepoType"] = request.defaultRepoType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["NamespaceName"] = request.namespaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateChartNamespace",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateChartNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateChartNamespace(_ request: UpdateChartNamespaceRequest) async throws -> UpdateChartNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateChartNamespaceWithOptions(request as! UpdateChartNamespaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateChartRepositoryWithOptions(_ request: UpdateChartRepositoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateChartRepositoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoNamespaceName)) {
            query["RepoNamespaceName"] = request.repoNamespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoType)) {
            query["RepoType"] = request.repoType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.summary)) {
            query["Summary"] = request.summary ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateChartRepository",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateChartRepositoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateChartRepository(_ request: UpdateChartRepositoryRequest) async throws -> UpdateChartRepositoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateChartRepositoryWithOptions(request as! UpdateChartRepositoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEventCenterRuleWithOptions(_ tmpReq: UpdateEventCenterRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEventCenterRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateEventCenterRuleShrinkRequest = UpdateEventCenterRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.namespaces)) {
            request.namespacesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.namespaces, "Namespaces", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.repoNames)) {
            request.repoNamesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.repoNames, "RepoNames", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventChannel)) {
            query["EventChannel"] = request.eventChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventConfig)) {
            query["EventConfig"] = request.eventConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventScope)) {
            query["EventScope"] = request.eventScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventType)) {
            query["EventType"] = request.eventType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespacesShrink)) {
            query["Namespaces"] = request.namespacesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoNamesShrink)) {
            query["RepoNames"] = request.repoNamesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoTagFilterPattern)) {
            query["RepoTagFilterPattern"] = request.repoTagFilterPattern ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            query["RuleName"] = request.ruleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEventCenterRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEventCenterRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEventCenterRule(_ request: UpdateEventCenterRuleRequest) async throws -> UpdateEventCenterRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateEventCenterRuleWithOptions(request as! UpdateEventCenterRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceEndpointStatusWithOptions(_ request: UpdateInstanceEndpointStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateInstanceEndpointStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enable)) {
            query["Enable"] = request.enable!;
        }
        if (!TeaUtils.Client.isUnset(request.endpointType)) {
            query["EndpointType"] = request.endpointType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleName)) {
            query["ModuleName"] = request.moduleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateInstanceEndpointStatus",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateInstanceEndpointStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceEndpointStatus(_ request: UpdateInstanceEndpointStatusRequest) async throws -> UpdateInstanceEndpointStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateInstanceEndpointStatusWithOptions(request as! UpdateInstanceEndpointStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNamespaceWithOptions(_ tmpReq: UpdateNamespaceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateNamespaceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateNamespaceShrinkRequest = UpdateNamespaceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.defaultRepoConfiguration)) {
            request.defaultRepoConfigurationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.defaultRepoConfiguration, "DefaultRepoConfiguration", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoCreateRepo)) {
            query["AutoCreateRepo"] = request.autoCreateRepo!;
        }
        if (!TeaUtils.Client.isUnset(request.defaultRepoConfigurationShrink)) {
            query["DefaultRepoConfiguration"] = request.defaultRepoConfigurationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultRepoType)) {
            query["DefaultRepoType"] = request.defaultRepoType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespaceName)) {
            query["NamespaceName"] = request.namespaceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateNamespace",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateNamespace(_ request: UpdateNamespaceRequest) async throws -> UpdateNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateNamespaceWithOptions(request as! UpdateNamespaceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRepoBuildRuleWithOptions(_ request: UpdateRepoBuildRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRepoBuildRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.buildArgs)) {
            query["BuildArgs"] = request.buildArgs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.buildRuleId)) {
            query["BuildRuleId"] = request.buildRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dockerfileLocation)) {
            query["DockerfileLocation"] = request.dockerfileLocation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dockerfileName)) {
            query["DockerfileName"] = request.dockerfileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageTag)) {
            query["ImageTag"] = request.imageTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platforms)) {
            query["Platforms"] = request.platforms ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.pushName)) {
            query["PushName"] = request.pushName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pushType)) {
            query["PushType"] = request.pushType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRepoBuildRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRepoBuildRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRepoBuildRule(_ request: UpdateRepoBuildRuleRequest) async throws -> UpdateRepoBuildRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateRepoBuildRuleWithOptions(request as! UpdateRepoBuildRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRepoSourceCodeRepoWithOptions(_ request: UpdateRepoSourceCodeRepoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRepoSourceCodeRepoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoBuild)) {
            query["AutoBuild"] = request.autoBuild ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeRepoId)) {
            query["CodeRepoId"] = request.codeRepoId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeRepoName)) {
            query["CodeRepoName"] = request.codeRepoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeRepoNamespaceName)) {
            query["CodeRepoNamespaceName"] = request.codeRepoNamespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeRepoType)) {
            query["CodeRepoType"] = request.codeRepoType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disableCacheBuild)) {
            query["DisableCacheBuild"] = request.disableCacheBuild ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.overseaBuild)) {
            query["OverseaBuild"] = request.overseaBuild ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRepoSourceCodeRepo",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRepoSourceCodeRepoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRepoSourceCodeRepo(_ request: UpdateRepoSourceCodeRepoRequest) async throws -> UpdateRepoSourceCodeRepoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateRepoSourceCodeRepoWithOptions(request as! UpdateRepoSourceCodeRepoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRepoTriggerWithOptions(_ request: UpdateRepoTriggerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRepoTriggerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerId)) {
            query["TriggerId"] = request.triggerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerName)) {
            query["TriggerName"] = request.triggerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerTag)) {
            query["TriggerTag"] = request.triggerTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerType)) {
            query["TriggerType"] = request.triggerType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerUrl)) {
            query["TriggerUrl"] = request.triggerUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRepoTrigger",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRepoTriggerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRepoTrigger(_ request: UpdateRepoTriggerRequest) async throws -> UpdateRepoTriggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateRepoTriggerWithOptions(request as! UpdateRepoTriggerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRepositoryWithOptions(_ request: UpdateRepositoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRepositoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.detail)) {
            query["Detail"] = request.detail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoId)) {
            query["RepoId"] = request.repoId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoName)) {
            query["RepoName"] = request.repoName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoNamespaceName)) {
            query["RepoNamespaceName"] = request.repoNamespaceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoType)) {
            query["RepoType"] = request.repoType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.summary)) {
            query["Summary"] = request.summary ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagImmutability)) {
            query["TagImmutability"] = request.tagImmutability!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRepository",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRepositoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRepository(_ request: UpdateRepositoryRequest) async throws -> UpdateRepositoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateRepositoryWithOptions(request as! UpdateRepositoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateScanRuleWithOptions(_ tmpReq: UpdateScanRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateScanRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateScanRuleShrinkRequest = UpdateScanRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.namespaces)) {
            request.namespacesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.namespaces, "Namespaces", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.repoNames)) {
            request.repoNamesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.repoNames, "RepoNames", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespacesShrink)) {
            query["Namespaces"] = request.namespacesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoNamesShrink)) {
            query["RepoNames"] = request.repoNamesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repoTagFilterPattern)) {
            query["RepoTagFilterPattern"] = request.repoTagFilterPattern ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            query["RuleName"] = request.ruleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scanRuleId)) {
            query["ScanRuleId"] = request.scanRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scanScope)) {
            query["ScanScope"] = request.scanScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.triggerType)) {
            query["TriggerType"] = request.triggerType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateScanRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateScanRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateScanRule(_ request: UpdateScanRuleRequest) async throws -> UpdateScanRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateScanRuleWithOptions(request as! UpdateScanRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateStorageDomainRoutingRuleWithOptions(_ tmpReq: UpdateStorageDomainRoutingRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateStorageDomainRoutingRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateStorageDomainRoutingRuleShrinkRequest = UpdateStorageDomainRoutingRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.routes)) {
            request.routesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.routes, "Routes", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routesShrink)) {
            query["Routes"] = request.routesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateStorageDomainRoutingRule",
            "version": "2018-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateStorageDomainRoutingRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateStorageDomainRoutingRule(_ request: UpdateStorageDomainRoutingRuleRequest) async throws -> UpdateStorageDomainRoutingRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateStorageDomainRoutingRuleWithOptions(request as! UpdateStorageDomainRoutingRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
