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
        self._endpoint = try getEndpoint("pailangstudio", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createDeploymentWithOptions(_ request: CreateDeploymentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDeploymentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoApproval)) {
            body["AutoApproval"] = request.autoApproval!;
        }
        if (!TeaUtils.Client.isUnset(request.chatHistoryConfig)) {
            body["ChatHistoryConfig"] = request.chatHistoryConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.contentModerationConfig)) {
            body["ContentModerationConfig"] = request.contentModerationConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.deploymentConfig)) {
            body["DeploymentConfig"] = request.deploymentConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableTrace)) {
            body["EnableTrace"] = request.enableTrace!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceSnapshotId)) {
            body["ResourceSnapshotId"] = request.resourceSnapshotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            body["ServiceName"] = request.serviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workDir)) {
            body["WorkDir"] = request.workDir ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDeployment",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/deployments",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDeploymentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDeployment(_ request: CreateDeploymentRequest) async throws -> CreateDeploymentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createDeploymentWithOptions(request as! CreateDeploymentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createKnowledgeBaseWithOptions(_ request: CreateKnowledgeBaseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateKnowledgeBaseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chunkConfig)) {
            body["ChunkConfig"] = request.chunkConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.dataSources)) {
            body["DataSources"] = request.dataSources ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.embeddingConfig)) {
            body["EmbeddingConfig"] = request.embeddingConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.indexColumnConfig)) {
            body["IndexColumnConfig"] = request.indexColumnConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.knowledgeBaseType)) {
            body["KnowledgeBaseType"] = request.knowledgeBaseType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metaDataConfig)) {
            body["MetaDataConfig"] = request.metaDataConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outputDir)) {
            body["OutputDir"] = request.outputDir ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runtimeId)) {
            body["RuntimeId"] = request.runtimeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vectorDBConfig)) {
            body["VectorDBConfig"] = request.vectorDBConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateKnowledgeBase",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/knowledgebases",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateKnowledgeBaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createKnowledgeBase(_ request: CreateKnowledgeBaseRequest) async throws -> CreateKnowledgeBaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createKnowledgeBaseWithOptions(request as! CreateKnowledgeBaseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createKnowledgeBaseJobWithOptions(_ KnowledgeBaseId: String, _ request: CreateKnowledgeBaseJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateKnowledgeBaseJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecsSpecs)) {
            body["EcsSpecs"] = request.ecsSpecs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.embeddingConfig)) {
            body["EmbeddingConfig"] = request.embeddingConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.jobAction)) {
            body["JobAction"] = request.jobAction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxRunningTimeInSeconds)) {
            body["MaxRunningTimeInSeconds"] = request.maxRunningTimeInSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userVpc)) {
            body["UserVpc"] = request.userVpc!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateKnowledgeBaseJob",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/knowledgebases/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(KnowledgeBaseId)) + "/knowledgebasejobs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateKnowledgeBaseJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createKnowledgeBaseJob(_ KnowledgeBaseId: String, _ request: CreateKnowledgeBaseJobRequest) async throws -> CreateKnowledgeBaseJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createKnowledgeBaseJobWithOptions(KnowledgeBaseId as! String, request as! CreateKnowledgeBaseJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRuntimeWithOptions(_ request: CreateRuntimeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRuntimeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoUpdateImage)) {
            body["AutoUpdateImage"] = request.autoUpdateImage!;
        }
        if (!TeaUtils.Client.isUnset(request.credentialConfig)) {
            body["CredentialConfig"] = request.credentialConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.dataSources)) {
            body["DataSources"] = request.dataSources ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ecsSpec)) {
            body["EcsSpec"] = request.ecsSpec!;
        }
        if (!TeaUtils.Client.isUnset(request.envs)) {
            body["Envs"] = request.envs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runTimeout)) {
            body["RunTimeout"] = request.runTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.runtimeName)) {
            body["RuntimeName"] = request.runtimeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runtimeType)) {
            body["RuntimeType"] = request.runtimeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userVpc)) {
            body["UserVpc"] = request.userVpc!;
        }
        if (!TeaUtils.Client.isUnset(request.workDir)) {
            body["WorkDir"] = request.workDir ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRuntime",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/runtimes",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRuntimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRuntime(_ request: CreateRuntimeRequest) async throws -> CreateRuntimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRuntimeWithOptions(request as! CreateRuntimeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSnapshotWithOptions(_ request: CreateSnapshotRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSnapshotResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.creationType)) {
            body["CreationType"] = request.creationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotName)) {
            body["SnapshotName"] = request.snapshotName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotResourceId)) {
            body["SnapshotResourceId"] = request.snapshotResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotResourceType)) {
            body["SnapshotResourceType"] = request.snapshotResourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceStoragePath)) {
            body["SourceStoragePath"] = request.sourceStoragePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workDir)) {
            body["WorkDir"] = request.workDir ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSnapshot",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/snapshots",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSnapshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSnapshot(_ request: CreateSnapshotRequest) async throws -> CreateSnapshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createSnapshotWithOptions(request as! CreateSnapshotRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDeploymentWithOptions(_ DeploymentId: String, _ request: DeleteDeploymentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDeploymentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDeployment",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/deployments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DeploymentId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDeploymentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDeployment(_ DeploymentId: String, _ request: DeleteDeploymentRequest) async throws -> DeleteDeploymentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteDeploymentWithOptions(DeploymentId as! String, request as! DeleteDeploymentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteKnowledgeBaseWithOptions(_ KnowledgeBaseId: String, _ request: DeleteKnowledgeBaseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteKnowledgeBaseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteKnowledgeBase",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/knowledgebases/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(KnowledgeBaseId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteKnowledgeBaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteKnowledgeBase(_ KnowledgeBaseId: String, _ request: DeleteKnowledgeBaseRequest) async throws -> DeleteKnowledgeBaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteKnowledgeBaseWithOptions(KnowledgeBaseId as! String, request as! DeleteKnowledgeBaseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteKnowledgeBaseJobWithOptions(_ KnowledgeBaseId: String, _ KnowledgeBaseJobId: String, _ request: DeleteKnowledgeBaseJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteKnowledgeBaseJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteKnowledgeBaseJob",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/knowledgebases/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(KnowledgeBaseId)) + "/knowledgebasejobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(KnowledgeBaseJobId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteKnowledgeBaseJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteKnowledgeBaseJob(_ KnowledgeBaseId: String, _ KnowledgeBaseJobId: String, _ request: DeleteKnowledgeBaseJobRequest) async throws -> DeleteKnowledgeBaseJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteKnowledgeBaseJobWithOptions(KnowledgeBaseId as! String, KnowledgeBaseJobId as! String, request as! DeleteKnowledgeBaseJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRuntimeWithOptions(_ RuntimeId: String, _ request: DeleteRuntimeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRuntimeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRuntime",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/runtimes/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RuntimeId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRuntimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRuntime(_ RuntimeId: String, _ request: DeleteRuntimeRequest) async throws -> DeleteRuntimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRuntimeWithOptions(RuntimeId as! String, request as! DeleteRuntimeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSnapshotWithOptions(_ SnapshotId: String, _ request: DeleteSnapshotRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSnapshotResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSnapshot",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/snapshots/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(SnapshotId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSnapshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSnapshot(_ SnapshotId: String, _ request: DeleteSnapshotRequest) async throws -> DeleteSnapshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteSnapshotWithOptions(SnapshotId as! String, request as! DeleteSnapshotRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeploymentWithOptions(_ DeploymentId: String, _ request: GetDeploymentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeploymentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeployment",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/deployments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DeploymentId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeploymentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeployment(_ DeploymentId: String, _ request: GetDeploymentRequest) async throws -> GetDeploymentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDeploymentWithOptions(DeploymentId as! String, request as! GetDeploymentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getKnowledgeBaseWithOptions(_ KnowledgeBaseId: String, _ request: GetKnowledgeBaseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetKnowledgeBaseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.versionName)) {
            query["VersionName"] = request.versionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetKnowledgeBase",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/knowledgebases/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(KnowledgeBaseId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetKnowledgeBaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getKnowledgeBase(_ KnowledgeBaseId: String, _ request: GetKnowledgeBaseRequest) async throws -> GetKnowledgeBaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getKnowledgeBaseWithOptions(KnowledgeBaseId as! String, request as! GetKnowledgeBaseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getKnowledgeBaseJobWithOptions(_ KnowledgeBaseId: String, _ KnowledgeBaseJobId: String, _ request: GetKnowledgeBaseJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetKnowledgeBaseJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetKnowledgeBaseJob",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/knowledgebases/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(KnowledgeBaseId)) + "/knowledgebasejobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(KnowledgeBaseJobId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetKnowledgeBaseJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getKnowledgeBaseJob(_ KnowledgeBaseId: String, _ KnowledgeBaseJobId: String, _ request: GetKnowledgeBaseJobRequest) async throws -> GetKnowledgeBaseJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getKnowledgeBaseJobWithOptions(KnowledgeBaseId as! String, KnowledgeBaseJobId as! String, request as! GetKnowledgeBaseJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRuntimeWithOptions(_ RuntimeId: String, _ request: GetRuntimeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRuntimeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRuntime",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/runtimes/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RuntimeId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRuntimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRuntime(_ RuntimeId: String, _ request: GetRuntimeRequest) async throws -> GetRuntimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRuntimeWithOptions(RuntimeId as! String, request as! GetRuntimeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSnapshotWithOptions(_ SnapshotId: String, _ request: GetSnapshotRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSnapshotResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSnapshot",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/snapshots/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(SnapshotId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSnapshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSnapshot(_ SnapshotId: String, _ request: GetSnapshotRequest) async throws -> GetSnapshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSnapshotWithOptions(SnapshotId as! String, request as! GetSnapshotRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeploymentsWithOptions(_ request: ListDeploymentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDeploymentsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.creator)) {
            query["Creator"] = request.creator ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deploymentId)) {
            query["DeploymentId"] = request.deploymentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deploymentStatus)) {
            query["DeploymentStatus"] = request.deploymentStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationType)) {
            query["OperationType"] = request.operationType ?? "";
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
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceSnapshotId)) {
            query["ResourceSnapshotId"] = request.resourceSnapshotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["ServiceName"] = request.serviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDeployments",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/deployments",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDeploymentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeployments(_ request: ListDeploymentsRequest) async throws -> ListDeploymentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDeploymentsWithOptions(request as! ListDeploymentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listKnowledgeBaseChunksWithOptions(_ KnowledgeBaseId: String, _ request: ListKnowledgeBaseChunksRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListKnowledgeBaseChunksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chunkStatus)) {
            query["ChunkStatus"] = request.chunkStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metaData)) {
            query["MetaData"] = request.metaData!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.versionName)) {
            query["VersionName"] = request.versionName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListKnowledgeBaseChunks",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/knowledgebases/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(KnowledgeBaseId)) + "/knowledgebasechunks",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListKnowledgeBaseChunksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listKnowledgeBaseChunks(_ KnowledgeBaseId: String, _ request: ListKnowledgeBaseChunksRequest) async throws -> ListKnowledgeBaseChunksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listKnowledgeBaseChunksWithOptions(KnowledgeBaseId as! String, request as! ListKnowledgeBaseChunksRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listKnowledgeBaseJobsWithOptions(_ KnowledgeBaseId: String, _ request: ListKnowledgeBaseJobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListKnowledgeBaseJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jobAction)) {
            query["JobAction"] = request.jobAction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.knowledgeBaseJobId)) {
            query["KnowledgeBaseJobId"] = request.knowledgeBaseJobId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListKnowledgeBaseJobs",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/knowledgebases/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(KnowledgeBaseId)) + "/knowledgebasejobs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListKnowledgeBaseJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listKnowledgeBaseJobs(_ KnowledgeBaseId: String, _ request: ListKnowledgeBaseJobsRequest) async throws -> ListKnowledgeBaseJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listKnowledgeBaseJobsWithOptions(KnowledgeBaseId as! String, request as! ListKnowledgeBaseJobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listKnowledgeBasesWithOptions(_ request: ListKnowledgeBasesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListKnowledgeBasesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.creator)) {
            query["Creator"] = request.creator ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.knowledgeBaseId)) {
            query["KnowledgeBaseId"] = request.knowledgeBaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.knowledgeBaseType)) {
            query["KnowledgeBaseType"] = request.knowledgeBaseType ?? "";
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
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListKnowledgeBases",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/knowledgebases",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListKnowledgeBasesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listKnowledgeBases(_ request: ListKnowledgeBasesRequest) async throws -> ListKnowledgeBasesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listKnowledgeBasesWithOptions(request as! ListKnowledgeBasesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRuntimesWithOptions(_ request: ListRuntimesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRuntimesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.creator)) {
            query["Creator"] = request.creator ?? "";
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
        if (!TeaUtils.Client.isUnset(request.runtimeId)) {
            query["RuntimeId"] = request.runtimeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runtimeName)) {
            query["RuntimeName"] = request.runtimeName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runtimeStatus)) {
            query["RuntimeStatus"] = request.runtimeStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            query["Version"] = request.version ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workDir)) {
            query["WorkDir"] = request.workDir ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRuntimes",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/runtimes",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRuntimesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRuntimes(_ request: ListRuntimesRequest) async throws -> ListRuntimesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRuntimesWithOptions(request as! ListRuntimesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSnapshotsWithOptions(_ request: ListSnapshotsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSnapshotsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.creationType)) {
            query["CreationType"] = request.creationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.creator)) {
            query["Creator"] = request.creator ?? "";
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
        if (!TeaUtils.Client.isUnset(request.snapshotId)) {
            query["SnapshotId"] = request.snapshotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotResourceId)) {
            query["SnapshotResourceId"] = request.snapshotResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotResourceType)) {
            query["SnapshotResourceType"] = request.snapshotResourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotStatus)) {
            query["SnapshotStatus"] = request.snapshotStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSnapshots",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/snapshots",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSnapshotsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSnapshots(_ request: ListSnapshotsRequest) async throws -> ListSnapshotsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSnapshotsWithOptions(request as! ListSnapshotsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retrieveKnowledgeBaseWithOptions(_ KnowledgeBaseId: String, _ request: RetrieveKnowledgeBaseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RetrieveKnowledgeBaseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hybridStrategyConfig)) {
            body["HybridStrategyConfig"] = request.hybridStrategyConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metaDataFilterConditions)) {
            body["MetaDataFilterConditions"] = request.metaDataFilterConditions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryMode)) {
            body["QueryMode"] = request.queryMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rerankConfig)) {
            body["RerankConfig"] = request.rerankConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rewriteConfig)) {
            body["RewriteConfig"] = request.rewriteConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scoreThreshold)) {
            body["ScoreThreshold"] = request.scoreThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.topK)) {
            body["TopK"] = request.topK!;
        }
        if (!TeaUtils.Client.isUnset(request.versionName)) {
            body["VersionName"] = request.versionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RetrieveKnowledgeBase",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/knowledgebases/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(KnowledgeBaseId)) + "/action/retrieve",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RetrieveKnowledgeBaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retrieveKnowledgeBase(_ KnowledgeBaseId: String, _ request: RetrieveKnowledgeBaseRequest) async throws -> RetrieveKnowledgeBaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await retrieveKnowledgeBaseWithOptions(KnowledgeBaseId as! String, request as! RetrieveKnowledgeBaseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDeploymentWithOptions(_ DeploymentId: String, _ request: UpdateDeploymentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDeploymentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoApproval)) {
            body["AutoApproval"] = request.autoApproval!;
        }
        if (!TeaUtils.Client.isUnset(request.deploymentConfig)) {
            body["DeploymentConfig"] = request.deploymentConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stageAction)) {
            body["StageAction"] = request.stageAction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDeployment",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/deployments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(DeploymentId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDeploymentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDeployment(_ DeploymentId: String, _ request: UpdateDeploymentRequest) async throws -> UpdateDeploymentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateDeploymentWithOptions(DeploymentId as! String, request as! UpdateDeploymentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateKnowledgeBaseWithOptions(_ KnowledgeBaseId: String, _ request: UpdateKnowledgeBaseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateKnowledgeBaseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoUpdateConfig)) {
            body["AutoUpdateConfig"] = request.autoUpdateConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.bindRuntime)) {
            body["BindRuntime"] = request.bindRuntime!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metaDataConfig)) {
            body["MetaDataConfig"] = request.metaDataConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.runtimeId)) {
            body["RuntimeId"] = request.runtimeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateKnowledgeBase",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/knowledgebases/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(KnowledgeBaseId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateKnowledgeBaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateKnowledgeBase(_ KnowledgeBaseId: String, _ request: UpdateKnowledgeBaseRequest) async throws -> UpdateKnowledgeBaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateKnowledgeBaseWithOptions(KnowledgeBaseId as! String, request as! UpdateKnowledgeBaseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateKnowledgeBaseChunkWithOptions(_ KnowledgeBaseId: String, _ KnowledgeBaseChunkId: String, _ request: UpdateKnowledgeBaseChunkRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateKnowledgeBaseChunkResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chunkContent)) {
            body["ChunkContent"] = request.chunkContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chunkStatus)) {
            body["ChunkStatus"] = request.chunkStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateKnowledgeBaseChunk",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/knowledgebases/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(KnowledgeBaseId)) + "/knowledgebasechunks/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(KnowledgeBaseChunkId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateKnowledgeBaseChunkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateKnowledgeBaseChunk(_ KnowledgeBaseId: String, _ KnowledgeBaseChunkId: String, _ request: UpdateKnowledgeBaseChunkRequest) async throws -> UpdateKnowledgeBaseChunkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateKnowledgeBaseChunkWithOptions(KnowledgeBaseId as! String, KnowledgeBaseChunkId as! String, request as! UpdateKnowledgeBaseChunkRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateKnowledgeBaseJobWithOptions(_ KnowledgeBaseId: String, _ KnowledgeBaseJobId: String, _ request: UpdateKnowledgeBaseJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateKnowledgeBaseJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateKnowledgeBaseJob",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/knowledgebases/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(KnowledgeBaseId)) + "/knowledgebasejobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(KnowledgeBaseJobId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateKnowledgeBaseJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateKnowledgeBaseJob(_ KnowledgeBaseId: String, _ KnowledgeBaseJobId: String, _ request: UpdateKnowledgeBaseJobRequest) async throws -> UpdateKnowledgeBaseJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateKnowledgeBaseJobWithOptions(KnowledgeBaseId as! String, KnowledgeBaseJobId as! String, request as! UpdateKnowledgeBaseJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRuntimeWithOptions(_ RuntimeId: String, _ request: UpdateRuntimeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRuntimeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.action)) {
            body["Action"] = request.action ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoUpdateImage)) {
            body["AutoUpdateImage"] = request.autoUpdateImage!;
        }
        if (!TeaUtils.Client.isUnset(request.runTimeout)) {
            body["RunTimeout"] = request.runTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["Version"] = request.version ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRuntime",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/runtimes/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(RuntimeId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRuntimeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRuntime(_ RuntimeId: String, _ request: UpdateRuntimeRequest) async throws -> UpdateRuntimeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateRuntimeWithOptions(RuntimeId as! String, request as! UpdateRuntimeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSnapshotWithOptions(_ SnapshotId: String, _ request: UpdateSnapshotRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSnapshotResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotName)) {
            body["SnapshotName"] = request.snapshotName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSnapshot",
            "version": "2024-07-10",
            "protocol": "HTTPS",
            "pathname": "/api/v1/langstudio/snapshots/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(SnapshotId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSnapshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSnapshot(_ SnapshotId: String, _ request: UpdateSnapshotRequest) async throws -> UpdateSnapshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateSnapshotWithOptions(SnapshotId as! String, request as! UpdateSnapshotRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
