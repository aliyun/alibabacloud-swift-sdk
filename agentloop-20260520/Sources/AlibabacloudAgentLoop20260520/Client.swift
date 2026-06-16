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
    public func addMem0MemoriesWithOptions(_ request: AddMem0MemoriesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddMem0MemoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentSpace)) {
            query["agentSpace"] = request.agentSpace ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.body)) {
            body["body"] = request.body ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddMem0Memories",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/v1/memories",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doROARequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.pathname ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddMem0MemoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addMem0Memories(_ request: AddMem0MemoriesRequest) async throws -> AddMem0MemoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addMem0MemoriesWithOptions(request as! AddMem0MemoriesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
    public func deleteMem0MemoriesWithOptions(_ tmpReq: DeleteMem0MemoriesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMem0MemoriesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteMem0MemoriesShrinkRequest = DeleteMem0MemoriesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.metadata)) {
            request.metadataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.metadata, "metadata", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentSpace)) {
            query["agentSpace"] = request.agentSpace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentId)) {
            query["agent_id"] = request.agentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appId)) {
            query["app_id"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contextStoreId)) {
            query["context_store_id"] = request.contextStoreId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metadataShrink)) {
            query["metadata"] = request.metadataShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            query["org_id"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["project_id"] = request.projectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.runId)) {
            query["run_id"] = request.runId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMem0Memories",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/v1/memories",
            "method": "DELETE",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doROARequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.pathname ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMem0MemoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMem0Memories(_ request: DeleteMem0MemoriesRequest) async throws -> DeleteMem0MemoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteMem0MemoriesWithOptions(request as! DeleteMem0MemoriesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMem0MemoryWithOptions(_ memoryId: String, _ request: DeleteMem0MemoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMem0MemoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentSpace)) {
            query["agentSpace"] = request.agentSpace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contextStoreId)) {
            query["context_store_id"] = request.contextStoreId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            query["org_id"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["project_id"] = request.projectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMem0Memory",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/v1/memories/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(memoryId)),
            "method": "DELETE",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doROARequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.pathname ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMem0MemoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMem0Memory(_ memoryId: String, _ request: DeleteMem0MemoryRequest) async throws -> DeleteMem0MemoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteMem0MemoryWithOptions(memoryId as! String, request as! DeleteMem0MemoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
        if (!TeaUtils.Client.isUnset(request.query)) {
            body["query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
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
    public func getMem0MemoriesWithOptions(_ request: GetMem0MemoriesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMem0MemoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentSpace)) {
            query["agentSpace"] = request.agentSpace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contextStoreId)) {
            query["context_store_id"] = request.contextStoreId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableGraph)) {
            query["enable_graph"] = request.enableGraph!;
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            query["org_id"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["project_id"] = request.projectId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.body)) {
            body["body"] = request.body ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMem0Memories",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/v2/memories",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await doROARequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.pathname ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMem0MemoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMem0Memories(_ request: GetMem0MemoriesRequest) async throws -> GetMem0MemoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMem0MemoriesWithOptions(request as! GetMem0MemoriesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMem0MemoryWithOptions(_ memoryId: String, _ request: GetMem0MemoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMem0MemoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentSpace)) {
            query["agentSpace"] = request.agentSpace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contextStoreId)) {
            query["context_store_id"] = request.contextStoreId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            query["org_id"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["project_id"] = request.projectId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMem0Memory",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/v1/memories/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(memoryId)),
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doROARequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.pathname ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMem0MemoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMem0Memory(_ memoryId: String, _ request: GetMem0MemoryRequest) async throws -> GetMem0MemoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getMem0MemoryWithOptions(memoryId as! String, request as! GetMem0MemoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
    public func searchMem0MemoriesWithOptions(_ request: SearchMem0MemoriesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchMem0MemoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentSpace)) {
            query["agentSpace"] = request.agentSpace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contextStoreId)) {
            query["context_store_id"] = request.contextStoreId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableGraph)) {
            query["enable_graph"] = request.enableGraph!;
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            query["org_id"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["project_id"] = request.projectId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.body)) {
            body["body"] = request.body ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchMem0Memories",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/v2/memories/search",
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await doROARequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.pathname ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchMem0MemoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchMem0Memories(_ request: SearchMem0MemoriesRequest) async throws -> SearchMem0MemoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await searchMem0MemoriesWithOptions(request as! SearchMem0MemoriesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
    public func updateMem0MemoryWithOptions(_ memoryId: String, _ request: UpdateMem0MemoryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMem0MemoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentSpace)) {
            query["agentSpace"] = request.agentSpace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contextStoreId)) {
            query["context_store_id"] = request.contextStoreId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            query["org_id"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["project_id"] = request.projectId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.body)) {
            body["body"] = request.body ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMem0Memory",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/v1/memories/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(memoryId)),
            "method": "PUT",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doROARequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.pathname ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMem0MemoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMem0Memory(_ memoryId: String, _ request: UpdateMem0MemoryRequest) async throws -> UpdateMem0MemoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateMem0MemoryWithOptions(memoryId as! String, request as! UpdateMem0MemoryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateMem0APIKeyWithOptions(_ request: ValidateMem0APIKeyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ValidateMem0APIKeyResponse {
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
            "action": "ValidateMem0APIKey",
            "version": "2026-05-20",
            "protocol": "HTTPS",
            "pathname": "/v1/ping",
            "method": "GET",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await doROARequest(params.action ?? "", params.version ?? "", params.protocol_ ?? "", params.method ?? "", params.authType ?? "", params.pathname ?? "", params.bodyType ?? "", req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ValidateMem0APIKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateMem0APIKey(_ request: ValidateMem0APIKeyRequest) async throws -> ValidateMem0APIKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await validateMem0APIKeyWithOptions(request as! ValidateMem0APIKeyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
