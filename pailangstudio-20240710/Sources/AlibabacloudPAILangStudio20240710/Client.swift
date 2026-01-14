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
}
