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
        self._endpoint = try getEndpoint("ververica", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createDeploymentWithOptions(_ namespace: String, _ request: CreateDeploymentRequest, _ headers: CreateDeploymentHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDeploymentResponse {
        try TeaUtils.Client.validateModel(request)
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDeployment",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/deployments",
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
    public func createDeployment(_ namespace: String, _ request: CreateDeploymentRequest) async throws -> CreateDeploymentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateDeploymentHeaders = CreateDeploymentHeaders([:])
        return try await createDeploymentWithOptions(namespace as! String, request as! CreateDeploymentRequest, headers as! CreateDeploymentHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMemberWithOptions(_ namespace: String, _ request: CreateMemberRequest, _ headers: CreateMemberHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMember",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/gateway/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/members",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMember(_ namespace: String, _ request: CreateMemberRequest) async throws -> CreateMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateMemberHeaders = CreateMemberHeaders([:])
        return try await createMemberWithOptions(namespace as! String, request as! CreateMemberRequest, headers as! CreateMemberHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSavepointWithOptions(_ namespace: String, _ request: CreateSavepointRequest, _ headers: CreateSavepointHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSavepointResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deploymentId)) {
            body["deploymentId"] = request.deploymentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nativeFormat)) {
            body["nativeFormat"] = request.nativeFormat!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSavepoint",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/savepoints",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSavepointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSavepoint(_ namespace: String, _ request: CreateSavepointRequest) async throws -> CreateSavepointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateSavepointHeaders = CreateSavepointHeaders([:])
        return try await createSavepointWithOptions(namespace as! String, request as! CreateSavepointRequest, headers as! CreateSavepointHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVariableWithOptions(_ namespace: String, _ request: CreateVariableRequest, _ headers: CreateVariableHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVariableResponse {
        try TeaUtils.Client.validateModel(request)
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVariable",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/variables",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVariableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVariable(_ namespace: String, _ request: CreateVariableRequest) async throws -> CreateVariableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateVariableHeaders = CreateVariableHeaders([:])
        return try await createVariableWithOptions(namespace as! String, request as! CreateVariableRequest, headers as! CreateVariableHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDeploymentWithOptions(_ namespace: String, _ deploymentId: String, _ headers: DeleteDeploymentHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDeploymentResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDeployment",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/deployments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(deploymentId)),
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
    public func deleteDeployment(_ namespace: String, _ deploymentId: String) async throws -> DeleteDeploymentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteDeploymentHeaders = DeleteDeploymentHeaders([:])
        return try await deleteDeploymentWithOptions(namespace as! String, deploymentId as! String, headers as! DeleteDeploymentHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteJobWithOptions(_ namespace: String, _ jobId: String, _ headers: DeleteJobHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteJobResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteJob",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteJob(_ namespace: String, _ jobId: String) async throws -> DeleteJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteJobHeaders = DeleteJobHeaders([:])
        return try await deleteJobWithOptions(namespace as! String, jobId as! String, headers as! DeleteJobHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMemberWithOptions(_ namespace: String, _ member: String, _ headers: DeleteMemberHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMemberResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMember",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/gateway/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/members/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(member)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMember(_ namespace: String, _ member: String) async throws -> DeleteMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteMemberHeaders = DeleteMemberHeaders([:])
        return try await deleteMemberWithOptions(namespace as! String, member as! String, headers as! DeleteMemberHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSavepointWithOptions(_ namespace: String, _ savepointId: String, _ headers: DeleteSavepointHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSavepointResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSavepoint",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/savepoints/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(savepointId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSavepointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSavepoint(_ namespace: String, _ savepointId: String) async throws -> DeleteSavepointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteSavepointHeaders = DeleteSavepointHeaders([:])
        return try await deleteSavepointWithOptions(namespace as! String, savepointId as! String, headers as! DeleteSavepointHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVariableWithOptions(_ namespace: String, _ name: String, _ headers: DeleteVariableHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteVariableResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteVariable",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/variables/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(name)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteVariableResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVariable(_ namespace: String, _ name: String) async throws -> DeleteVariableResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteVariableHeaders = DeleteVariableHeaders([:])
        return try await deleteVariableWithOptions(namespace as! String, name as! String, headers as! DeleteVariableHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flinkApiProxyWithOptions(_ request: FlinkApiProxyRequest, _ headers: FlinkApiProxyHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlinkApiProxyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.flinkApiPath)) {
            query["flinkApiPath"] = request.flinkApiPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["resourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["resourceType"] = request.resourceType ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlinkApiProxy",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/flink-ui/v2/proxy",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlinkApiProxyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flinkApiProxy(_ request: FlinkApiProxyRequest) async throws -> FlinkApiProxyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlinkApiProxyHeaders = FlinkApiProxyHeaders([:])
        return try await flinkApiProxyWithOptions(request as! FlinkApiProxyRequest, headers as! FlinkApiProxyHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateResourcePlanWithFlinkConfAsyncWithOptions(_ namespace: String, _ deploymentId: String, _ request: GenerateResourcePlanWithFlinkConfAsyncRequest, _ headers: GenerateResourcePlanWithFlinkConfAsyncHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateResourcePlanWithFlinkConfAsyncResponse {
        try TeaUtils.Client.validateModel(request)
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateResourcePlanWithFlinkConfAsync",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/deployments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(deploymentId)) + "/resource-plan%3AasyncGenerate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateResourcePlanWithFlinkConfAsyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateResourcePlanWithFlinkConfAsync(_ namespace: String, _ deploymentId: String, _ request: GenerateResourcePlanWithFlinkConfAsyncRequest) async throws -> GenerateResourcePlanWithFlinkConfAsyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GenerateResourcePlanWithFlinkConfAsyncHeaders = GenerateResourcePlanWithFlinkConfAsyncHeaders([:])
        return try await generateResourcePlanWithFlinkConfAsyncWithOptions(namespace as! String, deploymentId as! String, request as! GenerateResourcePlanWithFlinkConfAsyncRequest, headers as! GenerateResourcePlanWithFlinkConfAsyncHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeploymentWithOptions(_ namespace: String, _ deploymentId: String, _ headers: GetDeploymentHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeploymentResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDeployment",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/deployments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(deploymentId)),
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
    public func getDeployment(_ namespace: String, _ deploymentId: String) async throws -> GetDeploymentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetDeploymentHeaders = GetDeploymentHeaders([:])
        return try await getDeploymentWithOptions(namespace as! String, deploymentId as! String, headers as! GetDeploymentHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGenerateResourcePlanResultWithOptions(_ namespace: String, _ ticketId: String, _ headers: GetGenerateResourcePlanResultHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGenerateResourcePlanResultResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGenerateResourcePlanResult",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/deployments/tickets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ticketId)) + "/resource-plan%3AasyncGenerate",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGenerateResourcePlanResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGenerateResourcePlanResult(_ namespace: String, _ ticketId: String) async throws -> GetGenerateResourcePlanResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetGenerateResourcePlanResultHeaders = GetGenerateResourcePlanResultHeaders([:])
        return try await getGenerateResourcePlanResultWithOptions(namespace as! String, ticketId as! String, headers as! GetGenerateResourcePlanResultHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJobWithOptions(_ namespace: String, _ jobId: String, _ headers: GetJobHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetJobResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetJob",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJob(_ namespace: String, _ jobId: String) async throws -> GetJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetJobHeaders = GetJobHeaders([:])
        return try await getJobWithOptions(namespace as! String, jobId as! String, headers as! GetJobHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLatestJobStartLogWithOptions(_ namespace: String, _ deploymentId: String, _ headers: GetLatestJobStartLogHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLatestJobStartLogResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLatestJobStartLog",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/deployments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(deploymentId)) + "/latest_jobmanager_start_log",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLatestJobStartLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLatestJobStartLog(_ namespace: String, _ deploymentId: String) async throws -> GetLatestJobStartLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetLatestJobStartLogHeaders = GetLatestJobStartLogHeaders([:])
        return try await getLatestJobStartLogWithOptions(namespace as! String, deploymentId as! String, headers as! GetLatestJobStartLogHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMemberWithOptions(_ namespace: String, _ member: String, _ headers: GetMemberHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMemberResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMember",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/gateway/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/members/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(member)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMember(_ namespace: String, _ member: String) async throws -> GetMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetMemberHeaders = GetMemberHeaders([:])
        return try await getMemberWithOptions(namespace as! String, member as! String, headers as! GetMemberHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSavepointWithOptions(_ namespace: String, _ savepointId: String, _ headers: GetSavepointHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSavepointResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSavepoint",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/savepoints/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(savepointId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSavepointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSavepoint(_ namespace: String, _ savepointId: String) async throws -> GetSavepointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetSavepointHeaders = GetSavepointHeaders([:])
        return try await getSavepointWithOptions(namespace as! String, savepointId as! String, headers as! GetSavepointHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeploymentTargetsWithOptions(_ namespace: String, _ request: ListDeploymentTargetsRequest, _ headers: ListDeploymentTargetsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDeploymentTargetsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["pageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDeploymentTargets",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/deployment-targets",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDeploymentTargetsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeploymentTargets(_ namespace: String, _ request: ListDeploymentTargetsRequest) async throws -> ListDeploymentTargetsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListDeploymentTargetsHeaders = ListDeploymentTargetsHeaders([:])
        return try await listDeploymentTargetsWithOptions(namespace as! String, request as! ListDeploymentTargetsRequest, headers as! ListDeploymentTargetsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeploymentsWithOptions(_ namespace: String, _ request: ListDeploymentsRequest, _ headers: ListDeploymentsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDeploymentsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.creator)) {
            query["creator"] = request.creator ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executionMode)) {
            query["executionMode"] = request.executionMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelKey)) {
            query["labelKey"] = request.labelKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelValueArray)) {
            query["labelValueArray"] = request.labelValueArray ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifier)) {
            query["modifier"] = request.modifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["pageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDeployments",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/deployments",
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
    public func listDeployments(_ namespace: String, _ request: ListDeploymentsRequest) async throws -> ListDeploymentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListDeploymentsHeaders = ListDeploymentsHeaders([:])
        return try await listDeploymentsWithOptions(namespace as! String, request as! ListDeploymentsRequest, headers as! ListDeploymentsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEditableNamespaceWithOptions(_ request: ListEditableNamespaceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEditableNamespaceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.namespace)) {
            query["namespace"] = request.namespace ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["pageIndex"] = request.pageIndex ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["regionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["workspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEditableNamespace",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/gateway/v2/namespaces/editable",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEditableNamespaceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEditableNamespace(_ request: ListEditableNamespaceRequest) async throws -> ListEditableNamespaceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listEditableNamespaceWithOptions(request as! ListEditableNamespaceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEngineVersionMetadataWithOptions(_ headers: ListEngineVersionMetadataHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEngineVersionMetadataResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEngineVersionMetadata",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/engine-version-meta.json",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEngineVersionMetadataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEngineVersionMetadata() async throws -> ListEngineVersionMetadataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListEngineVersionMetadataHeaders = ListEngineVersionMetadataHeaders([:])
        return try await listEngineVersionMetadataWithOptions(headers as! ListEngineVersionMetadataHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobsWithOptions(_ namespace: String, _ request: ListJobsRequest, _ headers: ListJobsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deploymentId)) {
            query["deploymentId"] = request.deploymentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["pageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.sortName)) {
            query["sortName"] = request.sortName ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListJobs",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/jobs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobs(_ namespace: String, _ request: ListJobsRequest) async throws -> ListJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListJobsHeaders = ListJobsHeaders([:])
        return try await listJobsWithOptions(namespace as! String, request as! ListJobsRequest, headers as! ListJobsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMembersWithOptions(_ namespace: String, _ request: ListMembersRequest, _ headers: ListMembersHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMembersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["pageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMembers",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/gateway/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/members",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMembersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMembers(_ namespace: String, _ request: ListMembersRequest) async throws -> ListMembersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListMembersHeaders = ListMembersHeaders([:])
        return try await listMembersWithOptions(namespace as! String, request as! ListMembersRequest, headers as! ListMembersHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSavepointsWithOptions(_ namespace: String, _ request: ListSavepointsRequest, _ headers: ListSavepointsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSavepointsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deploymentId)) {
            query["deploymentId"] = request.deploymentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["jobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["pageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSavepoints",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/savepoints",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSavepointsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSavepoints(_ namespace: String, _ request: ListSavepointsRequest) async throws -> ListSavepointsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListSavepointsHeaders = ListSavepointsHeaders([:])
        return try await listSavepointsWithOptions(namespace as! String, request as! ListSavepointsRequest, headers as! ListSavepointsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVariablesWithOptions(_ namespace: String, _ request: ListVariablesRequest, _ headers: ListVariablesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListVariablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["pageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListVariables",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/variables",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListVariablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVariables(_ namespace: String, _ request: ListVariablesRequest) async throws -> ListVariablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListVariablesHeaders = ListVariablesHeaders([:])
        return try await listVariablesWithOptions(namespace as! String, request as! ListVariablesRequest, headers as! ListVariablesHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startJobWithOptions(_ namespace: String, _ request: StartJobRequest, _ headers: StartJobHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartJobResponse {
        try TeaUtils.Client.validateModel(request)
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartJob",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/jobs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startJob(_ namespace: String, _ request: StartJobRequest) async throws -> StartJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: StartJobHeaders = StartJobHeaders([:])
        return try await startJobWithOptions(namespace as! String, request as! StartJobRequest, headers as! StartJobHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startJobWithParamsWithOptions(_ namespace: String, _ request: StartJobWithParamsRequest, _ headers: StartJobWithParamsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartJobWithParamsResponse {
        try TeaUtils.Client.validateModel(request)
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartJobWithParams",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/jobs%3Astart",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartJobWithParamsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startJobWithParams(_ namespace: String, _ request: StartJobWithParamsRequest) async throws -> StartJobWithParamsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: StartJobWithParamsHeaders = StartJobWithParamsHeaders([:])
        return try await startJobWithParamsWithOptions(namespace as! String, request as! StartJobWithParamsRequest, headers as! StartJobWithParamsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopJobWithOptions(_ namespace: String, _ jobId: String, _ request: StopJobRequest, _ headers: StopJobHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopJobResponse {
        try TeaUtils.Client.validateModel(request)
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopJob",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId)) + "%3Astop",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopJob(_ namespace: String, _ jobId: String, _ request: StopJobRequest) async throws -> StopJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: StopJobHeaders = StopJobHeaders([:])
        return try await stopJobWithOptions(namespace as! String, jobId as! String, request as! StopJobRequest, headers as! StopJobHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDeploymentWithOptions(_ namespace: String, _ deploymentId: String, _ request: UpdateDeploymentRequest, _ headers: UpdateDeploymentHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDeploymentResponse {
        try TeaUtils.Client.validateModel(request)
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDeployment",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/deployments/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(deploymentId)),
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
    public func updateDeployment(_ namespace: String, _ deploymentId: String, _ request: UpdateDeploymentRequest) async throws -> UpdateDeploymentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateDeploymentHeaders = UpdateDeploymentHeaders([:])
        return try await updateDeploymentWithOptions(namespace as! String, deploymentId as! String, request as! UpdateDeploymentRequest, headers as! UpdateDeploymentHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMemberWithOptions(_ namespace: String, _ request: UpdateMemberRequest, _ headers: UpdateMemberHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateMemberResponse {
        try TeaUtils.Client.validateModel(request)
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateMember",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/gateway/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/members",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateMemberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateMember(_ namespace: String, _ request: UpdateMemberRequest) async throws -> UpdateMemberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateMemberHeaders = UpdateMemberHeaders([:])
        return try await updateMemberWithOptions(namespace as! String, request as! UpdateMemberRequest, headers as! UpdateMemberHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateSqlStatementWithOptions(_ namespace: String, _ request: ValidateSqlStatementRequest, _ headers: ValidateSqlStatementHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ValidateSqlStatementResponse {
        try TeaUtils.Client.validateModel(request)
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.workspace)) {
            realHeaders["workspace"] = TeaUtils.Client.toJSONString(headers.workspace);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ValidateSqlStatement",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/sql-statement/validate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ValidateSqlStatementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateSqlStatement(_ namespace: String, _ request: ValidateSqlStatementRequest) async throws -> ValidateSqlStatementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ValidateSqlStatementHeaders = ValidateSqlStatementHeaders([:])
        return try await validateSqlStatementWithOptions(namespace as! String, request as! ValidateSqlStatementRequest, headers as! ValidateSqlStatementHeaders, runtime as! TeaUtils.RuntimeOptions)
    }
}
