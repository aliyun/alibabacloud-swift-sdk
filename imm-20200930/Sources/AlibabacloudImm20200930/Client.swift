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
            "cn-beijing-gov-1": "imm-vpc.cn-beijing-gov-1.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("imm", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addImageMosaicWithOptions(_ tmpReq: AddImageMosaicRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddImageMosaicResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddImageMosaicShrinkRequest = AddImageMosaicShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.targets)) {
            request.targetsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.targets, "Targets", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageFormat)) {
            query["ImageFormat"] = request.imageFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quality)) {
            query["Quality"] = request.quality!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetURI)) {
            query["TargetURI"] = request.targetURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetsShrink)) {
            query["Targets"] = request.targetsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddImageMosaic",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddImageMosaicResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addImageMosaic(_ request: AddImageMosaicRequest) async throws -> AddImageMosaicResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addImageMosaicWithOptions(request as! AddImageMosaicRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addStoryFilesWithOptions(_ tmpReq: AddStoryFilesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddStoryFilesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddStoryFilesShrinkRequest = AddStoryFilesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.files)) {
            request.filesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.files, "Files", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            body["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filesShrink)) {
            body["Files"] = request.filesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectId)) {
            body["ObjectId"] = request.objectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddStoryFiles",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddStoryFilesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addStoryFiles(_ request: AddStoryFilesRequest) async throws -> AddStoryFilesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addStoryFilesWithOptions(request as! AddStoryFilesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachOSSBucketWithOptions(_ request: AttachOSSBucketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachOSSBucketResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OSSBucket)) {
            query["OSSBucket"] = request.OSSBucket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachOSSBucket",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachOSSBucketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachOSSBucket(_ request: AttachOSSBucketRequest) async throws -> AttachOSSBucketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachOSSBucketWithOptions(request as! AttachOSSBucketRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchDeleteFileMetaWithOptions(_ tmpReq: BatchDeleteFileMetaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchDeleteFileMetaResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchDeleteFileMetaShrinkRequest = BatchDeleteFileMetaShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.URIs)) {
            request.URIsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.URIs, "URIs", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URIsShrink)) {
            query["URIs"] = request.URIsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchDeleteFileMeta",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchDeleteFileMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchDeleteFileMeta(_ request: BatchDeleteFileMetaRequest) async throws -> BatchDeleteFileMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchDeleteFileMetaWithOptions(request as! BatchDeleteFileMetaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetFigureClusterWithOptions(_ tmpReq: BatchGetFigureClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchGetFigureClusterResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchGetFigureClusterShrinkRequest = BatchGetFigureClusterShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.objectIds)) {
            request.objectIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.objectIds, "ObjectIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectIdsShrink)) {
            query["ObjectIds"] = request.objectIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchGetFigureCluster",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchGetFigureClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetFigureCluster(_ request: BatchGetFigureClusterRequest) async throws -> BatchGetFigureClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchGetFigureClusterWithOptions(request as! BatchGetFigureClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetFileMetaWithOptions(_ tmpReq: BatchGetFileMetaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchGetFileMetaResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchGetFileMetaShrinkRequest = BatchGetFileMetaShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.URIs)) {
            request.URIsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.URIs, "URIs", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.withFields)) {
            request.withFieldsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.withFields, "WithFields", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URIsShrink)) {
            query["URIs"] = request.URIsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withFieldsShrink)) {
            query["WithFields"] = request.withFieldsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchGetFileMeta",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchGetFileMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetFileMeta(_ request: BatchGetFileMetaRequest) async throws -> BatchGetFileMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchGetFileMetaWithOptions(request as! BatchGetFileMetaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchIndexFileMetaWithOptions(_ tmpReq: BatchIndexFileMetaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchIndexFileMetaResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchIndexFileMetaShrinkRequest = BatchIndexFileMetaShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.files)) {
            request.filesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.files, "Files", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filesShrink)) {
            query["Files"] = request.filesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchIndexFileMeta",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchIndexFileMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchIndexFileMeta(_ request: BatchIndexFileMetaRequest) async throws -> BatchIndexFileMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchIndexFileMetaWithOptions(request as! BatchIndexFileMetaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchUpdateFileMetaWithOptions(_ tmpReq: BatchUpdateFileMetaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchUpdateFileMetaResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchUpdateFileMetaShrinkRequest = BatchUpdateFileMetaShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.files)) {
            request.filesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.files, "Files", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filesShrink)) {
            query["Files"] = request.filesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchUpdateFileMeta",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchUpdateFileMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchUpdateFileMeta(_ request: BatchUpdateFileMetaRequest) async throws -> BatchUpdateFileMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchUpdateFileMetaWithOptions(request as! BatchUpdateFileMetaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func compareImageFacesWithOptions(_ tmpReq: CompareImageFacesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CompareImageFacesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CompareImageFacesShrinkRequest = CompareImageFacesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.source)) {
            request.sourceShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.source, "Source", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceShrink)) {
            query["Source"] = request.sourceShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CompareImageFaces",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CompareImageFacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func compareImageFaces(_ request: CompareImageFacesRequest) async throws -> CompareImageFacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await compareImageFacesWithOptions(request as! CompareImageFacesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func contextualAnswerWithOptions(_ tmpReq: ContextualAnswerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ContextualAnswerResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ContextualAnswerShrinkRequest = ContextualAnswerShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.files)) {
            request.filesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.files, "Files", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.messages)) {
            request.messagesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.messages, "Messages", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filesShrink)) {
            body["Files"] = request.filesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.messagesShrink)) {
            body["Messages"] = request.messagesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ContextualAnswer",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ContextualAnswerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func contextualAnswer(_ request: ContextualAnswerRequest) async throws -> ContextualAnswerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await contextualAnswerWithOptions(request as! ContextualAnswerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func contextualRetrievalWithOptions(_ tmpReq: ContextualRetrievalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ContextualRetrievalResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ContextualRetrievalShrinkRequest = ContextualRetrievalShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.messages)) {
            request.messagesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.messages, "Messages", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.smartClusterIds)) {
            request.smartClusterIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.smartClusterIds, "SmartClusterIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recallOnly)) {
            query["RecallOnly"] = request.recallOnly!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.messagesShrink)) {
            body["Messages"] = request.messagesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.smartClusterIdsShrink)) {
            body["SmartClusterIds"] = request.smartClusterIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ContextualRetrieval",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ContextualRetrievalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func contextualRetrieval(_ request: ContextualRetrievalRequest) async throws -> ContextualRetrievalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await contextualRetrievalWithOptions(request as! ContextualRetrievalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createArchiveFileInspectionTaskWithOptions(_ tmpReq: CreateArchiveFileInspectionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateArchiveFileInspectionTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateArchiveFileInspectionTaskShrinkRequest = CreateArchiveFileInspectionTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateArchiveFileInspectionTask",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateArchiveFileInspectionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createArchiveFileInspectionTask(_ request: CreateArchiveFileInspectionTaskRequest) async throws -> CreateArchiveFileInspectionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createArchiveFileInspectionTaskWithOptions(request as! CreateArchiveFileInspectionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBatchWithOptions(_ tmpReq: CreateBatchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBatchResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateBatchShrinkRequest = CreateBatchShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.actions)) {
            request.actionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.actions, "Actions", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.input)) {
            request.inputShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.input, "Input", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionsShrink)) {
            body["Actions"] = request.actionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputShrink)) {
            body["Input"] = request.inputShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            body["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceRole)) {
            body["ServiceRole"] = request.serviceRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            body["Tags"] = request.tagsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBatch",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateBatchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBatch(_ request: CreateBatchRequest) async throws -> CreateBatchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createBatchWithOptions(request as! CreateBatchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBindingWithOptions(_ request: CreateBindingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBindingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URI)) {
            query["URI"] = request.URI ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBinding",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateBindingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBinding(_ request: CreateBindingRequest) async throws -> CreateBindingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createBindingWithOptions(request as! CreateBindingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCompressPointCloudTaskWithOptions(_ tmpReq: CreateCompressPointCloudTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCompressPointCloudTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateCompressPointCloudTaskShrinkRequest = CreateCompressPointCloudTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.kdtreeOption)) {
            request.kdtreeOptionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.kdtreeOption, "KdtreeOption", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.octreeOption)) {
            request.octreeOptionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.octreeOption, "OctreeOption", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.pointCloudFields)) {
            request.pointCloudFieldsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.pointCloudFields, "PointCloudFields", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.compressMethod)) {
            query["CompressMethod"] = request.compressMethod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kdtreeOptionShrink)) {
            query["KdtreeOption"] = request.kdtreeOptionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.octreeOptionShrink)) {
            query["OctreeOption"] = request.octreeOptionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pointCloudFieldsShrink)) {
            query["PointCloudFields"] = request.pointCloudFieldsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pointCloudFileFormat)) {
            query["PointCloudFileFormat"] = request.pointCloudFileFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["Tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetURI)) {
            query["TargetURI"] = request.targetURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCompressPointCloudTask",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCompressPointCloudTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCompressPointCloudTask(_ request: CreateCompressPointCloudTaskRequest) async throws -> CreateCompressPointCloudTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCompressPointCloudTaskWithOptions(request as! CreateCompressPointCloudTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCustomizedStoryWithOptions(_ tmpReq: CreateCustomizedStoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCustomizedStoryResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateCustomizedStoryShrinkRequest = CreateCustomizedStoryShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.cover)) {
            request.coverShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.cover, "Cover", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.customLabels)) {
            request.customLabelsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.customLabels, "CustomLabels", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.files)) {
            request.filesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.files, "Files", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.coverShrink)) {
            body["Cover"] = request.coverShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customLabelsShrink)) {
            body["CustomLabels"] = request.customLabelsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            body["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filesShrink)) {
            body["Files"] = request.filesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storyName)) {
            body["StoryName"] = request.storyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storySubType)) {
            body["StorySubType"] = request.storySubType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storyType)) {
            body["StoryType"] = request.storyType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCustomizedStory",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCustomizedStoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCustomizedStory(_ request: CreateCustomizedStoryRequest) async throws -> CreateCustomizedStoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCustomizedStoryWithOptions(request as! CreateCustomizedStoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDatasetWithOptions(_ tmpReq: CreateDatasetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDatasetResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDatasetShrinkRequest = CreateDatasetShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.workflowParameters)) {
            request.workflowParametersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.workflowParameters, "WorkflowParameters", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetMaxBindCount)) {
            query["DatasetMaxBindCount"] = request.datasetMaxBindCount!;
        }
        if (!TeaUtils.Client.isUnset(request.datasetMaxEntityCount)) {
            query["DatasetMaxEntityCount"] = request.datasetMaxEntityCount!;
        }
        if (!TeaUtils.Client.isUnset(request.datasetMaxFileCount)) {
            query["DatasetMaxFileCount"] = request.datasetMaxFileCount!;
        }
        if (!TeaUtils.Client.isUnset(request.datasetMaxRelationCount)) {
            query["DatasetMaxRelationCount"] = request.datasetMaxRelationCount!;
        }
        if (!TeaUtils.Client.isUnset(request.datasetMaxTotalFileSize)) {
            query["DatasetMaxTotalFileSize"] = request.datasetMaxTotalFileSize!;
        }
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workflowParametersShrink)) {
            query["WorkflowParameters"] = request.workflowParametersShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDataset",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDataset(_ request: CreateDatasetRequest) async throws -> CreateDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDatasetWithOptions(request as! CreateDatasetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDecodeBlindWatermarkTaskWithOptions(_ tmpReq: CreateDecodeBlindWatermarkTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDecodeBlindWatermarkTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDecodeBlindWatermarkTaskShrinkRequest = CreateDecodeBlindWatermarkTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageQuality)) {
            query["ImageQuality"] = request.imageQuality!;
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            query["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalImageURI)) {
            query["OriginalImageURI"] = request.originalImageURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.strengthLevel)) {
            query["StrengthLevel"] = request.strengthLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetURI)) {
            query["TargetURI"] = request.targetURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watermarkType)) {
            query["WatermarkType"] = request.watermarkType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDecodeBlindWatermarkTask",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDecodeBlindWatermarkTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDecodeBlindWatermarkTask(_ request: CreateDecodeBlindWatermarkTaskRequest) async throws -> CreateDecodeBlindWatermarkTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDecodeBlindWatermarkTaskWithOptions(request as! CreateDecodeBlindWatermarkTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFacesSearchingTaskWithOptions(_ tmpReq: CreateFacesSearchingTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFacesSearchingTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateFacesSearchingTaskShrinkRequest = CreateFacesSearchingTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sources)) {
            request.sourcesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sources, "Sources", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResult)) {
            query["MaxResult"] = request.maxResult!;
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourcesShrink)) {
            query["Sources"] = request.sourcesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFacesSearchingTask",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFacesSearchingTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFacesSearchingTask(_ request: CreateFacesSearchingTaskRequest) async throws -> CreateFacesSearchingTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createFacesSearchingTaskWithOptions(request as! CreateFacesSearchingTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFigureClusteringTaskWithOptions(_ tmpReq: CreateFigureClusteringTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFigureClusteringTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateFigureClusteringTaskShrinkRequest = CreateFigureClusteringTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["Tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFigureClusteringTask",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFigureClusteringTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFigureClusteringTask(_ request: CreateFigureClusteringTaskRequest) async throws -> CreateFigureClusteringTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createFigureClusteringTaskWithOptions(request as! CreateFigureClusteringTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFigureClustersMergingTaskWithOptions(_ tmpReq: CreateFigureClustersMergingTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFigureClustersMergingTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateFigureClustersMergingTaskShrinkRequest = CreateFigureClustersMergingTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.froms)) {
            request.fromsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.froms, "Froms", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.from)) {
            query["From"] = request.from ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fromsShrink)) {
            query["Froms"] = request.fromsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["Tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.to)) {
            query["To"] = request.to ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFigureClustersMergingTask",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFigureClustersMergingTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFigureClustersMergingTask(_ request: CreateFigureClustersMergingTaskRequest) async throws -> CreateFigureClustersMergingTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createFigureClustersMergingTaskWithOptions(request as! CreateFigureClustersMergingTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFileCompressionTaskWithOptions(_ tmpReq: CreateFileCompressionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFileCompressionTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateFileCompressionTaskShrinkRequest = CreateFileCompressionTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sources)) {
            request.sourcesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sources, "Sources", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.compressedFormat)) {
            query["CompressedFormat"] = request.compressedFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceManifestURI)) {
            query["SourceManifestURI"] = request.sourceManifestURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourcesShrink)) {
            query["Sources"] = request.sourcesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetURI)) {
            query["TargetURI"] = request.targetURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFileCompressionTask",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFileCompressionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFileCompressionTask(_ request: CreateFileCompressionTaskRequest) async throws -> CreateFileCompressionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createFileCompressionTaskWithOptions(request as! CreateFileCompressionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFileUncompressionTaskWithOptions(_ tmpReq: CreateFileUncompressionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFileUncompressionTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateFileUncompressionTaskShrinkRequest = CreateFileUncompressionTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.selectedFiles)) {
            request.selectedFilesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.selectedFiles, "SelectedFiles", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.selectedFilesShrink)) {
            query["SelectedFiles"] = request.selectedFilesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetURI)) {
            query["TargetURI"] = request.targetURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFileUncompressionTask",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFileUncompressionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFileUncompressionTask(_ request: CreateFileUncompressionTaskRequest) async throws -> CreateFileUncompressionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createFileUncompressionTaskWithOptions(request as! CreateFileUncompressionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createImageModerationTaskWithOptions(_ tmpReq: CreateImageModerationTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateImageModerationTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateImageModerationTaskShrinkRequest = CreateImageModerationTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.scenes)) {
            request.scenesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.scenes, "Scenes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.interval)) {
            query["Interval"] = request.interval!;
        }
        if (!TeaUtils.Client.isUnset(request.maxFrames)) {
            query["MaxFrames"] = request.maxFrames!;
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scenesShrink)) {
            query["Scenes"] = request.scenesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["Tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateImageModerationTask",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateImageModerationTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createImageModerationTask(_ request: CreateImageModerationTaskRequest) async throws -> CreateImageModerationTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createImageModerationTaskWithOptions(request as! CreateImageModerationTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createImageSplicingTaskWithOptions(_ tmpReq: CreateImageSplicingTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateImageSplicingTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateImageSplicingTaskShrinkRequest = CreateImageSplicingTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sources)) {
            request.sourcesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sources, "Sources", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.align)) {
            query["Align"] = request.align!;
        }
        if (!TeaUtils.Client.isUnset(request.backgroundColor)) {
            query["BackgroundColor"] = request.backgroundColor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.direction)) {
            query["Direction"] = request.direction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageFormat)) {
            query["ImageFormat"] = request.imageFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.margin)) {
            query["Margin"] = request.margin!;
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.padding)) {
            query["Padding"] = request.padding!;
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quality)) {
            query["Quality"] = request.quality!;
        }
        if (!TeaUtils.Client.isUnset(request.scaleType)) {
            query["ScaleType"] = request.scaleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourcesShrink)) {
            query["Sources"] = request.sourcesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["Tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetURI)) {
            query["TargetURI"] = request.targetURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateImageSplicingTask",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateImageSplicingTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createImageSplicingTask(_ request: CreateImageSplicingTaskRequest) async throws -> CreateImageSplicingTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createImageSplicingTaskWithOptions(request as! CreateImageSplicingTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createImageToPDFTaskWithOptions(_ tmpReq: CreateImageToPDFTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateImageToPDFTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateImageToPDFTaskShrinkRequest = CreateImageToPDFTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sources)) {
            request.sourcesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sources, "Sources", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourcesShrink)) {
            query["Sources"] = request.sourcesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["Tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetURI)) {
            query["TargetURI"] = request.targetURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateImageToPDFTask",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateImageToPDFTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createImageToPDFTask(_ request: CreateImageToPDFTaskRequest) async throws -> CreateImageToPDFTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createImageToPDFTaskWithOptions(request as! CreateImageToPDFTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLocationDateClusteringTaskWithOptions(_ tmpReq: CreateLocationDateClusteringTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateLocationDateClusteringTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateLocationDateClusteringTaskShrinkRequest = CreateLocationDateClusteringTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dateOptions)) {
            request.dateOptionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dateOptions, "DateOptions", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.locationOptions)) {
            request.locationOptionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.locationOptions, "LocationOptions", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dateOptionsShrink)) {
            query["DateOptions"] = request.dateOptionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.locationOptionsShrink)) {
            query["LocationOptions"] = request.locationOptionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["Tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateLocationDateClusteringTask",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateLocationDateClusteringTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createLocationDateClusteringTask(_ request: CreateLocationDateClusteringTaskRequest) async throws -> CreateLocationDateClusteringTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createLocationDateClusteringTaskWithOptions(request as! CreateLocationDateClusteringTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMediaConvertTaskWithOptions(_ tmpReq: CreateMediaConvertTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMediaConvertTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateMediaConvertTaskShrinkRequest = CreateMediaConvertTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sources)) {
            request.sourcesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sources, "Sources", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.targets)) {
            request.targetsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.targets, "Targets", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alignmentIndex)) {
            query["AlignmentIndex"] = request.alignmentIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourcesShrink)) {
            query["Sources"] = request.sourcesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["Tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetsShrink)) {
            query["Targets"] = request.targetsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMediaConvertTask",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMediaConvertTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMediaConvertTask(_ request: CreateMediaConvertTaskRequest) async throws -> CreateMediaConvertTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMediaConvertTaskWithOptions(request as! CreateMediaConvertTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOfficeConversionTaskWithOptions(_ tmpReq: CreateOfficeConversionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOfficeConversionTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateOfficeConversionTaskShrinkRequest = CreateOfficeConversionTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sources)) {
            request.sourcesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sources, "Sources", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.trimPolicy)) {
            request.trimPolicyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.trimPolicy, "TrimPolicy", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endPage)) {
            query["EndPage"] = request.endPage!;
        }
        if (!TeaUtils.Client.isUnset(request.firstPage)) {
            query["FirstPage"] = request.firstPage!;
        }
        if (!TeaUtils.Client.isUnset(request.fitToHeight)) {
            query["FitToHeight"] = request.fitToHeight!;
        }
        if (!TeaUtils.Client.isUnset(request.fitToWidth)) {
            query["FitToWidth"] = request.fitToWidth!;
        }
        if (!TeaUtils.Client.isUnset(request.holdLineFeed)) {
            query["HoldLineFeed"] = request.holdLineFeed!;
        }
        if (!TeaUtils.Client.isUnset(request.imageDPI)) {
            query["ImageDPI"] = request.imageDPI!;
        }
        if (!TeaUtils.Client.isUnset(request.longPicture)) {
            query["LongPicture"] = request.longPicture!;
        }
        if (!TeaUtils.Client.isUnset(request.longText)) {
            query["LongText"] = request.longText!;
        }
        if (!TeaUtils.Client.isUnset(request.maxSheetColumn)) {
            query["MaxSheetColumn"] = request.maxSheetColumn!;
        }
        if (!TeaUtils.Client.isUnset(request.maxSheetRow)) {
            query["MaxSheetRow"] = request.maxSheetRow!;
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pages)) {
            query["Pages"] = request.pages ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paperHorizontal)) {
            query["PaperHorizontal"] = request.paperHorizontal!;
        }
        if (!TeaUtils.Client.isUnset(request.paperSize)) {
            query["PaperSize"] = request.paperSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quality)) {
            query["Quality"] = request.quality!;
        }
        if (!TeaUtils.Client.isUnset(request.scalePercentage)) {
            query["ScalePercentage"] = request.scalePercentage!;
        }
        if (!TeaUtils.Client.isUnset(request.sheetCount)) {
            query["SheetCount"] = request.sheetCount!;
        }
        if (!TeaUtils.Client.isUnset(request.sheetIndex)) {
            query["SheetIndex"] = request.sheetIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.showComments)) {
            query["ShowComments"] = request.showComments!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startPage)) {
            query["StartPage"] = request.startPage!;
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["Tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetType)) {
            query["TargetType"] = request.targetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetURI)) {
            query["TargetURI"] = request.targetURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetURIPrefix)) {
            query["TargetURIPrefix"] = request.targetURIPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trimPolicyShrink)) {
            query["TrimPolicy"] = request.trimPolicyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sourcesShrink)) {
            body["Sources"] = request.sourcesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOfficeConversionTask",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOfficeConversionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOfficeConversionTask(_ request: CreateOfficeConversionTaskRequest) async throws -> CreateOfficeConversionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createOfficeConversionTaskWithOptions(request as! CreateOfficeConversionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProjectWithOptions(_ tmpReq: CreateProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProjectResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateProjectShrinkRequest = CreateProjectShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetMaxBindCount)) {
            query["DatasetMaxBindCount"] = request.datasetMaxBindCount!;
        }
        if (!TeaUtils.Client.isUnset(request.datasetMaxEntityCount)) {
            query["DatasetMaxEntityCount"] = request.datasetMaxEntityCount!;
        }
        if (!TeaUtils.Client.isUnset(request.datasetMaxFileCount)) {
            query["DatasetMaxFileCount"] = request.datasetMaxFileCount!;
        }
        if (!TeaUtils.Client.isUnset(request.datasetMaxRelationCount)) {
            query["DatasetMaxRelationCount"] = request.datasetMaxRelationCount!;
        }
        if (!TeaUtils.Client.isUnset(request.datasetMaxTotalFileSize)) {
            query["DatasetMaxTotalFileSize"] = request.datasetMaxTotalFileSize!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectMaxDatasetCount)) {
            query["ProjectMaxDatasetCount"] = request.projectMaxDatasetCount!;
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceRole)) {
            query["ServiceRole"] = request.serviceRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProject",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProject(_ request: CreateProjectRequest) async throws -> CreateProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createProjectWithOptions(request as! CreateProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSimilarImageClusteringTaskWithOptions(_ tmpReq: CreateSimilarImageClusteringTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSimilarImageClusteringTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateSimilarImageClusteringTaskShrinkRequest = CreateSimilarImageClusteringTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["Tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSimilarImageClusteringTask",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSimilarImageClusteringTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSimilarImageClusteringTask(_ request: CreateSimilarImageClusteringTaskRequest) async throws -> CreateSimilarImageClusteringTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSimilarImageClusteringTaskWithOptions(request as! CreateSimilarImageClusteringTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStoryWithOptions(_ tmpReq: CreateStoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateStoryResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateStoryShrinkRequest = CreateStoryShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.address)) {
            request.addressShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.address, "Address", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.customLabels)) {
            request.customLabelsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.customLabels, "CustomLabels", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["Tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addressShrink)) {
            body["Address"] = request.addressShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customId)) {
            body["CustomId"] = request.customId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customLabelsShrink)) {
            body["CustomLabels"] = request.customLabelsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            body["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxFileCount)) {
            body["MaxFileCount"] = request.maxFileCount!;
        }
        if (!TeaUtils.Client.isUnset(request.minFileCount)) {
            body["MinFileCount"] = request.minFileCount!;
        }
        if (!TeaUtils.Client.isUnset(request.notifyTopicName)) {
            body["NotifyTopicName"] = request.notifyTopicName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectId)) {
            body["ObjectId"] = request.objectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storyEndTime)) {
            body["StoryEndTime"] = request.storyEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storyName)) {
            body["StoryName"] = request.storyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storyStartTime)) {
            body["StoryStartTime"] = request.storyStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storySubType)) {
            body["StorySubType"] = request.storySubType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storyType)) {
            body["StoryType"] = request.storyType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateStory",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateStoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createStory(_ request: CreateStoryRequest) async throws -> CreateStoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createStoryWithOptions(request as! CreateStoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTriggerWithOptions(_ tmpReq: CreateTriggerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTriggerResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateTriggerShrinkRequest = CreateTriggerShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.actions)) {
            request.actionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.actions, "Actions", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.input)) {
            request.inputShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.input, "Input", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionsShrink)) {
            body["Actions"] = request.actionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputShrink)) {
            body["Input"] = request.inputShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            body["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceRole)) {
            body["ServiceRole"] = request.serviceRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            body["Tags"] = request.tagsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTrigger",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTriggerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTrigger(_ request: CreateTriggerRequest) async throws -> CreateTriggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTriggerWithOptions(request as! CreateTriggerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVideoLabelClassificationTaskWithOptions(_ tmpReq: CreateVideoLabelClassificationTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVideoLabelClassificationTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateVideoLabelClassificationTaskShrinkRequest = CreateVideoLabelClassificationTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["Tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVideoLabelClassificationTask",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVideoLabelClassificationTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVideoLabelClassificationTask(_ request: CreateVideoLabelClassificationTaskRequest) async throws -> CreateVideoLabelClassificationTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createVideoLabelClassificationTaskWithOptions(request as! CreateVideoLabelClassificationTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVideoModerationTaskWithOptions(_ tmpReq: CreateVideoModerationTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVideoModerationTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateVideoModerationTaskShrinkRequest = CreateVideoModerationTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.scenes)) {
            request.scenesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.scenes, "Scenes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.interval)) {
            query["Interval"] = request.interval!;
        }
        if (!TeaUtils.Client.isUnset(request.maxFrames)) {
            query["MaxFrames"] = request.maxFrames!;
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scenesShrink)) {
            query["Scenes"] = request.scenesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["Tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVideoModerationTask",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVideoModerationTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVideoModerationTask(_ request: CreateVideoModerationTaskRequest) async throws -> CreateVideoModerationTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createVideoModerationTaskWithOptions(request as! CreateVideoModerationTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBatchWithOptions(_ request: DeleteBatchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBatchResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBatch",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBatchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBatch(_ request: DeleteBatchRequest) async throws -> DeleteBatchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteBatchWithOptions(request as! DeleteBatchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBindingWithOptions(_ request: DeleteBindingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBindingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URI)) {
            query["URI"] = request.URI ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBinding",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBindingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBinding(_ request: DeleteBindingRequest) async throws -> DeleteBindingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteBindingWithOptions(request as! DeleteBindingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDatasetWithOptions(_ request: DeleteDatasetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDatasetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDataset",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDataset(_ request: DeleteDatasetRequest) async throws -> DeleteDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDatasetWithOptions(request as! DeleteDatasetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFileMetaWithOptions(_ request: DeleteFileMetaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFileMetaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URI)) {
            query["URI"] = request.URI ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFileMeta",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFileMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFileMeta(_ request: DeleteFileMetaRequest) async throws -> DeleteFileMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteFileMetaWithOptions(request as! DeleteFileMetaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLocationDateClusterWithOptions(_ request: DeleteLocationDateClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteLocationDateClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.objectId)) {
            body["ObjectId"] = request.objectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteLocationDateCluster",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteLocationDateClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteLocationDateCluster(_ request: DeleteLocationDateClusterRequest) async throws -> DeleteLocationDateClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteLocationDateClusterWithOptions(request as! DeleteLocationDateClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProjectWithOptions(_ request: DeleteProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProject",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProject(_ request: DeleteProjectRequest) async throws -> DeleteProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteProjectWithOptions(request as! DeleteProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStoryWithOptions(_ request: DeleteStoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteStoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectId)) {
            query["ObjectId"] = request.objectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteStory",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteStoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteStory(_ request: DeleteStoryRequest) async throws -> DeleteStoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteStoryWithOptions(request as! DeleteStoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTriggerWithOptions(_ request: DeleteTriggerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTriggerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTrigger",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTriggerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTrigger(_ request: DeleteTriggerRequest) async throws -> DeleteTriggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteTriggerWithOptions(request as! DeleteTriggerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachOSSBucketWithOptions(_ request: DetachOSSBucketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachOSSBucketResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.OSSBucket)) {
            query["OSSBucket"] = request.OSSBucket ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachOSSBucket",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachOSSBucketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachOSSBucket(_ request: DetachOSSBucketRequest) async throws -> DetachOSSBucketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachOSSBucketWithOptions(request as! DetachOSSBucketRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageBodiesWithOptions(_ tmpReq: DetectImageBodiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectImageBodiesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DetectImageBodiesShrinkRequest = DetectImageBodiesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sensitivity)) {
            query["Sensitivity"] = request.sensitivity!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectImageBodies",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectImageBodiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageBodies(_ request: DetectImageBodiesRequest) async throws -> DetectImageBodiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectImageBodiesWithOptions(request as! DetectImageBodiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageCarsWithOptions(_ tmpReq: DetectImageCarsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectImageCarsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DetectImageCarsShrinkRequest = DetectImageCarsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectImageCars",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectImageCarsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageCars(_ request: DetectImageCarsRequest) async throws -> DetectImageCarsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectImageCarsWithOptions(request as! DetectImageCarsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageCodesWithOptions(_ tmpReq: DetectImageCodesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectImageCodesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DetectImageCodesShrinkRequest = DetectImageCodesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectImageCodes",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectImageCodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageCodes(_ request: DetectImageCodesRequest) async throws -> DetectImageCodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectImageCodesWithOptions(request as! DetectImageCodesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageCroppingWithOptions(_ tmpReq: DetectImageCroppingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectImageCroppingResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DetectImageCroppingShrinkRequest = DetectImageCroppingShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aspectRatios)) {
            query["AspectRatios"] = request.aspectRatios ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectImageCropping",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectImageCroppingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageCropping(_ request: DetectImageCroppingRequest) async throws -> DetectImageCroppingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectImageCroppingWithOptions(request as! DetectImageCroppingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageFacesWithOptions(_ tmpReq: DetectImageFacesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectImageFacesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DetectImageFacesShrinkRequest = DetectImageFacesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectImageFaces",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectImageFacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageFaces(_ request: DetectImageFacesRequest) async throws -> DetectImageFacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectImageFacesWithOptions(request as! DetectImageFacesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageLabelsWithOptions(_ tmpReq: DetectImageLabelsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectImageLabelsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DetectImageLabelsShrinkRequest = DetectImageLabelsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.threshold)) {
            query["Threshold"] = request.threshold!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectImageLabels",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectImageLabelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageLabels(_ request: DetectImageLabelsRequest) async throws -> DetectImageLabelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectImageLabelsWithOptions(request as! DetectImageLabelsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageScoreWithOptions(_ tmpReq: DetectImageScoreRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectImageScoreResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DetectImageScoreShrinkRequest = DetectImageScoreShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectImageScore",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectImageScoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageScore(_ request: DetectImageScoreRequest) async throws -> DetectImageScoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectImageScoreWithOptions(request as! DetectImageScoreRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageTextsWithOptions(_ tmpReq: DetectImageTextsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectImageTextsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DetectImageTextsShrinkRequest = DetectImageTextsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectImageTexts",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectImageTextsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageTexts(_ request: DetectImageTextsRequest) async throws -> DetectImageTextsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectImageTextsWithOptions(request as! DetectImageTextsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectMediaMetaWithOptions(_ tmpReq: DetectMediaMetaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectMediaMetaResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DetectMediaMetaShrinkRequest = DetectMediaMetaShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectMediaMeta",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectMediaMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectMediaMeta(_ request: DetectMediaMetaRequest) async throws -> DetectMediaMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectMediaMetaWithOptions(request as! DetectMediaMetaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectTextAnomalyWithOptions(_ request: DetectTextAnomalyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectTextAnomalyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            query["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectTextAnomaly",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectTextAnomalyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectTextAnomaly(_ request: DetectTextAnomalyRequest) async throws -> DetectTextAnomalyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectTextAnomalyWithOptions(request as! DetectTextAnomalyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func encodeBlindWatermarkWithOptions(_ request: EncodeBlindWatermarkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EncodeBlindWatermarkResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            query["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageQuality)) {
            query["ImageQuality"] = request.imageQuality!;
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.strengthLevel)) {
            query["StrengthLevel"] = request.strengthLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetURI)) {
            query["TargetURI"] = request.targetURI ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EncodeBlindWatermark",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EncodeBlindWatermarkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func encodeBlindWatermark(_ request: EncodeBlindWatermarkRequest) async throws -> EncodeBlindWatermarkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await encodeBlindWatermarkWithOptions(request as! EncodeBlindWatermarkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func extractDocumentTextWithOptions(_ tmpReq: ExtractDocumentTextRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExtractDocumentTextResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ExtractDocumentTextShrinkRequest = ExtractDocumentTextShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExtractDocumentText",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExtractDocumentTextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func extractDocumentText(_ request: ExtractDocumentTextRequest) async throws -> ExtractDocumentTextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await extractDocumentTextWithOptions(request as! ExtractDocumentTextRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func fuzzyQueryWithOptions(_ tmpReq: FuzzyQueryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FuzzyQueryResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FuzzyQueryShrinkRequest = FuzzyQueryShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.withFields)) {
            request.withFieldsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.withFields, "WithFields", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
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
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["Sort"] = request.sort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withFieldsShrink)) {
            query["WithFields"] = request.withFieldsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FuzzyQuery",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FuzzyQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func fuzzyQuery(_ request: FuzzyQueryRequest) async throws -> FuzzyQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await fuzzyQueryWithOptions(request as! FuzzyQueryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateVideoPlaylistWithOptions(_ tmpReq: GenerateVideoPlaylistRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateVideoPlaylistResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GenerateVideoPlaylistShrinkRequest = GenerateVideoPlaylistShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sourceSubtitles)) {
            request.sourceSubtitlesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sourceSubtitles, "SourceSubtitles", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.targets)) {
            request.targetsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.targets, "Targets", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.masterURI)) {
            query["MasterURI"] = request.masterURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.overwritePolicy)) {
            query["OverwritePolicy"] = request.overwritePolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceDuration)) {
            query["SourceDuration"] = request.sourceDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceStartTime)) {
            query["SourceStartTime"] = request.sourceStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceSubtitlesShrink)) {
            query["SourceSubtitles"] = request.sourceSubtitlesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["Tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetsShrink)) {
            query["Targets"] = request.targetsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateVideoPlaylist",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateVideoPlaylistResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateVideoPlaylist(_ request: GenerateVideoPlaylistRequest) async throws -> GenerateVideoPlaylistResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateVideoPlaylistWithOptions(request as! GenerateVideoPlaylistRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateWebofficeTokenWithOptions(_ tmpReq: GenerateWebofficeTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateWebofficeTokenResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GenerateWebofficeTokenShrinkRequest = GenerateWebofficeTokenShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.permission)) {
            request.permissionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.permission, "Permission", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.user)) {
            request.userShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.user, "User", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.watermark)) {
            request.watermarkShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.watermark, "Watermark", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cachePreview)) {
            query["CachePreview"] = request.cachePreview!;
        }
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalUploaded)) {
            query["ExternalUploaded"] = request.externalUploaded!;
        }
        if (!TeaUtils.Client.isUnset(request.filename)) {
            query["Filename"] = request.filename ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hidecmb)) {
            query["Hidecmb"] = request.hidecmb!;
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyTopicName)) {
            query["NotifyTopicName"] = request.notifyTopicName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.permissionShrink)) {
            query["Permission"] = request.permissionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.previewPages)) {
            query["PreviewPages"] = request.previewPages!;
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.referer)) {
            query["Referer"] = request.referer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userShrink)) {
            query["User"] = request.userShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watermarkShrink)) {
            query["Watermark"] = request.watermarkShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateWebofficeToken",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateWebofficeTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateWebofficeToken(_ request: GenerateWebofficeTokenRequest) async throws -> GenerateWebofficeTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateWebofficeTokenWithOptions(request as! GenerateWebofficeTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBatchWithOptions(_ request: GetBatchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBatchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBatch",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBatchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBatch(_ request: GetBatchRequest) async throws -> GetBatchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBatchWithOptions(request as! GetBatchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBindingWithOptions(_ request: GetBindingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBindingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URI)) {
            query["URI"] = request.URI ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBinding",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBindingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBinding(_ request: GetBindingRequest) async throws -> GetBindingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBindingWithOptions(request as! GetBindingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDRMLicenseWithOptions(_ request: GetDRMLicenseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDRMLicenseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyId)) {
            query["KeyId"] = request.keyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyEndpoint)) {
            query["NotifyEndpoint"] = request.notifyEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyTopicName)) {
            query["NotifyTopicName"] = request.notifyTopicName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protectionSystem)) {
            query["ProtectionSystem"] = request.protectionSystem ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDRMLicense",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDRMLicenseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDRMLicense(_ request: GetDRMLicenseRequest) async throws -> GetDRMLicenseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDRMLicenseWithOptions(request as! GetDRMLicenseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatasetWithOptions(_ request: GetDatasetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDatasetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withStatistics)) {
            query["WithStatistics"] = request.withStatistics!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDataset",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDataset(_ request: GetDatasetRequest) async throws -> GetDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDatasetWithOptions(request as! GetDatasetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDecodeBlindWatermarkResultWithOptions(_ request: GetDecodeBlindWatermarkResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDecodeBlindWatermarkResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDecodeBlindWatermarkResult",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDecodeBlindWatermarkResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDecodeBlindWatermarkResult(_ request: GetDecodeBlindWatermarkResultRequest) async throws -> GetDecodeBlindWatermarkResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDecodeBlindWatermarkResultWithOptions(request as! GetDecodeBlindWatermarkResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFigureClusterWithOptions(_ request: GetFigureClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFigureClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectId)) {
            query["ObjectId"] = request.objectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFigureCluster",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFigureClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFigureCluster(_ request: GetFigureClusterRequest) async throws -> GetFigureClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFigureClusterWithOptions(request as! GetFigureClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFileMetaWithOptions(_ tmpReq: GetFileMetaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFileMetaResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetFileMetaShrinkRequest = GetFileMetaShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.withFields)) {
            request.withFieldsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.withFields, "WithFields", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.URI)) {
            query["URI"] = request.URI ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withFieldsShrink)) {
            query["WithFields"] = request.withFieldsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFileMeta",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFileMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFileMeta(_ request: GetFileMetaRequest) async throws -> GetFileMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFileMetaWithOptions(request as! GetFileMetaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageModerationResultWithOptions(_ request: GetImageModerationResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetImageModerationResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetImageModerationResult",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetImageModerationResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageModerationResult(_ request: GetImageModerationResultRequest) async throws -> GetImageModerationResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getImageModerationResultWithOptions(request as! GetImageModerationResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOSSBucketAttachmentWithOptions(_ request: GetOSSBucketAttachmentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOSSBucketAttachmentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.OSSBucket)) {
            query["OSSBucket"] = request.OSSBucket ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOSSBucketAttachment",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOSSBucketAttachmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOSSBucketAttachment(_ request: GetOSSBucketAttachmentRequest) async throws -> GetOSSBucketAttachmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOSSBucketAttachmentWithOptions(request as! GetOSSBucketAttachmentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectWithOptions(_ request: GetProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withStatistics)) {
            query["WithStatistics"] = request.withStatistics!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProject",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProject(_ request: GetProjectRequest) async throws -> GetProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getProjectWithOptions(request as! GetProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStoryWithOptions(_ request: GetStoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetStoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectId)) {
            query["ObjectId"] = request.objectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetStory",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetStoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getStory(_ request: GetStoryRequest) async throws -> GetStoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getStoryWithOptions(request as! GetStoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTaskWithOptions(_ request: GetTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestDefinition)) {
            query["RequestDefinition"] = request.requestDefinition!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTask",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTask(_ request: GetTaskRequest) async throws -> GetTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTaskWithOptions(request as! GetTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTriggerWithOptions(_ request: GetTriggerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTriggerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTrigger",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTriggerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrigger(_ request: GetTriggerRequest) async throws -> GetTriggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTriggerWithOptions(request as! GetTriggerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoLabelClassificationResultWithOptions(_ request: GetVideoLabelClassificationResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVideoLabelClassificationResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVideoLabelClassificationResult",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVideoLabelClassificationResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoLabelClassificationResult(_ request: GetVideoLabelClassificationResultRequest) async throws -> GetVideoLabelClassificationResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getVideoLabelClassificationResultWithOptions(request as! GetVideoLabelClassificationResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoModerationResultWithOptions(_ request: GetVideoModerationResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVideoModerationResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVideoModerationResult",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVideoModerationResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoModerationResult(_ request: GetVideoModerationResultRequest) async throws -> GetVideoModerationResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getVideoModerationResultWithOptions(request as! GetVideoModerationResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func indexFileMetaWithOptions(_ tmpReq: IndexFileMetaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> IndexFileMetaResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: IndexFileMetaShrinkRequest = IndexFileMetaShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.file)) {
            request.fileShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.file, "File", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.notification)) {
            request.notificationShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.notification, "Notification", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileShrink)) {
            query["File"] = request.fileShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notificationShrink)) {
            query["Notification"] = request.notificationShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IndexFileMeta",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IndexFileMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func indexFileMeta(_ request: IndexFileMetaRequest) async throws -> IndexFileMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await indexFileMetaWithOptions(request as! IndexFileMetaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAttachedOSSBucketsWithOptions(_ request: ListAttachedOSSBucketsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAttachedOSSBucketsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAttachedOSSBuckets",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAttachedOSSBucketsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAttachedOSSBuckets(_ request: ListAttachedOSSBucketsRequest) async throws -> ListAttachedOSSBucketsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAttachedOSSBucketsWithOptions(request as! ListAttachedOSSBucketsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBatchesWithOptions(_ request: ListBatchesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListBatchesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["Sort"] = request.sort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["State"] = request.state ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagSelector)) {
            query["TagSelector"] = request.tagSelector ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListBatches",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListBatchesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBatches(_ request: ListBatchesRequest) async throws -> ListBatchesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listBatchesWithOptions(request as! ListBatchesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBindingsWithOptions(_ request: ListBindingsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListBindingsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListBindings",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListBindingsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBindings(_ request: ListBindingsRequest) async throws -> ListBindingsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listBindingsWithOptions(request as! ListBindingsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatasetsWithOptions(_ request: ListDatasetsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDatasetsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["Prefix"] = request.prefix_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDatasets",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDatasetsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDatasets(_ request: ListDatasetsRequest) async throws -> ListDatasetsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDatasetsWithOptions(request as! ListDatasetsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectsWithOptions(_ tmpReq: ListProjectsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProjectsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListProjectsShrinkRequest = ListProjectsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prefix_)) {
            query["Prefix"] = request.prefix_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProjects",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjects(_ request: ListProjectsRequest) async throws -> ListProjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listProjectsWithOptions(request as! ListProjectsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRegionsWithOptions(_ request: ListRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            query["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRegions",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRegions(_ request: ListRegionsRequest) async throws -> ListRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRegionsWithOptions(request as! ListRegionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTasksWithOptions(_ tmpReq: ListTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTasksResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListTasksShrinkRequest = ListTasksShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.endTimeRange)) {
            request.endTimeRangeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.endTimeRange, "EndTimeRange", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.startTimeRange)) {
            request.startTimeRangeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.startTimeRange, "StartTimeRange", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.taskTypes)) {
            request.taskTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.taskTypes, "TaskTypes", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTimeRangeShrink)) {
            query["EndTimeRange"] = request.endTimeRangeShrink ?? "";
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
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestDefinition)) {
            query["RequestDefinition"] = request.requestDefinition!;
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["Sort"] = request.sort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTimeRangeShrink)) {
            query["StartTimeRange"] = request.startTimeRangeShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagSelector)) {
            query["TagSelector"] = request.tagSelector ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskTypesShrink)) {
            query["TaskTypes"] = request.taskTypesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTasks",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTasks(_ request: ListTasksRequest) async throws -> ListTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTasksWithOptions(request as! ListTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTriggersWithOptions(_ request: ListTriggersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTriggersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["Sort"] = request.sort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["State"] = request.state ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagSelector)) {
            query["TagSelector"] = request.tagSelector ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTriggers",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTriggersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTriggers(_ request: ListTriggersRequest) async throws -> ListTriggersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTriggersWithOptions(request as! ListTriggersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFigureClustersWithOptions(_ tmpReq: QueryFigureClustersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryFigureClustersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryFigureClustersShrinkRequest = QueryFigureClustersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.createTimeRange)) {
            request.createTimeRangeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createTimeRange, "CreateTimeRange", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.updateTimeRange)) {
            request.updateTimeRangeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateTimeRange, "UpdateTimeRange", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createTimeRangeShrink)) {
            query["CreateTimeRange"] = request.createTimeRangeShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customLabels)) {
            query["CustomLabels"] = request.customLabels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
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
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["Sort"] = request.sort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateTimeRangeShrink)) {
            query["UpdateTimeRange"] = request.updateTimeRangeShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withTotalCount)) {
            query["WithTotalCount"] = request.withTotalCount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryFigureClusters",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryFigureClustersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFigureClusters(_ request: QueryFigureClustersRequest) async throws -> QueryFigureClustersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryFigureClustersWithOptions(request as! QueryFigureClustersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLocationDateClustersWithOptions(_ tmpReq: QueryLocationDateClustersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryLocationDateClustersResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryLocationDateClustersShrinkRequest = QueryLocationDateClustersShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.address)) {
            request.addressShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.address, "Address", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.createTimeRange)) {
            request.createTimeRangeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createTimeRange, "CreateTimeRange", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.locationDateClusterEndTimeRange)) {
            request.locationDateClusterEndTimeRangeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.locationDateClusterEndTimeRange, "LocationDateClusterEndTimeRange", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.locationDateClusterLevels)) {
            request.locationDateClusterLevelsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.locationDateClusterLevels, "LocationDateClusterLevels", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.locationDateClusterStartTimeRange)) {
            request.locationDateClusterStartTimeRangeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.locationDateClusterStartTimeRange, "LocationDateClusterStartTimeRange", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.updateTimeRange)) {
            request.updateTimeRangeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.updateTimeRange, "UpdateTimeRange", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addressShrink)) {
            query["Address"] = request.addressShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTimeRangeShrink)) {
            query["CreateTimeRange"] = request.createTimeRangeShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customLabels)) {
            query["CustomLabels"] = request.customLabels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.locationDateClusterEndTimeRangeShrink)) {
            query["LocationDateClusterEndTimeRange"] = request.locationDateClusterEndTimeRangeShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.locationDateClusterLevelsShrink)) {
            query["LocationDateClusterLevels"] = request.locationDateClusterLevelsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.locationDateClusterStartTimeRangeShrink)) {
            query["LocationDateClusterStartTimeRange"] = request.locationDateClusterStartTimeRangeShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectId)) {
            query["ObjectId"] = request.objectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["Sort"] = request.sort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["Title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateTimeRangeShrink)) {
            query["UpdateTimeRange"] = request.updateTimeRangeShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryLocationDateClusters",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryLocationDateClustersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLocationDateClusters(_ request: QueryLocationDateClustersRequest) async throws -> QueryLocationDateClustersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryLocationDateClustersWithOptions(request as! QueryLocationDateClustersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySimilarImageClustersWithOptions(_ request: QuerySimilarImageClustersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySimilarImageClustersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customLabels)) {
            query["CustomLabels"] = request.customLabels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
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
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["Sort"] = request.sort ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySimilarImageClusters",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySimilarImageClustersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySimilarImageClusters(_ request: QuerySimilarImageClustersRequest) async throws -> QuerySimilarImageClustersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySimilarImageClustersWithOptions(request as! QuerySimilarImageClustersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryStoriesWithOptions(_ tmpReq: QueryStoriesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryStoriesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryStoriesShrinkRequest = QueryStoriesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.createTimeRange)) {
            request.createTimeRangeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createTimeRange, "CreateTimeRange", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.figureClusterIds)) {
            request.figureClusterIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.figureClusterIds, "FigureClusterIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.storyEndTimeRange)) {
            request.storyEndTimeRangeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.storyEndTimeRange, "StoryEndTimeRange", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.storyStartTimeRange)) {
            request.storyStartTimeRangeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.storyStartTimeRange, "StoryStartTimeRange", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createTimeRangeShrink)) {
            query["CreateTimeRange"] = request.createTimeRangeShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customLabels)) {
            query["CustomLabels"] = request.customLabels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.figureClusterIdsShrink)) {
            query["FigureClusterIds"] = request.figureClusterIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectId)) {
            query["ObjectId"] = request.objectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["Sort"] = request.sort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storyEndTimeRangeShrink)) {
            query["StoryEndTimeRange"] = request.storyEndTimeRangeShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storyName)) {
            query["StoryName"] = request.storyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storyStartTimeRangeShrink)) {
            query["StoryStartTimeRange"] = request.storyStartTimeRangeShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storySubType)) {
            query["StorySubType"] = request.storySubType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storyType)) {
            query["StoryType"] = request.storyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withEmptyStories)) {
            query["WithEmptyStories"] = request.withEmptyStories!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryStories",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryStoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryStories(_ request: QueryStoriesRequest) async throws -> QueryStoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryStoriesWithOptions(request as! QueryStoriesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshWebofficeTokenWithOptions(_ tmpReq: RefreshWebofficeTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefreshWebofficeTokenResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RefreshWebofficeTokenShrinkRequest = RefreshWebofficeTokenShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refreshToken)) {
            query["RefreshToken"] = request.refreshToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefreshWebofficeToken",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefreshWebofficeTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshWebofficeToken(_ request: RefreshWebofficeTokenRequest) async throws -> RefreshWebofficeTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await refreshWebofficeTokenWithOptions(request as! RefreshWebofficeTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeStoryFilesWithOptions(_ tmpReq: RemoveStoryFilesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveStoryFilesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RemoveStoryFilesShrinkRequest = RemoveStoryFilesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.files)) {
            request.filesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.files, "Files", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            body["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filesShrink)) {
            body["Files"] = request.filesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectId)) {
            body["ObjectId"] = request.objectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveStoryFiles",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveStoryFilesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeStoryFiles(_ request: RemoveStoryFilesRequest) async throws -> RemoveStoryFilesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeStoryFilesWithOptions(request as! RemoveStoryFilesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeBatchWithOptions(_ request: ResumeBatchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResumeBatchResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResumeBatch",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResumeBatchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeBatch(_ request: ResumeBatchRequest) async throws -> ResumeBatchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resumeBatchWithOptions(request as! ResumeBatchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeTriggerWithOptions(_ request: ResumeTriggerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResumeTriggerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResumeTrigger",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResumeTriggerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeTrigger(_ request: ResumeTriggerRequest) async throws -> ResumeTriggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resumeTriggerWithOptions(request as! ResumeTriggerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchImageFigureClusterWithOptions(_ tmpReq: SearchImageFigureClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchImageFigureClusterResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SearchImageFigureClusterShrinkRequest = SearchImageFigureClusterShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.credentialConfig)) {
            request.credentialConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.credentialConfig, "CredentialConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.credentialConfigShrink)) {
            query["CredentialConfig"] = request.credentialConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceURI)) {
            query["SourceURI"] = request.sourceURI ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchImageFigureCluster",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchImageFigureClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchImageFigureCluster(_ request: SearchImageFigureClusterRequest) async throws -> SearchImageFigureClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchImageFigureClusterWithOptions(request as! SearchImageFigureClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func semanticQueryWithOptions(_ tmpReq: SemanticQueryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SemanticQueryResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SemanticQueryShrinkRequest = SemanticQueryShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.mediaTypes)) {
            request.mediaTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.mediaTypes, "MediaTypes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.withFields)) {
            request.withFieldsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.withFields, "WithFields", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.mediaTypesShrink)) {
            query["MediaTypes"] = request.mediaTypesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withFieldsShrink)) {
            query["WithFields"] = request.withFieldsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SemanticQuery",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SemanticQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func semanticQuery(_ request: SemanticQueryRequest) async throws -> SemanticQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await semanticQueryWithOptions(request as! SemanticQueryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func simpleQueryWithOptions(_ tmpReq: SimpleQueryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SimpleQueryResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SimpleQueryShrinkRequest = SimpleQueryShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.aggregations)) {
            request.aggregationsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.aggregations, "Aggregations", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.query)) {
            request.queryShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.query, "Query", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.withFields)) {
            request.withFieldsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.withFields, "WithFields", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregationsShrink)) {
            query["Aggregations"] = request.aggregationsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
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
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryShrink)) {
            query["Query"] = request.queryShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["Sort"] = request.sort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withFieldsShrink)) {
            query["WithFields"] = request.withFieldsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.withoutTotalHits)) {
            query["WithoutTotalHits"] = request.withoutTotalHits!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SimpleQuery",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SimpleQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func simpleQuery(_ request: SimpleQueryRequest) async throws -> SimpleQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await simpleQueryWithOptions(request as! SimpleQueryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendBatchWithOptions(_ request: SuspendBatchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SuspendBatchResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SuspendBatch",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SuspendBatchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendBatch(_ request: SuspendBatchRequest) async throws -> SuspendBatchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await suspendBatchWithOptions(request as! SuspendBatchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendTriggerWithOptions(_ request: SuspendTriggerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SuspendTriggerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SuspendTrigger",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SuspendTriggerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendTrigger(_ request: SuspendTriggerRequest) async throws -> SuspendTriggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await suspendTriggerWithOptions(request as! SuspendTriggerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateBatchWithOptions(_ tmpReq: UpdateBatchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateBatchResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateBatchShrinkRequest = UpdateBatchShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.actions)) {
            request.actionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.actions, "Actions", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.input)) {
            request.inputShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.input, "Input", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionsShrink)) {
            body["Actions"] = request.actionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputShrink)) {
            body["Input"] = request.inputShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            body["Tags"] = request.tagsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateBatch",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateBatchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateBatch(_ request: UpdateBatchRequest) async throws -> UpdateBatchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateBatchWithOptions(request as! UpdateBatchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDatasetWithOptions(_ tmpReq: UpdateDatasetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDatasetResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateDatasetShrinkRequest = UpdateDatasetShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.workflowParameters)) {
            request.workflowParametersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.workflowParameters, "WorkflowParameters", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetMaxBindCount)) {
            query["DatasetMaxBindCount"] = request.datasetMaxBindCount!;
        }
        if (!TeaUtils.Client.isUnset(request.datasetMaxEntityCount)) {
            query["DatasetMaxEntityCount"] = request.datasetMaxEntityCount!;
        }
        if (!TeaUtils.Client.isUnset(request.datasetMaxFileCount)) {
            query["DatasetMaxFileCount"] = request.datasetMaxFileCount!;
        }
        if (!TeaUtils.Client.isUnset(request.datasetMaxRelationCount)) {
            query["DatasetMaxRelationCount"] = request.datasetMaxRelationCount!;
        }
        if (!TeaUtils.Client.isUnset(request.datasetMaxTotalFileSize)) {
            query["DatasetMaxTotalFileSize"] = request.datasetMaxTotalFileSize!;
        }
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workflowParametersShrink)) {
            query["WorkflowParameters"] = request.workflowParametersShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDataset",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDatasetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDataset(_ request: UpdateDatasetRequest) async throws -> UpdateDatasetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateDatasetWithOptions(request as! UpdateDatasetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFigureClusterWithOptions(_ tmpReq: UpdateFigureClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFigureClusterResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateFigureClusterShrinkRequest = UpdateFigureClusterShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.figureCluster)) {
            request.figureClusterShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.figureCluster, "FigureCluster", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.figureClusterShrink)) {
            query["FigureCluster"] = request.figureClusterShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFigureCluster",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFigureClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFigureCluster(_ request: UpdateFigureClusterRequest) async throws -> UpdateFigureClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateFigureClusterWithOptions(request as! UpdateFigureClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFileMetaWithOptions(_ tmpReq: UpdateFileMetaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFileMetaResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateFileMetaShrinkRequest = UpdateFileMetaShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.file)) {
            request.fileShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.file, "File", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileShrink)) {
            query["File"] = request.fileShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFileMeta",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFileMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFileMeta(_ request: UpdateFileMetaRequest) async throws -> UpdateFileMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateFileMetaWithOptions(request as! UpdateFileMetaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLocationDateClusterWithOptions(_ tmpReq: UpdateLocationDateClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateLocationDateClusterResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateLocationDateClusterShrinkRequest = UpdateLocationDateClusterShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.customLabels)) {
            request.customLabelsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.customLabels, "CustomLabels", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customId)) {
            query["CustomId"] = request.customId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customLabelsShrink)) {
            query["CustomLabels"] = request.customLabelsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            query["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectId)) {
            query["ObjectId"] = request.objectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateLocationDateCluster",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateLocationDateClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateLocationDateCluster(_ request: UpdateLocationDateClusterRequest) async throws -> UpdateLocationDateClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateLocationDateClusterWithOptions(request as! UpdateLocationDateClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProjectWithOptions(_ tmpReq: UpdateProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProjectResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateProjectShrinkRequest = UpdateProjectShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.datasetMaxBindCount)) {
            query["DatasetMaxBindCount"] = request.datasetMaxBindCount!;
        }
        if (!TeaUtils.Client.isUnset(request.datasetMaxEntityCount)) {
            query["DatasetMaxEntityCount"] = request.datasetMaxEntityCount!;
        }
        if (!TeaUtils.Client.isUnset(request.datasetMaxFileCount)) {
            query["DatasetMaxFileCount"] = request.datasetMaxFileCount!;
        }
        if (!TeaUtils.Client.isUnset(request.datasetMaxRelationCount)) {
            query["DatasetMaxRelationCount"] = request.datasetMaxRelationCount!;
        }
        if (!TeaUtils.Client.isUnset(request.datasetMaxTotalFileSize)) {
            query["DatasetMaxTotalFileSize"] = request.datasetMaxTotalFileSize!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectMaxDatasetCount)) {
            query["ProjectMaxDatasetCount"] = request.projectMaxDatasetCount!;
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceRole)) {
            query["ServiceRole"] = request.serviceRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProject",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProject(_ request: UpdateProjectRequest) async throws -> UpdateProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateProjectWithOptions(request as! UpdateProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateStoryWithOptions(_ tmpReq: UpdateStoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateStoryResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateStoryShrinkRequest = UpdateStoryShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.cover)) {
            request.coverShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.cover, "Cover", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.customLabels)) {
            request.customLabelsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.customLabels, "CustomLabels", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.coverShrink)) {
            body["Cover"] = request.coverShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customId)) {
            body["CustomId"] = request.customId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customLabelsShrink)) {
            body["CustomLabels"] = request.customLabelsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasetName)) {
            body["DatasetName"] = request.datasetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectId)) {
            body["ObjectId"] = request.objectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storyName)) {
            body["StoryName"] = request.storyName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateStory",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateStoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateStory(_ request: UpdateStoryRequest) async throws -> UpdateStoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateStoryWithOptions(request as! UpdateStoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTriggerWithOptions(_ tmpReq: UpdateTriggerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTriggerResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateTriggerShrinkRequest = UpdateTriggerShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.actions)) {
            request.actionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.actions, "Actions", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.input)) {
            request.inputShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.input, "Input", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionsShrink)) {
            body["Actions"] = request.actionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            body["Id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputShrink)) {
            body["Input"] = request.inputShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            body["Tags"] = request.tagsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTrigger",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTriggerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTrigger(_ request: UpdateTriggerRequest) async throws -> UpdateTriggerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTriggerWithOptions(request as! UpdateTriggerRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
