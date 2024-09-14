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
    public func applyScheduledPlanWithOptions(_ namespace: String, _ scheduledPlanId: String, _ headers: ApplyScheduledPlanHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyScheduledPlanResponse {
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
            "action": "ApplyScheduledPlan",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/scheduled-plans/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(scheduledPlanId)) + "%3Aapply",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyScheduledPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyScheduledPlan(_ namespace: String, _ scheduledPlanId: String) async throws -> ApplyScheduledPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ApplyScheduledPlanHeaders = ApplyScheduledPlanHeaders([:])
        return try await applyScheduledPlanWithOptions(namespace as! String, scheduledPlanId as! String, headers as! ApplyScheduledPlanHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func createDeploymentDraftWithOptions(_ namespace: String, _ request: CreateDeploymentDraftRequest, _ headers: CreateDeploymentDraftHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDeploymentDraftResponse {
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
            "action": "CreateDeploymentDraft",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/deployment-drafts",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDeploymentDraftResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDeploymentDraft(_ namespace: String, _ request: CreateDeploymentDraftRequest) async throws -> CreateDeploymentDraftResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateDeploymentDraftHeaders = CreateDeploymentDraftHeaders([:])
        return try await createDeploymentDraftWithOptions(namespace as! String, request as! CreateDeploymentDraftRequest, headers as! CreateDeploymentDraftHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDeploymentTargetWithOptions(_ namespace: String, _ request: CreateDeploymentTargetRequest, _ headers: CreateDeploymentTargetHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDeploymentTargetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deploymentTargetName)) {
            query["deploymentTargetName"] = request.deploymentTargetName ?? "";
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
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDeploymentTarget",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/deployment-targets",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDeploymentTargetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDeploymentTarget(_ namespace: String, _ request: CreateDeploymentTargetRequest) async throws -> CreateDeploymentTargetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateDeploymentTargetHeaders = CreateDeploymentTargetHeaders([:])
        return try await createDeploymentTargetWithOptions(namespace as! String, request as! CreateDeploymentTargetRequest, headers as! CreateDeploymentTargetHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFolderWithOptions(_ namespace: String, _ request: CreateFolderRequest, _ headers: CreateFolderHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFolderResponse {
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
            "action": "CreateFolder",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/folder",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFolderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFolder(_ namespace: String, _ request: CreateFolderRequest) async throws -> CreateFolderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateFolderHeaders = CreateFolderHeaders([:])
        return try await createFolderWithOptions(namespace as! String, request as! CreateFolderRequest, headers as! CreateFolderHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func createScheduledPlanWithOptions(_ namespace: String, _ request: CreateScheduledPlanRequest, _ headers: CreateScheduledPlanHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateScheduledPlanResponse {
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
            "action": "CreateScheduledPlan",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/scheduled-plans",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateScheduledPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createScheduledPlan(_ namespace: String, _ request: CreateScheduledPlanRequest) async throws -> CreateScheduledPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateScheduledPlanHeaders = CreateScheduledPlanHeaders([:])
        return try await createScheduledPlanWithOptions(namespace as! String, request as! CreateScheduledPlanRequest, headers as! CreateScheduledPlanHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSessionClusterWithOptions(_ namespace: String, _ request: CreateSessionClusterRequest, _ headers: CreateSessionClusterHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSessionClusterResponse {
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
            "action": "CreateSessionCluster",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/sessionclusters",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSessionClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSessionCluster(_ namespace: String, _ request: CreateSessionClusterRequest) async throws -> CreateSessionClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateSessionClusterHeaders = CreateSessionClusterHeaders([:])
        return try await createSessionClusterWithOptions(namespace as! String, request as! CreateSessionClusterRequest, headers as! CreateSessionClusterHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUdfArtifactWithOptions(_ namespace: String, _ request: CreateUdfArtifactRequest, _ headers: CreateUdfArtifactHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUdfArtifactResponse {
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
            "action": "CreateUdfArtifact",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/udfartifacts",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUdfArtifactResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUdfArtifact(_ namespace: String, _ request: CreateUdfArtifactRequest) async throws -> CreateUdfArtifactResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateUdfArtifactHeaders = CreateUdfArtifactHeaders([:])
        return try await createUdfArtifactWithOptions(namespace as! String, request as! CreateUdfArtifactRequest, headers as! CreateUdfArtifactHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func deleteCustomConnectorWithOptions(_ namespace: String, _ connectorName: String, _ headers: DeleteCustomConnectorHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCustomConnectorResponse {
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
            "action": "DeleteCustomConnector",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/connectors/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(connectorName)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCustomConnectorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCustomConnector(_ namespace: String, _ connectorName: String) async throws -> DeleteCustomConnectorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteCustomConnectorHeaders = DeleteCustomConnectorHeaders([:])
        return try await deleteCustomConnectorWithOptions(namespace as! String, connectorName as! String, headers as! DeleteCustomConnectorHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func deleteDeploymentDraftWithOptions(_ namespace: String, _ deploymentDraftId: String, _ headers: DeleteDeploymentDraftHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDeploymentDraftResponse {
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
            "action": "DeleteDeploymentDraft",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/deployment-drafts/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(deploymentDraftId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDeploymentDraftResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDeploymentDraft(_ namespace: String, _ deploymentDraftId: String) async throws -> DeleteDeploymentDraftResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteDeploymentDraftHeaders = DeleteDeploymentDraftHeaders([:])
        return try await deleteDeploymentDraftWithOptions(namespace as! String, deploymentDraftId as! String, headers as! DeleteDeploymentDraftHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDeploymentTargetWithOptions(_ namespace: String, _ deploymentTargetName: String, _ headers: DeleteDeploymentTargetHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDeploymentTargetResponse {
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
            "action": "DeleteDeploymentTarget",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/deployment-targets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(deploymentTargetName)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDeploymentTargetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDeploymentTarget(_ namespace: String, _ deploymentTargetName: String) async throws -> DeleteDeploymentTargetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteDeploymentTargetHeaders = DeleteDeploymentTargetHeaders([:])
        return try await deleteDeploymentTargetWithOptions(namespace as! String, deploymentTargetName as! String, headers as! DeleteDeploymentTargetHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFolderWithOptions(_ namespace: String, _ folderId: String, _ headers: DeleteFolderHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFolderResponse {
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
            "action": "DeleteFolder",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/folder/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(folderId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFolderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFolder(_ namespace: String, _ folderId: String) async throws -> DeleteFolderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteFolderHeaders = DeleteFolderHeaders([:])
        return try await deleteFolderWithOptions(namespace as! String, folderId as! String, headers as! DeleteFolderHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func deleteScheduledPlanWithOptions(_ namespace: String, _ scheduledPlanId: String, _ headers: DeleteScheduledPlanHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteScheduledPlanResponse {
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
            "action": "DeleteScheduledPlan",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/scheduled-plans/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(scheduledPlanId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteScheduledPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteScheduledPlan(_ namespace: String, _ scheduledPlanId: String) async throws -> DeleteScheduledPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteScheduledPlanHeaders = DeleteScheduledPlanHeaders([:])
        return try await deleteScheduledPlanWithOptions(namespace as! String, scheduledPlanId as! String, headers as! DeleteScheduledPlanHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSessionClusterWithOptions(_ namespace: String, _ sessionClusterName: String, _ headers: DeleteSessionClusterHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSessionClusterResponse {
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
            "action": "DeleteSessionCluster",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/sessionclusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sessionClusterName)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSessionClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSessionCluster(_ namespace: String, _ sessionClusterName: String) async throws -> DeleteSessionClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteSessionClusterHeaders = DeleteSessionClusterHeaders([:])
        return try await deleteSessionClusterWithOptions(namespace as! String, sessionClusterName as! String, headers as! DeleteSessionClusterHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUdfArtifactWithOptions(_ namespace: String, _ udfArtifactName: String, _ headers: DeleteUdfArtifactHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUdfArtifactResponse {
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
            "action": "DeleteUdfArtifact",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/udfartifacts/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(udfArtifactName)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUdfArtifactResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUdfArtifact(_ namespace: String, _ udfArtifactName: String) async throws -> DeleteUdfArtifactResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteUdfArtifactHeaders = DeleteUdfArtifactHeaders([:])
        return try await deleteUdfArtifactWithOptions(namespace as! String, udfArtifactName as! String, headers as! DeleteUdfArtifactHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUdfFunctionWithOptions(_ namespace: String, _ functionName: String, _ request: DeleteUdfFunctionRequest, _ headers: DeleteUdfFunctionHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUdfFunctionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.className)) {
            query["className"] = request.className ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.udfArtifactName)) {
            query["udfArtifactName"] = request.udfArtifactName ?? "";
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
            "action": "DeleteUdfFunction",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/udfartifacts/function/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(functionName)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUdfFunctionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUdfFunction(_ namespace: String, _ functionName: String, _ request: DeleteUdfFunctionRequest) async throws -> DeleteUdfFunctionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteUdfFunctionHeaders = DeleteUdfFunctionHeaders([:])
        return try await deleteUdfFunctionWithOptions(namespace as! String, functionName as! String, request as! DeleteUdfFunctionRequest, headers as! DeleteUdfFunctionHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func deployDeploymentDraftAsyncWithOptions(_ namespace: String, _ request: DeployDeploymentDraftAsyncRequest, _ headers: DeployDeploymentDraftAsyncHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeployDeploymentDraftAsyncResponse {
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
            "action": "DeployDeploymentDraftAsync",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/deployment-drafts/async-deploy",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeployDeploymentDraftAsyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deployDeploymentDraftAsync(_ namespace: String, _ request: DeployDeploymentDraftAsyncRequest) async throws -> DeployDeploymentDraftAsyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeployDeploymentDraftAsyncHeaders = DeployDeploymentDraftAsyncHeaders([:])
        return try await deployDeploymentDraftAsyncWithOptions(namespace as! String, request as! DeployDeploymentDraftAsyncRequest, headers as! DeployDeploymentDraftAsyncHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeSqlStatementWithOptions(_ namespace: String, _ request: ExecuteSqlStatementRequest, _ headers: ExecuteSqlStatementHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteSqlStatementResponse {
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
            "action": "ExecuteSqlStatement",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/sql-statement/execute",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteSqlStatementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeSqlStatement(_ namespace: String, _ request: ExecuteSqlStatementRequest) async throws -> ExecuteSqlStatementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ExecuteSqlStatementHeaders = ExecuteSqlStatementHeaders([:])
        return try await executeSqlStatementWithOptions(namespace as! String, request as! ExecuteSqlStatementRequest, headers as! ExecuteSqlStatementHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func getAppliedScheduledPlanWithOptions(_ namespace: String, _ request: GetAppliedScheduledPlanRequest, _ headers: GetAppliedScheduledPlanHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAppliedScheduledPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deploymentId)) {
            query["deploymentId"] = request.deploymentId ?? "";
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
            "action": "GetAppliedScheduledPlan",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/scheduled-plans%3AgetExecutedScheduledPlan",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAppliedScheduledPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAppliedScheduledPlan(_ namespace: String, _ request: GetAppliedScheduledPlanRequest) async throws -> GetAppliedScheduledPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetAppliedScheduledPlanHeaders = GetAppliedScheduledPlanHeaders([:])
        return try await getAppliedScheduledPlanWithOptions(namespace as! String, request as! GetAppliedScheduledPlanRequest, headers as! GetAppliedScheduledPlanHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCatalogsWithOptions(_ namespace: String, _ request: GetCatalogsRequest, _ headers: GetCatalogsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCatalogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.catalogName)) {
            query["catalogName"] = request.catalogName ?? "";
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
            "action": "GetCatalogs",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/catalogs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCatalogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCatalogs(_ namespace: String, _ request: GetCatalogsRequest) async throws -> GetCatalogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetCatalogsHeaders = GetCatalogsHeaders([:])
        return try await getCatalogsWithOptions(namespace as! String, request as! GetCatalogsRequest, headers as! GetCatalogsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatabasesWithOptions(_ namespace: String, _ catalogName: String, _ request: GetDatabasesRequest, _ headers: GetDatabasesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDatabasesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.databaseName)) {
            query["databaseName"] = request.databaseName ?? "";
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
            "action": "GetDatabases",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/catalogs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(catalogName)) + "/databases",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDatabasesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDatabases(_ namespace: String, _ catalogName: String, _ request: GetDatabasesRequest) async throws -> GetDatabasesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetDatabasesHeaders = GetDatabasesHeaders([:])
        return try await getDatabasesWithOptions(namespace as! String, catalogName as! String, request as! GetDatabasesRequest, headers as! GetDatabasesHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeployDeploymentDraftResultWithOptions(_ namespace: String, _ ticketId: String, _ headers: GetDeployDeploymentDraftResultHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeployDeploymentDraftResultResponse {
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
            "action": "GetDeployDeploymentDraftResult",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/deployment-drafts/tickets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ticketId)) + "/async-deploy",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeployDeploymentDraftResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeployDeploymentDraftResult(_ namespace: String, _ ticketId: String) async throws -> GetDeployDeploymentDraftResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetDeployDeploymentDraftResultHeaders = GetDeployDeploymentDraftResultHeaders([:])
        return try await getDeployDeploymentDraftResultWithOptions(namespace as! String, ticketId as! String, headers as! GetDeployDeploymentDraftResultHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func getDeploymentDraftWithOptions(_ namespace: String, _ deploymentDraftId: String, _ headers: GetDeploymentDraftHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeploymentDraftResponse {
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
            "action": "GetDeploymentDraft",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/deployment-drafts/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(deploymentDraftId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeploymentDraftResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeploymentDraft(_ namespace: String, _ deploymentDraftId: String) async throws -> GetDeploymentDraftResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetDeploymentDraftHeaders = GetDeploymentDraftHeaders([:])
        return try await getDeploymentDraftWithOptions(namespace as! String, deploymentDraftId as! String, headers as! GetDeploymentDraftHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeploymentDraftLockWithOptions(_ namespace: String, _ request: GetDeploymentDraftLockRequest, _ headers: GetDeploymentDraftLockHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDeploymentDraftLockResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deploymentDraftId)) {
            query["deploymentDraftId"] = request.deploymentDraftId ?? "";
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
            "action": "GetDeploymentDraftLock",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/deployment-drafts/getLock",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDeploymentDraftLockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDeploymentDraftLock(_ namespace: String, _ request: GetDeploymentDraftLockRequest) async throws -> GetDeploymentDraftLockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetDeploymentDraftLockHeaders = GetDeploymentDraftLockHeaders([:])
        return try await getDeploymentDraftLockWithOptions(namespace as! String, request as! GetDeploymentDraftLockRequest, headers as! GetDeploymentDraftLockHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEventsWithOptions(_ namespace: String, _ request: GetEventsRequest, _ headers: GetEventsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEventsResponse {
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
            "action": "GetEvents",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/events",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEvents(_ namespace: String, _ request: GetEventsRequest) async throws -> GetEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetEventsHeaders = GetEventsHeaders([:])
        return try await getEventsWithOptions(namespace as! String, request as! GetEventsRequest, headers as! GetEventsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFolderWithOptions(_ namespace: String, _ request: GetFolderRequest, _ headers: GetFolderHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFolderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.folderId)) {
            query["folderId"] = request.folderId ?? "";
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
            "action": "GetFolder",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/folder",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFolderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFolder(_ namespace: String, _ request: GetFolderRequest) async throws -> GetFolderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetFolderHeaders = GetFolderHeaders([:])
        return try await getFolderWithOptions(namespace as! String, request as! GetFolderRequest, headers as! GetFolderHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func getHotUpdateJobResultWithOptions(_ namespace: String, _ jobHotUpdateId: String, _ headers: GetHotUpdateJobResultHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHotUpdateJobResultResponse {
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
            "action": "GetHotUpdateJobResult",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/jobs/hot-updates/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobHotUpdateId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHotUpdateJobResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHotUpdateJobResult(_ namespace: String, _ jobHotUpdateId: String) async throws -> GetHotUpdateJobResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetHotUpdateJobResultHeaders = GetHotUpdateJobResultHeaders([:])
        return try await getHotUpdateJobResultWithOptions(namespace as! String, jobHotUpdateId as! String, headers as! GetHotUpdateJobResultHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func getLineageInfoWithOptions(_ request: GetLineageInfoRequest, _ headers: GetLineageInfoHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLineageInfoResponse {
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
            "action": "GetLineageInfo",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/meta/v2/lineage",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLineageInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLineageInfo(_ request: GetLineageInfoRequest) async throws -> GetLineageInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetLineageInfoHeaders = GetLineageInfoHeaders([:])
        return try await getLineageInfoWithOptions(request as! GetLineageInfoRequest, headers as! GetLineageInfoHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func getSessionClusterWithOptions(_ namespace: String, _ sessionClusterName: String, _ headers: GetSessionClusterHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSessionClusterResponse {
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
            "action": "GetSessionCluster",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/sessionclusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sessionClusterName)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSessionClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSessionCluster(_ namespace: String, _ sessionClusterName: String) async throws -> GetSessionClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetSessionClusterHeaders = GetSessionClusterHeaders([:])
        return try await getSessionClusterWithOptions(namespace as! String, sessionClusterName as! String, headers as! GetSessionClusterHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTablesWithOptions(_ namespace: String, _ catalogName: String, _ databaseName: String, _ request: GetTablesRequest, _ headers: GetTablesHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTablesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tableName)) {
            query["tableName"] = request.tableName ?? "";
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
            "action": "GetTables",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/catalogs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(catalogName)) + "/databases/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(databaseName)) + "/tables",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTablesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTables(_ namespace: String, _ catalogName: String, _ databaseName: String, _ request: GetTablesRequest) async throws -> GetTablesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetTablesHeaders = GetTablesHeaders([:])
        return try await getTablesWithOptions(namespace as! String, catalogName as! String, databaseName as! String, request as! GetTablesRequest, headers as! GetTablesHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUdfArtifactsWithOptions(_ namespace: String, _ request: GetUdfArtifactsRequest, _ headers: GetUdfArtifactsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUdfArtifactsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.udfArtifactName)) {
            query["udfArtifactName"] = request.udfArtifactName ?? "";
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
            "action": "GetUdfArtifacts",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/udfartifacts",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUdfArtifactsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUdfArtifacts(_ namespace: String, _ request: GetUdfArtifactsRequest) async throws -> GetUdfArtifactsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetUdfArtifactsHeaders = GetUdfArtifactsHeaders([:])
        return try await getUdfArtifactsWithOptions(namespace as! String, request as! GetUdfArtifactsRequest, headers as! GetUdfArtifactsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotUpdateJobWithOptions(_ namespace: String, _ jobId: String, _ headers: HotUpdateJobHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotUpdateJobResponse {
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
            "action": "HotUpdateJob",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId)) + "%3AhotUpdate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotUpdateJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotUpdateJob(_ namespace: String, _ jobId: String) async throws -> HotUpdateJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotUpdateJobHeaders = HotUpdateJobHeaders([:])
        return try await hotUpdateJobWithOptions(namespace as! String, jobId as! String, headers as! HotUpdateJobHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCustomConnectorsWithOptions(_ namespace: String, _ headers: ListCustomConnectorsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCustomConnectorsResponse {
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
            "action": "ListCustomConnectors",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/connectors",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCustomConnectorsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCustomConnectors(_ namespace: String) async throws -> ListCustomConnectorsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListCustomConnectorsHeaders = ListCustomConnectorsHeaders([:])
        return try await listCustomConnectorsWithOptions(namespace as! String, headers as! ListCustomConnectorsHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeploymentDraftsWithOptions(_ namespace: String, _ request: ListDeploymentDraftsRequest, _ headers: ListDeploymentDraftsHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDeploymentDraftsResponse {
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
            "action": "ListDeploymentDrafts",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/deployment-drafts",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDeploymentDraftsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDeploymentDrafts(_ namespace: String, _ request: ListDeploymentDraftsRequest) async throws -> ListDeploymentDraftsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListDeploymentDraftsHeaders = ListDeploymentDraftsHeaders([:])
        return try await listDeploymentDraftsWithOptions(namespace as! String, request as! ListDeploymentDraftsRequest, headers as! ListDeploymentDraftsHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func listScheduledPlanWithOptions(_ namespace: String, _ request: ListScheduledPlanRequest, _ headers: ListScheduledPlanHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListScheduledPlanResponse {
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
            "action": "ListScheduledPlan",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/scheduled-plans",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListScheduledPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listScheduledPlan(_ namespace: String, _ request: ListScheduledPlanRequest) async throws -> ListScheduledPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListScheduledPlanHeaders = ListScheduledPlanHeaders([:])
        return try await listScheduledPlanWithOptions(namespace as! String, request as! ListScheduledPlanRequest, headers as! ListScheduledPlanHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listScheduledPlanExecutedHistoryWithOptions(_ namespace: String, _ request: ListScheduledPlanExecutedHistoryRequest, _ headers: ListScheduledPlanExecutedHistoryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListScheduledPlanExecutedHistoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deploymentId)) {
            query["deploymentId"] = request.deploymentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.origin)) {
            query["origin"] = request.origin ?? "";
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
            "action": "ListScheduledPlanExecutedHistory",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/job-resource-upgradings",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListScheduledPlanExecutedHistoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listScheduledPlanExecutedHistory(_ namespace: String, _ request: ListScheduledPlanExecutedHistoryRequest) async throws -> ListScheduledPlanExecutedHistoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListScheduledPlanExecutedHistoryHeaders = ListScheduledPlanExecutedHistoryHeaders([:])
        return try await listScheduledPlanExecutedHistoryWithOptions(namespace as! String, request as! ListScheduledPlanExecutedHistoryRequest, headers as! ListScheduledPlanExecutedHistoryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSessionClustersWithOptions(_ namespace: String, _ headers: ListSessionClustersHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSessionClustersResponse {
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
            "action": "ListSessionClusters",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/sessionclusters",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSessionClustersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSessionClusters(_ namespace: String) async throws -> ListSessionClustersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ListSessionClustersHeaders = ListSessionClustersHeaders([:])
        return try await listSessionClustersWithOptions(namespace as! String, headers as! ListSessionClustersHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func registerCustomConnectorWithOptions(_ namespace: String, _ request: RegisterCustomConnectorRequest, _ headers: RegisterCustomConnectorHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> RegisterCustomConnectorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jarUrl)) {
            query["jarUrl"] = request.jarUrl ?? "";
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
            "action": "RegisterCustomConnector",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/connectors%3Aregister",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RegisterCustomConnectorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerCustomConnector(_ namespace: String, _ request: RegisterCustomConnectorRequest) async throws -> RegisterCustomConnectorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: RegisterCustomConnectorHeaders = RegisterCustomConnectorHeaders([:])
        return try await registerCustomConnectorWithOptions(namespace as! String, request as! RegisterCustomConnectorRequest, headers as! RegisterCustomConnectorHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerUdfFunctionWithOptions(_ namespace: String, _ request: RegisterUdfFunctionRequest, _ headers: RegisterUdfFunctionHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> RegisterUdfFunctionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.className)) {
            query["className"] = request.className ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.functionName)) {
            query["functionName"] = request.functionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.udfArtifactName)) {
            query["udfArtifactName"] = request.udfArtifactName ?? "";
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
            "action": "RegisterUdfFunction",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/udfartifacts/function%3AregisterUdfFunction",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RegisterUdfFunctionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerUdfFunction(_ namespace: String, _ request: RegisterUdfFunctionRequest) async throws -> RegisterUdfFunctionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: RegisterUdfFunctionHeaders = RegisterUdfFunctionHeaders([:])
        return try await registerUdfFunctionWithOptions(namespace as! String, request as! RegisterUdfFunctionRequest, headers as! RegisterUdfFunctionHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func startSessionClusterWithOptions(_ namespace: String, _ sessionClusterName: String, _ headers: StartSessionClusterHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartSessionClusterResponse {
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
            "action": "StartSessionCluster",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/sessionclusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sessionClusterName)) + "%3Astart",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartSessionClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startSessionCluster(_ namespace: String, _ sessionClusterName: String) async throws -> StartSessionClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: StartSessionClusterHeaders = StartSessionClusterHeaders([:])
        return try await startSessionClusterWithOptions(namespace as! String, sessionClusterName as! String, headers as! StartSessionClusterHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopApplyScheduledPlanWithOptions(_ namespace: String, _ scheduledPlanId: String, _ headers: StopApplyScheduledPlanHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopApplyScheduledPlanResponse {
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
            "action": "StopApplyScheduledPlan",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/scheduled-plans/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(scheduledPlanId)) + "%3Astop",
            "method": "PATCH",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopApplyScheduledPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopApplyScheduledPlan(_ namespace: String, _ scheduledPlanId: String) async throws -> StopApplyScheduledPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: StopApplyScheduledPlanHeaders = StopApplyScheduledPlanHeaders([:])
        return try await stopApplyScheduledPlanWithOptions(namespace as! String, scheduledPlanId as! String, headers as! StopApplyScheduledPlanHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func stopSessionClusterWithOptions(_ namespace: String, _ sessionClusterName: String, _ headers: StopSessionClusterHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopSessionClusterResponse {
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
            "action": "StopSessionCluster",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/sessionclusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sessionClusterName)) + "%3Astop",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopSessionClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopSessionCluster(_ namespace: String, _ sessionClusterName: String) async throws -> StopSessionClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: StopSessionClusterHeaders = StopSessionClusterHeaders([:])
        return try await stopSessionClusterWithOptions(namespace as! String, sessionClusterName as! String, headers as! StopSessionClusterHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func updateDeploymentDraftWithOptions(_ namespace: String, _ deploymentDraftId: String, _ request: UpdateDeploymentDraftRequest, _ headers: UpdateDeploymentDraftHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDeploymentDraftResponse {
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
            "action": "UpdateDeploymentDraft",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/deployment-drafts/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(deploymentDraftId)),
            "method": "PATCH",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDeploymentDraftResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDeploymentDraft(_ namespace: String, _ deploymentDraftId: String, _ request: UpdateDeploymentDraftRequest) async throws -> UpdateDeploymentDraftResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateDeploymentDraftHeaders = UpdateDeploymentDraftHeaders([:])
        return try await updateDeploymentDraftWithOptions(namespace as! String, deploymentDraftId as! String, request as! UpdateDeploymentDraftRequest, headers as! UpdateDeploymentDraftHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDeploymentTargetWithOptions(_ namespace: String, _ deploymentTargetName: String, _ request: UpdateDeploymentTargetRequest, _ headers: UpdateDeploymentTargetHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDeploymentTargetResponse {
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
            "action": "UpdateDeploymentTarget",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/deployment-targets/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(deploymentTargetName)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDeploymentTargetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDeploymentTarget(_ namespace: String, _ deploymentTargetName: String, _ request: UpdateDeploymentTargetRequest) async throws -> UpdateDeploymentTargetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateDeploymentTargetHeaders = UpdateDeploymentTargetHeaders([:])
        return try await updateDeploymentTargetWithOptions(namespace as! String, deploymentTargetName as! String, request as! UpdateDeploymentTargetRequest, headers as! UpdateDeploymentTargetHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFolderWithOptions(_ namespace: String, _ folderId: String, _ request: UpdateFolderRequest, _ headers: UpdateFolderHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFolderResponse {
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
            "action": "UpdateFolder",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/folder/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(folderId)),
            "method": "PATCH",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFolderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFolder(_ namespace: String, _ folderId: String, _ request: UpdateFolderRequest) async throws -> UpdateFolderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateFolderHeaders = UpdateFolderHeaders([:])
        return try await updateFolderWithOptions(namespace as! String, folderId as! String, request as! UpdateFolderRequest, headers as! UpdateFolderHeaders, runtime as! TeaUtils.RuntimeOptions)
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
    public func updateScheduledPlanWithOptions(_ namespace: String, _ scheduledPlanId: String, _ request: UpdateScheduledPlanRequest, _ headers: UpdateScheduledPlanHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateScheduledPlanResponse {
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
            "action": "UpdateScheduledPlan",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/scheduled-plans/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(scheduledPlanId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateScheduledPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateScheduledPlan(_ namespace: String, _ scheduledPlanId: String, _ request: UpdateScheduledPlanRequest) async throws -> UpdateScheduledPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateScheduledPlanHeaders = UpdateScheduledPlanHeaders([:])
        return try await updateScheduledPlanWithOptions(namespace as! String, scheduledPlanId as! String, request as! UpdateScheduledPlanRequest, headers as! UpdateScheduledPlanHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSessionClusterWithOptions(_ namespace: String, _ sessionClusterName: String, _ request: UpdateSessionClusterRequest, _ headers: UpdateSessionClusterHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSessionClusterResponse {
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
            "action": "UpdateSessionCluster",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/sessionclusters/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(sessionClusterName)),
            "method": "PATCH",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSessionClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSessionCluster(_ namespace: String, _ sessionClusterName: String, _ request: UpdateSessionClusterRequest) async throws -> UpdateSessionClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateSessionClusterHeaders = UpdateSessionClusterHeaders([:])
        return try await updateSessionClusterWithOptions(namespace as! String, sessionClusterName as! String, request as! UpdateSessionClusterRequest, headers as! UpdateSessionClusterHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUdfArtifactWithOptions(_ namespace: String, _ udfArtifactName: String, _ request: UpdateUdfArtifactRequest, _ headers: UpdateUdfArtifactHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUdfArtifactResponse {
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
            "action": "UpdateUdfArtifact",
            "version": "2022-07-18",
            "protocol": "HTTPS",
            "pathname": "/api/v2/namespaces/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(namespace)) + "/udfartifacts/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(udfArtifactName)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUdfArtifactResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUdfArtifact(_ namespace: String, _ udfArtifactName: String, _ request: UpdateUdfArtifactRequest) async throws -> UpdateUdfArtifactResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UpdateUdfArtifactHeaders = UpdateUdfArtifactHeaders([:])
        return try await updateUdfArtifactWithOptions(namespace as! String, udfArtifactName as! String, request as! UpdateUdfArtifactRequest, headers as! UpdateUdfArtifactHeaders, runtime as! TeaUtils.RuntimeOptions)
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
