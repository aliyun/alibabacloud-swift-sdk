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
        self._endpoint = try getEndpoint("openapiexplorer", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func apiMcpServerValidateHclWithOptions(_ request: ApiMcpServerValidateHclRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ApiMcpServerValidateHclResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApiMcpServerValidateHcl",
            "version": "2024-11-30",
            "protocol": "HTTPS",
            "pathname": "/terraform/validate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApiMcpServerValidateHclResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func apiMcpServerValidateHcl(_ request: ApiMcpServerValidateHclRequest) async throws -> ApiMcpServerValidateHclResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await apiMcpServerValidateHclWithOptions(request as! ApiMcpServerValidateHclRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApiMcpServerWithOptions(_ request: CreateApiMcpServerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateApiMcpServerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.additionalApiDescriptions)) {
            body["additionalApiDescriptions"] = request.additionalApiDescriptions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.apis)) {
            body["apis"] = request.apis ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.assumeRoleExtraPolicy)) {
            body["assumeRoleExtraPolicy"] = request.assumeRoleExtraPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.assumeRoleName)) {
            body["assumeRoleName"] = request.assumeRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAssumeRole)) {
            body["enableAssumeRole"] = request.enableAssumeRole!;
        }
        if (!TeaUtils.Client.isUnset(request.instructions)) {
            body["instructions"] = request.instructions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.oauthClientId)) {
            body["oauthClientId"] = request.oauthClientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompts)) {
            body["prompts"] = request.prompts ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.systemTools)) {
            body["systemTools"] = request.systemTools ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.terraformTools)) {
            body["terraformTools"] = request.terraformTools ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApiMcpServer",
            "version": "2024-11-30",
            "protocol": "HTTPS",
            "pathname": "/apimcpserver",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateApiMcpServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApiMcpServer(_ request: CreateApiMcpServerRequest) async throws -> CreateApiMcpServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createApiMcpServerWithOptions(request as! CreateApiMcpServerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApiMcpServerWithOptions(_ request: DeleteApiMcpServerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteApiMcpServerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["id"] = request.id ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApiMcpServer",
            "version": "2024-11-30",
            "protocol": "HTTPS",
            "pathname": "/apimcpserver",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteApiMcpServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApiMcpServer(_ request: DeleteApiMcpServerRequest) async throws -> DeleteApiMcpServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteApiMcpServerWithOptions(request as! DeleteApiMcpServerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateCLICommandWithOptions(_ tmpReq: GenerateCLICommandRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateCLICommandResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GenerateCLICommandShrinkRequest = GenerateCLICommandShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.apiParams)) {
            request.apiParamsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.apiParams, "apiParams", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.api)) {
            body["api"] = request.api ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiParamsShrink)) {
            body["apiParams"] = request.apiParamsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            body["apiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            body["product"] = request.product ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["regionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateCLICommand",
            "version": "2024-11-30",
            "protocol": "HTTPS",
            "pathname": "/api/cli/makeCode",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateCLICommandResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateCLICommand(_ request: GenerateCLICommandRequest) async throws -> GenerateCLICommandResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await generateCLICommandWithOptions(request as! GenerateCLICommandRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApiDefinitionWithOptions(_ request: GetApiDefinitionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApiDefinitionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.api)) {
            query["api"] = request.api ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["apiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            query["product"] = request.product ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApiDefinition",
            "version": "2024-11-30",
            "protocol": "HTTPS",
            "pathname": "/api/definition",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetApiDefinitionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApiDefinition(_ request: GetApiDefinitionRequest) async throws -> GetApiDefinitionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getApiDefinitionWithOptions(request as! GetApiDefinitionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApiMcpServerWithOptions(_ request: GetApiMcpServerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetApiMcpServerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["id"] = request.id ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetApiMcpServer",
            "version": "2024-11-30",
            "protocol": "HTTPS",
            "pathname": "/apimcpserver",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetApiMcpServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getApiMcpServer(_ request: GetApiMcpServerRequest) async throws -> GetApiMcpServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getApiMcpServerWithOptions(request as! GetApiMcpServerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getErrorCodeSolutionsWithOptions(_ request: GetErrorCodeSolutionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetErrorCodeSolutionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            query["acceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.errorCode)) {
            query["errorCode"] = request.errorCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.errorMessage)) {
            query["errorMessage"] = request.errorMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            query["product"] = request.product ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetErrorCodeSolutions",
            "version": "2024-11-30",
            "protocol": "HTTPS",
            "pathname": "/getErrorCodeSolutions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetErrorCodeSolutionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getErrorCodeSolutions(_ request: GetErrorCodeSolutionsRequest) async throws -> GetErrorCodeSolutionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getErrorCodeSolutionsWithOptions(request as! GetErrorCodeSolutionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOwnRequestLogWithOptions(_ request: GetOwnRequestLogRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOwnRequestLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logRequestId)) {
            query["logRequestId"] = request.logRequestId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOwnRequestLog",
            "version": "2024-11-30",
            "protocol": "HTTPS",
            "pathname": "/getOwnRequestLog",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOwnRequestLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOwnRequestLog(_ request: GetOwnRequestLogRequest) async throws -> GetOwnRequestLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getOwnRequestLogWithOptions(request as! GetOwnRequestLogRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProductEndpointsWithOptions(_ request: GetProductEndpointsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProductEndpointsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.product)) {
            query["product"] = request.product ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProductEndpoints",
            "version": "2024-11-30",
            "protocol": "HTTPS",
            "pathname": "/product/endpoints",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProductEndpointsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProductEndpoints(_ request: GetProductEndpointsRequest) async throws -> GetProductEndpointsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProductEndpointsWithOptions(request as! GetProductEndpointsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRequestLogWithOptions(_ request: GetRequestLogRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRequestLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logRequestId)) {
            query["logRequestId"] = request.logRequestId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRequestLog",
            "version": "2024-11-30",
            "protocol": "HTTPS",
            "pathname": "/getRequestLog",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRequestLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRequestLog(_ request: GetRequestLogRequest) async throws -> GetRequestLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRequestLogWithOptions(request as! GetRequestLogRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApiDefinitionsWithOptions(_ request: ListApiDefinitionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApiDefinitionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiVersion)) {
            query["apiVersion"] = request.apiVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            query["product"] = request.product ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApiDefinitions",
            "version": "2024-11-30",
            "protocol": "HTTPS",
            "pathname": "/api/definitions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApiDefinitionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApiDefinitions(_ request: ListApiDefinitionsRequest) async throws -> ListApiDefinitionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listApiDefinitionsWithOptions(request as! ListApiDefinitionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApiMcpServerSystemToolsWithOptions(_ request: ListApiMcpServerSystemToolsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApiMcpServerSystemToolsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skip)) {
            query["skip"] = request.skip!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApiMcpServerSystemTools",
            "version": "2024-11-30",
            "protocol": "HTTPS",
            "pathname": "/mcpSystemTools",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApiMcpServerSystemToolsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApiMcpServerSystemTools(_ request: ListApiMcpServerSystemToolsRequest) async throws -> ListApiMcpServerSystemToolsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listApiMcpServerSystemToolsWithOptions(request as! ListApiMcpServerSystemToolsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApiMcpServersWithOptions(_ request: ListApiMcpServersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListApiMcpServersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createTime)) {
            query["createTime"] = request.createTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["id"] = request.id ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["maxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["nextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skip)) {
            query["skip"] = request.skip!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["sourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateTime)) {
            query["updateTime"] = request.updateTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListApiMcpServers",
            "version": "2024-11-30",
            "protocol": "HTTPS",
            "pathname": "/apimcpservers",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListApiMcpServersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listApiMcpServers(_ request: ListApiMcpServersRequest) async throws -> ListApiMcpServersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listApiMcpServersWithOptions(request as! ListApiMcpServersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApiMcpServerWithOptions(_ request: UpdateApiMcpServerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateApiMcpServerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["id"] = request.id ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.additionalApiDescriptions)) {
            body["additionalApiDescriptions"] = request.additionalApiDescriptions ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.apis)) {
            body["apis"] = request.apis ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.assumeRoleExtraPolicy)) {
            body["assumeRoleExtraPolicy"] = request.assumeRoleExtraPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.assumeRoleName)) {
            body["assumeRoleName"] = request.assumeRoleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAssumeRole)) {
            body["enableAssumeRole"] = request.enableAssumeRole!;
        }
        if (!TeaUtils.Client.isUnset(request.instructions)) {
            body["instructions"] = request.instructions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.oauthClientId)) {
            body["oauthClientId"] = request.oauthClientId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompts)) {
            body["prompts"] = request.prompts ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.systemTools)) {
            body["systemTools"] = request.systemTools ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.terraformTools)) {
            body["terraformTools"] = request.terraformTools ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateApiMcpServer",
            "version": "2024-11-30",
            "protocol": "HTTPS",
            "pathname": "/apimcpserver",
            "method": "PATCH",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateApiMcpServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateApiMcpServer(_ request: UpdateApiMcpServerRequest) async throws -> UpdateApiMcpServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateApiMcpServerWithOptions(request as! UpdateApiMcpServerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
