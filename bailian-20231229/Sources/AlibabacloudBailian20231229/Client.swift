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
        self._endpoint = try getEndpoint("bailian", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addCategoryWithOptions(_ WorkspaceId: String, _ request: AddCategoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddCategoryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categoryName)) {
            body["CategoryName"] = request.categoryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.categoryType)) {
            body["CategoryType"] = request.categoryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentCategoryId)) {
            body["ParentCategoryId"] = request.parentCategoryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddCategory",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/datacenter/category/",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddCategoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addCategory(_ WorkspaceId: String, _ request: AddCategoryRequest) async throws -> AddCategoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addCategoryWithOptions(WorkspaceId as! String, request as! AddCategoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addFileWithOptions(_ WorkspaceId: String, _ request: AddFileRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddFileResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categoryId)) {
            body["CategoryId"] = request.categoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.leaseId)) {
            body["LeaseId"] = request.leaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parser)) {
            body["Parser"] = request.parser ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddFile",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/datacenter/file",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addFile(_ WorkspaceId: String, _ request: AddFileRequest) async throws -> AddFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addFileWithOptions(WorkspaceId as! String, request as! AddFileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyFileUploadLeaseWithOptions(_ CategoryId: String, _ WorkspaceId: String, _ request: ApplyFileUploadLeaseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyFileUploadLeaseResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["FileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.md5)) {
            body["Md5"] = request.md5 ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sizeInBytes)) {
            body["SizeInBytes"] = request.sizeInBytes ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyFileUploadLease",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/datacenter/category/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(CategoryId)),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyFileUploadLeaseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyFileUploadLease(_ CategoryId: String, _ WorkspaceId: String, _ request: ApplyFileUploadLeaseRequest) async throws -> ApplyFileUploadLeaseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await applyFileUploadLeaseWithOptions(CategoryId as! String, WorkspaceId as! String, request as! ApplyFileUploadLeaseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAndPulishAgentWithOptions(_ workspaceId: String, _ tmpReq: CreateAndPulishAgentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAndPulishAgentResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateAndPulishAgentShrinkRequest = CreateAndPulishAgentShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.applicationConfig)) {
            request.applicationConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.applicationConfig, "applicationConfig", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationConfigShrink)) {
            body["applicationConfig"] = request.applicationConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instructions)) {
            body["instructions"] = request.instructions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAndPulishAgent",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/application/agents",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAndPulishAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAndPulishAgent(_ workspaceId: String, _ request: CreateAndPulishAgentRequest) async throws -> CreateAndPulishAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAndPulishAgentWithOptions(workspaceId as! String, request as! CreateAndPulishAgentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIndexWithOptions(_ WorkspaceId: String, _ tmpReq: CreateIndexRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIndexResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateIndexShrinkRequest = CreateIndexShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.categoryIds)) {
            request.categoryIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.categoryIds, "CategoryIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.columns)) {
            request.columnsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.columns, "Columns", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.documentIds)) {
            request.documentIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.documentIds, "DocumentIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categoryIdsShrink)) {
            query["CategoryIds"] = request.categoryIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chunkSize)) {
            query["ChunkSize"] = request.chunkSize!;
        }
        if (!TeaUtils.Client.isUnset(request.columnsShrink)) {
            query["Columns"] = request.columnsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.documentIdsShrink)) {
            query["DocumentIds"] = request.documentIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.embeddingModelName)) {
            query["EmbeddingModelName"] = request.embeddingModelName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.overlapSize)) {
            query["OverlapSize"] = request.overlapSize!;
        }
        if (!TeaUtils.Client.isUnset(request.rerankMinScore)) {
            query["RerankMinScore"] = request.rerankMinScore!;
        }
        if (!TeaUtils.Client.isUnset(request.rerankModelName)) {
            query["RerankModelName"] = request.rerankModelName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.separator)) {
            query["Separator"] = request.separator ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sinkInstanceId)) {
            query["SinkInstanceId"] = request.sinkInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sinkRegion)) {
            query["SinkRegion"] = request.sinkRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sinkType)) {
            query["SinkType"] = request.sinkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.structureType)) {
            query["StructureType"] = request.structureType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIndex",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/index/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIndexResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIndex(_ WorkspaceId: String, _ request: CreateIndexRequest) async throws -> CreateIndexResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createIndexWithOptions(WorkspaceId as! String, request as! CreateIndexRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAgentWithOptions(_ workspaceId: String, _ appCode: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAgentResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAgent",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/application/agents/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appCode)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAgent(_ workspaceId: String, _ appCode: String) async throws -> DeleteAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteAgentWithOptions(workspaceId as! String, appCode as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCategoryWithOptions(_ CategoryId: String, _ WorkspaceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCategoryResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCategory",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/datacenter/category/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(CategoryId)) + "/",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCategoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCategory(_ CategoryId: String, _ WorkspaceId: String) async throws -> DeleteCategoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteCategoryWithOptions(CategoryId as! String, WorkspaceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFileWithOptions(_ FileId: String, _ WorkspaceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFileResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFile",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/datacenter/file/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(FileId)) + "/",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFile(_ FileId: String, _ WorkspaceId: String) async throws -> DeleteFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteFileWithOptions(FileId as! String, WorkspaceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIndexWithOptions(_ WorkspaceId: String, _ request: DeleteIndexRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteIndexResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.indexId)) {
            query["IndexId"] = request.indexId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteIndex",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/index/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteIndexResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIndex(_ WorkspaceId: String, _ request: DeleteIndexRequest) async throws -> DeleteIndexResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteIndexWithOptions(WorkspaceId as! String, request as! DeleteIndexRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIndexDocumentWithOptions(_ WorkspaceId: String, _ tmpReq: DeleteIndexDocumentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteIndexDocumentResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteIndexDocumentShrinkRequest = DeleteIndexDocumentShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.documentIds)) {
            request.documentIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.documentIds, "DocumentIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.documentIdsShrink)) {
            query["DocumentIds"] = request.documentIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.indexId)) {
            query["IndexId"] = request.indexId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteIndexDocument",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/index/delete_index_document",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteIndexDocumentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIndexDocument(_ WorkspaceId: String, _ request: DeleteIndexDocumentRequest) async throws -> DeleteIndexDocumentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteIndexDocumentWithOptions(WorkspaceId as! String, request as! DeleteIndexDocumentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFileWithOptions(_ WorkspaceId: String, _ FileId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFileResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFile",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/datacenter/file/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(FileId)) + "/",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFile(_ WorkspaceId: String, _ FileId: String) async throws -> DescribeFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeFileWithOptions(WorkspaceId as! String, FileId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIndexJobStatusWithOptions(_ WorkspaceId: String, _ request: GetIndexJobStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIndexJobStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.indexId)) {
            query["IndexId"] = request.indexId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIndexJobStatus",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/index/job/status",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIndexJobStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIndexJobStatus(_ WorkspaceId: String, _ request: GetIndexJobStatusRequest) async throws -> GetIndexJobStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getIndexJobStatusWithOptions(WorkspaceId as! String, request as! GetIndexJobStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPublishedAgentWithOptions(_ workspaceId: String, _ appCode: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPublishedAgentResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPublishedAgent",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/application/agents/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appCode)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPublishedAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPublishedAgent(_ workspaceId: String, _ appCode: String) async throws -> GetPublishedAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPublishedAgentWithOptions(workspaceId as! String, appCode as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCategoryWithOptions(_ WorkspaceId: String, _ request: ListCategoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCategoryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categoryType)) {
            body["CategoryType"] = request.categoryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentCategoryId)) {
            body["ParentCategoryId"] = request.parentCategoryId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCategory",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/datacenter/categories",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCategoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCategory(_ WorkspaceId: String, _ request: ListCategoryRequest) async throws -> ListCategoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listCategoryWithOptions(WorkspaceId as! String, request as! ListCategoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChunksWithOptions(_ WorkspaceId: String, _ request: ListChunksRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListChunksResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fields)) {
            body["Fields"] = request.fields ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.filed)) {
            body["Filed"] = request.filed ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.indexId)) {
            body["IndexId"] = request.indexId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListChunks",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/index/list_chunks",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListChunksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChunks(_ WorkspaceId: String, _ request: ListChunksRequest) async throws -> ListChunksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listChunksWithOptions(WorkspaceId as! String, request as! ListChunksRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFileWithOptions(_ WorkspaceId: String, _ request: ListFileRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categoryId)) {
            query["CategoryId"] = request.categoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFile",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/datacenter/files",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFile(_ WorkspaceId: String, _ request: ListFileRequest) async throws -> ListFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listFileWithOptions(WorkspaceId as! String, request as! ListFileRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIndexDocumentsWithOptions(_ WorkspaceId: String, _ request: ListIndexDocumentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIndexDocumentsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.documentName)) {
            query["DocumentName"] = request.documentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.documentStatus)) {
            query["DocumentStatus"] = request.documentStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.indexId)) {
            query["IndexId"] = request.indexId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIndexDocuments",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/index/list_index_documents",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIndexDocumentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIndexDocuments(_ WorkspaceId: String, _ request: ListIndexDocumentsRequest) async throws -> ListIndexDocumentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listIndexDocumentsWithOptions(WorkspaceId as! String, request as! ListIndexDocumentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIndicesWithOptions(_ WorkspaceId: String, _ request: ListIndicesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIndicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.indexName)) {
            query["IndexName"] = request.indexName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIndices",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/index/list_indices",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIndicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIndices(_ WorkspaceId: String, _ request: ListIndicesRequest) async throws -> ListIndicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listIndicesWithOptions(WorkspaceId as! String, request as! ListIndicesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPublishedAgentWithOptions(_ workspaceId: String, _ request: ListPublishedAgentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPublishedAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["pageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPublishedAgent",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/application/agents",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPublishedAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPublishedAgent(_ workspaceId: String, _ request: ListPublishedAgentRequest) async throws -> ListPublishedAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPublishedAgentWithOptions(workspaceId as! String, request as! ListPublishedAgentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retrieveWithOptions(_ WorkspaceId: String, _ tmpReq: RetrieveRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RetrieveResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RetrieveShrinkRequest = RetrieveShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.rerank)) {
            request.rerankShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.rerank, "Rerank", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.rewrite)) {
            request.rewriteShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.rewrite, "Rewrite", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.searchFilters)) {
            request.searchFiltersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.searchFilters, "SearchFilters", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.denseSimilarityTopK)) {
            query["DenseSimilarityTopK"] = request.denseSimilarityTopK!;
        }
        if (!TeaUtils.Client.isUnset(request.enableReranking)) {
            query["EnableReranking"] = request.enableReranking!;
        }
        if (!TeaUtils.Client.isUnset(request.enableRewrite)) {
            query["EnableRewrite"] = request.enableRewrite!;
        }
        if (!TeaUtils.Client.isUnset(request.indexId)) {
            query["IndexId"] = request.indexId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rerankShrink)) {
            query["Rerank"] = request.rerankShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rerankMinScore)) {
            query["RerankMinScore"] = request.rerankMinScore!;
        }
        if (!TeaUtils.Client.isUnset(request.rerankTopN)) {
            query["RerankTopN"] = request.rerankTopN!;
        }
        if (!TeaUtils.Client.isUnset(request.rewriteShrink)) {
            query["Rewrite"] = request.rewriteShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.saveRetrieverHistory)) {
            query["SaveRetrieverHistory"] = request.saveRetrieverHistory!;
        }
        if (!TeaUtils.Client.isUnset(request.searchFiltersShrink)) {
            query["SearchFilters"] = request.searchFiltersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sparseSimilarityTopK)) {
            query["SparseSimilarityTopK"] = request.sparseSimilarityTopK!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Retrieve",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/index/retrieve",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RetrieveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func retrieve(_ WorkspaceId: String, _ request: RetrieveRequest) async throws -> RetrieveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await retrieveWithOptions(WorkspaceId as! String, request as! RetrieveRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitIndexAddDocumentsJobWithOptions(_ WorkspaceId: String, _ tmpReq: SubmitIndexAddDocumentsJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitIndexAddDocumentsJobResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitIndexAddDocumentsJobShrinkRequest = SubmitIndexAddDocumentsJobShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.categoryIds)) {
            request.categoryIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.categoryIds, "CategoryIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.documentIds)) {
            request.documentIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.documentIds, "DocumentIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categoryIdsShrink)) {
            query["CategoryIds"] = request.categoryIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.documentIdsShrink)) {
            query["DocumentIds"] = request.documentIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.indexId)) {
            query["IndexId"] = request.indexId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitIndexAddDocumentsJob",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/index/add_documents_to_index",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitIndexAddDocumentsJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitIndexAddDocumentsJob(_ WorkspaceId: String, _ request: SubmitIndexAddDocumentsJobRequest) async throws -> SubmitIndexAddDocumentsJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitIndexAddDocumentsJobWithOptions(WorkspaceId as! String, request as! SubmitIndexAddDocumentsJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitIndexJobWithOptions(_ WorkspaceId: String, _ request: SubmitIndexJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitIndexJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.indexId)) {
            query["IndexId"] = request.indexId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitIndexJob",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(WorkspaceId)) + "/index/submit_index_job",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitIndexJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitIndexJob(_ WorkspaceId: String, _ request: SubmitIndexJobRequest) async throws -> SubmitIndexJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitIndexJobWithOptions(WorkspaceId as! String, request as! SubmitIndexJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAndPublishAgentWithOptions(_ workspaceId: String, _ appCode: String, _ tmpReq: UpdateAndPublishAgentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAndPublishAgentResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateAndPublishAgentShrinkRequest = UpdateAndPublishAgentShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.applicationConfig)) {
            request.applicationConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.applicationConfig, "applicationConfig", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applicationConfigShrink)) {
            body["applicationConfig"] = request.applicationConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instructions)) {
            body["instructions"] = request.instructions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            body["modelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAndPublishAgent",
            "version": "2023-12-29",
            "protocol": "HTTPS",
            "pathname": "/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(workspaceId)) + "/application/agents/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(appCode)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAndPublishAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAndPublishAgent(_ workspaceId: String, _ appCode: String, _ request: UpdateAndPublishAgentRequest) async throws -> UpdateAndPublishAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateAndPublishAgentWithOptions(workspaceId as! String, appCode as! String, request as! UpdateAndPublishAgentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
