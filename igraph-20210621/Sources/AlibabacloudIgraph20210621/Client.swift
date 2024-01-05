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
        self._endpoint = try getEndpoint("igraph", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createGraphWithOptions(_ instanceId: String, _ graphName: String, _ request: CreateGraphRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGraphResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGraph",
            "version": "2021-06-21",
            "protocol": "HTTPS",
            "pathname": "/openapi/igraph/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId) + "/graphs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(graphName),
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGraphResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGraph(_ instanceId: String, _ graphName: String, _ request: CreateGraphRequest) async throws -> CreateGraphResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createGraphWithOptions(instanceId as! String, graphName as! String, request as! CreateGraphRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGraphSchemaWithOptions(_ instanceId: String, _ graphName: String, _ request: CreateGraphSchemaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGraphSchemaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGraphSchema",
            "version": "2021-06-21",
            "protocol": "HTTPS",
            "pathname": "/openapi/igraph/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId) + "/graphs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(graphName) + "/schemas",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGraphSchemaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGraphSchema(_ instanceId: String, _ graphName: String, _ request: CreateGraphSchemaRequest) async throws -> CreateGraphSchemaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createGraphSchemaWithOptions(instanceId as! String, graphName as! String, request as! CreateGraphSchemaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGraphWithOptions(_ instanceId: String, _ graphName: String, _ request: DeleteGraphRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteGraphResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteGraph",
            "version": "2021-06-21",
            "protocol": "HTTPS",
            "pathname": "/openapi/igraph/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId) + "/graphs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(graphName),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteGraphResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteGraph(_ instanceId: String, _ graphName: String, _ request: DeleteGraphRequest) async throws -> DeleteGraphResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteGraphWithOptions(instanceId as! String, graphName as! String, request as! DeleteGraphRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGraphWithOptions(_ instanceId: String, _ graphName: String, _ request: GetGraphRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGraphResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGraph",
            "version": "2021-06-21",
            "protocol": "HTTPS",
            "pathname": "/openapi/igraph/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId) + "/graphs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(graphName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGraphResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGraph(_ instanceId: String, _ graphName: String, _ request: GetGraphRequest) async throws -> GetGraphResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getGraphWithOptions(instanceId as! String, graphName as! String, request as! GetGraphRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGraphSchemaWithOptions(_ instanceId: String, _ graphName: String, _ graphSchemaName: String, _ request: GetGraphSchemaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGraphSchemaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGraphSchema",
            "version": "2021-06-21",
            "protocol": "HTTPS",
            "pathname": "/openapi/igraph/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId) + "/graphs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(graphName) + "/schemas/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(graphSchemaName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGraphSchemaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGraphSchema(_ instanceId: String, _ graphName: String, _ graphSchemaName: String, _ request: GetGraphSchemaRequest) async throws -> GetGraphSchemaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getGraphSchemaWithOptions(instanceId as! String, graphName as! String, graphSchemaName as! String, request as! GetGraphSchemaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIgraphLabelBackFlowWithOptions(_ graphName: String, _ instanceId: String, _ labelName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIgraphLabelBackFlowResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIgraphLabelBackFlow",
            "version": "2021-06-21",
            "protocol": "HTTPS",
            "pathname": "/openapi/igraph/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId) + "/graphs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(graphName) + "/label/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(labelName) + "/backflow",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIgraphLabelBackFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIgraphLabelBackFlow(_ graphName: String, _ instanceId: String, _ labelName: String) async throws -> GetIgraphLabelBackFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getIgraphLabelBackFlowWithOptions(graphName as! String, instanceId as! String, labelName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIgraphLabelLastBackflowWithOptions(_ instanceId: String, _ graphName: String, _ labelName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIgraphLabelLastBackflowResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIgraphLabelLastBackflow",
            "version": "2021-06-21",
            "protocol": "HTTPS",
            "pathname": "/openapi/igraph/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId) + "/graphs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(graphName) + "/label/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(labelName) + "/backflow/last",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIgraphLabelLastBackflowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIgraphLabelLastBackflow(_ instanceId: String, _ graphName: String, _ labelName: String) async throws -> GetIgraphLabelLastBackflowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getIgraphLabelLastBackflowWithOptions(instanceId as! String, graphName as! String, labelName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIgraphTableDetailWithOptions(_ instanceId: String, _ graphName: String, _ tableName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIgraphTableDetailResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIgraphTableDetail",
            "version": "2021-06-21",
            "protocol": "HTTPS",
            "pathname": "/openapi/igraph/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId) + "/graphs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(graphName) + "/tables/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(tableName) + "/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIgraphTableDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIgraphTableDetail(_ instanceId: String, _ graphName: String, _ tableName: String) async throws -> GetIgraphTableDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getIgraphTableDetailWithOptions(instanceId as! String, graphName as! String, tableName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIgraphTablesBackFlowWithOptions(_ instanceId: String, _ graphName: String, _ request: GetIgraphTablesBackFlowRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIgraphTablesBackFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIgraphTablesBackFlow",
            "version": "2021-06-21",
            "protocol": "HTTPS",
            "pathname": "/openapi/igraph/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId) + "/graphs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(graphName) + "/backflows",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIgraphTablesBackFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIgraphTablesBackFlow(_ instanceId: String, _ graphName: String, _ request: GetIgraphTablesBackFlowRequest) async throws -> GetIgraphTablesBackFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getIgraphTablesBackFlowWithOptions(instanceId as! String, graphName as! String, request as! GetIgraphTablesBackFlowRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceWithOptions(_ instanceId: String, _ request: GetInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstance",
            "version": "2021-06-21",
            "protocol": "HTTPS",
            "pathname": "/openapi/igraph/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId),
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
    public func getInstance(_ instanceId: String, _ request: GetInstanceRequest) async throws -> GetInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getInstanceWithOptions(instanceId as! String, request as! GetInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceDigestWithOptions(_ instanceId: String, _ request: GetInstanceDigestRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceDigestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstanceDigest",
            "version": "2021-06-21",
            "protocol": "HTTPS",
            "pathname": "/openapi/igraph/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId) + "/digest",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceDigestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceDigest(_ instanceId: String, _ request: GetInstanceDigestRequest) async throws -> GetInstanceDigestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getInstanceDigestWithOptions(instanceId as! String, request as! GetInstanceDigestRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableDetailWithOptions(_ instanceId: String, _ tableName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTableDetailResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTableDetail",
            "version": "2021-06-21",
            "protocol": "HTTPS",
            "pathname": "/openapi/igraph/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId) + "/tables/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(tableName) + "/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTableDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableDetail(_ instanceId: String, _ tableName: String) async throws -> GetTableDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTableDetailWithOptions(instanceId as! String, tableName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableLastBackflowWithOptions(_ instanceId: String, _ tableName: String, _ request: GetTableLastBackflowRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTableLastBackflowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.partition)) {
            query["partition"] = request.partition ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTableLastBackflow",
            "version": "2021-06-21",
            "protocol": "HTTPS",
            "pathname": "/openapi/igraph/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId) + "/table/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(tableName) + "/backflow/last",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTableLastBackflowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTableLastBackflow(_ instanceId: String, _ tableName: String, _ request: GetTableLastBackflowRequest) async throws -> GetTableLastBackflowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTableLastBackflowWithOptions(instanceId as! String, tableName as! String, request as! GetTableLastBackflowRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDemoGraphSchemasWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDemoGraphSchemasResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDemoGraphSchemas",
            "version": "2021-06-21",
            "protocol": "HTTPS",
            "pathname": "/openapi/igraph/instances/demo/schemas",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDemoGraphSchemasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDemoGraphSchemas() async throws -> ListDemoGraphSchemasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDemoGraphSchemasWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGraphSchemasWithOptions(_ instanceId: String, _ graphName: String, _ request: ListGraphSchemasRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGraphSchemasResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageLimit)) {
            query["pageLimit"] = request.pageLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageStart)) {
            query["pageStart"] = request.pageStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.returnSpec)) {
            query["returnSpec"] = request.returnSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schemaStatus)) {
            query["schemaStatus"] = request.schemaStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListGraphSchemas",
            "version": "2021-06-21",
            "protocol": "HTTPS",
            "pathname": "/openapi/igraph/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId) + "/graphs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(graphName) + "/schemas",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGraphSchemasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGraphSchemas(_ instanceId: String, _ graphName: String, _ request: ListGraphSchemasRequest) async throws -> ListGraphSchemasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listGraphSchemasWithOptions(instanceId as! String, graphName as! String, request as! ListGraphSchemasRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIgraphInstancesWithOptions(_ tmpReq: ListIgraphInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIgraphInstancesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListIgraphInstancesShrinkRequest = ListIgraphInstancesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageContinue)) {
            query["pageContinue"] = request.pageContinue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageLimit)) {
            query["pageLimit"] = request.pageLimit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["resourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["tags"] = request.tagsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIgraphInstances",
            "version": "2021-06-21",
            "protocol": "HTTPS",
            "pathname": "/openapi/igraph/instances",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIgraphInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIgraphInstances(_ request: ListIgraphInstancesRequest) async throws -> ListIgraphInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listIgraphInstancesWithOptions(request as! ListIgraphInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceGraphWithOptions(_ instanceId: String, _ request: ListInstanceGraphRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstanceGraphResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstanceGraph",
            "version": "2021-06-21",
            "protocol": "HTTPS",
            "pathname": "/openapi/igraph/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId) + "/graphs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstanceGraphResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceGraph(_ instanceId: String, _ request: ListInstanceGraphRequest) async throws -> ListInstanceGraphResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listInstanceGraphWithOptions(instanceId as! String, request as! ListInstanceGraphRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishGraphSchemaWithOptions(_ instanceId: String, _ graphName: String, _ graphSchemaName: String, _ request: PublishGraphSchemaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PublishGraphSchemaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PublishGraphSchema",
            "version": "2021-06-21",
            "protocol": "HTTPS",
            "pathname": "/openapi/igraph/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId) + "/graphs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(graphName) + "/schemas/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(graphSchemaName),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PublishGraphSchemaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishGraphSchema(_ instanceId: String, _ graphName: String, _ graphSchemaName: String, _ request: PublishGraphSchemaRequest) async throws -> PublishGraphSchemaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await publishGraphSchemaWithOptions(instanceId as! String, graphName as! String, graphSchemaName as! String, request as! PublishGraphSchemaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchIgraphDemoWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchIgraphDemoResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchIgraphDemo",
            "version": "2021-06-21",
            "protocol": "HTTPS",
            "pathname": "/openapi/igraph/tool/actions/search_demo",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchIgraphDemoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchIgraphDemo() async throws -> SearchIgraphDemoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await searchIgraphDemoWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func triggerLabelBackflowWithOptions(_ instanceId: String, _ graphName: String, _ labelName: String, _ request: TriggerLabelBackflowRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TriggerLabelBackflowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.odpsPartition)) {
            query["odpsPartition"] = request.odpsPartition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timestamp)) {
            query["timestamp"] = request.timestamp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TriggerLabelBackflow",
            "version": "2021-06-21",
            "protocol": "HTTPS",
            "pathname": "/openapi/igraph/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId) + "/graphs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(graphName) + "/label/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(labelName) + "/backflow",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TriggerLabelBackflowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func triggerLabelBackflow(_ instanceId: String, _ graphName: String, _ labelName: String, _ request: TriggerLabelBackflowRequest) async throws -> TriggerLabelBackflowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await triggerLabelBackflowWithOptions(instanceId as! String, graphName as! String, labelName as! String, request as! TriggerLabelBackflowRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGraphDescriptionWithOptions(_ instanceId: String, _ graphName: String, _ request: UpdateGraphDescriptionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateGraphDescriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateGraphDescription",
            "version": "2021-06-21",
            "protocol": "HTTPS",
            "pathname": "/openapi/igraph/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(instanceId) + "/graphs/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(graphName) + "/description",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateGraphDescriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateGraphDescription(_ instanceId: String, _ graphName: String, _ request: UpdateGraphDescriptionRequest) async throws -> UpdateGraphDescriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateGraphDescriptionWithOptions(instanceId as! String, graphName as! String, request as! UpdateGraphDescriptionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
