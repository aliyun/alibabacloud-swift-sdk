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
        self._endpoint = try getEndpoint("paiautoml", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createAutofeExperimentWithOptions(_ request: CreateAutofeExperimentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAutofeExperimentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autofeExperimentConfiguration)) {
            body["AutofeExperimentConfiguration"] = request.autofeExperimentConfiguration!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAutofeExperiment",
            "version": "2022-08-28",
            "protocol": "HTTPS",
            "pathname": "/api/automl/v1/autofe/experiment",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAutofeExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAutofeExperiment(_ request: CreateAutofeExperimentRequest) async throws -> CreateAutofeExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAutofeExperimentWithOptions(request as! CreateAutofeExperimentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHpoExperimentWithOptions(_ request: CreateHpoExperimentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateHpoExperimentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hpoExperimentConfiguration)) {
            body["HpoExperimentConfiguration"] = request.hpoExperimentConfiguration!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateHpoExperiment",
            "version": "2022-08-28",
            "protocol": "HTTPS",
            "pathname": "/api/automl/v1/hpo/experiment",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateHpoExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHpoExperiment(_ request: CreateHpoExperimentRequest) async throws -> CreateHpoExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createHpoExperimentWithOptions(request as! CreateHpoExperimentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceIdentityRoleWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceIdentityRoleResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateServiceIdentityRole",
            "version": "2022-08-28",
            "protocol": "HTTPS",
            "pathname": "/api/automl/v1/serviceidentityrole",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceIdentityRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceIdentityRole() async throws -> CreateServiceIdentityRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createServiceIdentityRoleWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHpoExperimentWithOptions(_ ExperimentId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteHpoExperimentResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteHpoExperiment",
            "version": "2022-08-28",
            "protocol": "HTTPS",
            "pathname": "/api/automl/v1/hpo/experiment/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)) + "/delete",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteHpoExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHpoExperiment(_ ExperimentId: String) async throws -> DeleteHpoExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteHpoExperimentWithOptions(ExperimentId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAutofeExperimentWithOptions(_ ExperimentId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAutofeExperimentResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAutofeExperiment",
            "version": "2022-08-28",
            "protocol": "HTTPS",
            "pathname": "/api/automl/v1/autofe/experiment/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAutofeExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAutofeExperiment(_ ExperimentId: String) async throws -> GetAutofeExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getAutofeExperimentWithOptions(ExperimentId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHpoExperimentWithOptions(_ ExperimentId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHpoExperimentResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHpoExperiment",
            "version": "2022-08-28",
            "protocol": "HTTPS",
            "pathname": "/api/automl/v1/hpo/experiment/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHpoExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHpoExperiment(_ ExperimentId: String) async throws -> GetHpoExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getHpoExperimentWithOptions(ExperimentId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHpoTrialWithOptions(_ ExperimentId: String, _ TrialId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHpoTrialResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHpoTrial",
            "version": "2022-08-28",
            "protocol": "HTTPS",
            "pathname": "/api/automl/v1/hpo/experiment/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)) + "/trial/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrialId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHpoTrialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHpoTrial(_ ExperimentId: String, _ TrialId: String) async throws -> GetHpoTrialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getHpoTrialWithOptions(ExperimentId as! String, TrialId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceIdentityRoleWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceIdentityRoleResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetServiceIdentityRole",
            "version": "2022-08-28",
            "protocol": "HTTPS",
            "pathname": "/api/automl/v1/serviceidentityrole",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceIdentityRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceIdentityRole() async throws -> GetServiceIdentityRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getServiceIdentityRoleWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHpoExperimentLogsWithOptions(_ ExperimentId: String, _ request: ListHpoExperimentLogsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHpoExperimentLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logName)) {
            query["LogName"] = request.logName ?? "";
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
            "action": "ListHpoExperimentLogs",
            "version": "2022-08-28",
            "protocol": "HTTPS",
            "pathname": "/api/automl/v1/hpo/experiment/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)) + "/logs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHpoExperimentLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHpoExperimentLogs(_ ExperimentId: String, _ request: ListHpoExperimentLogsRequest) async throws -> ListHpoExperimentLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listHpoExperimentLogsWithOptions(ExperimentId as! String, request as! ListHpoExperimentLogsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHpoExperimentsWithOptions(_ request: ListHpoExperimentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHpoExperimentsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            query["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.creator)) {
            query["Creator"] = request.creator ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includeConfigData)) {
            query["IncludeConfigData"] = request.includeConfigData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxCreateTime)) {
            query["MaxCreateTime"] = request.maxCreateTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.minCreateTime)) {
            query["MinCreateTime"] = request.minCreateTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
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
            "action": "ListHpoExperiments",
            "version": "2022-08-28",
            "protocol": "HTTPS",
            "pathname": "/api/automl/v1/hpo/experiments",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHpoExperimentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHpoExperiments(_ request: ListHpoExperimentsRequest) async throws -> ListHpoExperimentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listHpoExperimentsWithOptions(request as! ListHpoExperimentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHpoTrialCommandsWithOptions(_ ExperimentId: String, _ TrialId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHpoTrialCommandsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHpoTrialCommands",
            "version": "2022-08-28",
            "protocol": "HTTPS",
            "pathname": "/api/automl/v1/hpo/experiment/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)) + "/trial/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrialId)) + "/commands",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHpoTrialCommandsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHpoTrialCommands(_ ExperimentId: String, _ TrialId: String) async throws -> ListHpoTrialCommandsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listHpoTrialCommandsWithOptions(ExperimentId as! String, TrialId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHpoTrialLogNamesWithOptions(_ ExperimentId: String, _ TrialId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHpoTrialLogNamesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHpoTrialLogNames",
            "version": "2022-08-28",
            "protocol": "HTTPS",
            "pathname": "/api/automl/v1/hpo/experiment/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)) + "/trial/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrialId)) + "/lognames",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHpoTrialLogNamesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHpoTrialLogNames(_ ExperimentId: String, _ TrialId: String) async throws -> ListHpoTrialLogNamesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listHpoTrialLogNamesWithOptions(ExperimentId as! String, TrialId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHpoTrialLogsWithOptions(_ ExperimentId: String, _ TrialId: String, _ request: ListHpoTrialLogsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHpoTrialLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logName)) {
            query["LogName"] = request.logName ?? "";
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
            "action": "ListHpoTrialLogs",
            "version": "2022-08-28",
            "protocol": "HTTPS",
            "pathname": "/api/automl/v1/hpo/experiment/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)) + "/trial/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TrialId)) + "/logs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHpoTrialLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHpoTrialLogs(_ ExperimentId: String, _ TrialId: String, _ request: ListHpoTrialLogsRequest) async throws -> ListHpoTrialLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listHpoTrialLogsWithOptions(ExperimentId as! String, TrialId as! String, request as! ListHpoTrialLogsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHpoTrialsWithOptions(_ ExperimentId: String, _ request: ListHpoTrialsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHpoTrialsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListHpoTrials",
            "version": "2022-08-28",
            "protocol": "HTTPS",
            "pathname": "/api/automl/v1/hpo/experiment/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)) + "/trials",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHpoTrialsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHpoTrials(_ ExperimentId: String, _ request: ListHpoTrialsRequest) async throws -> ListHpoTrialsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listHpoTrialsWithOptions(ExperimentId as! String, request as! ListHpoTrialsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartHpoTrialsWithOptions(_ ExperimentId: String, _ request: RestartHpoTrialsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RestartHpoTrialsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.trialHyperParameters)) {
            body["TrialHyperParameters"] = request.trialHyperParameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trialIds)) {
            body["TrialIds"] = request.trialIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RestartHpoTrials",
            "version": "2022-08-28",
            "protocol": "HTTPS",
            "pathname": "/api/automl/v1/hpo/experiment/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)) + "/restart_trials",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RestartHpoTrialsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func restartHpoTrials(_ ExperimentId: String, _ request: RestartHpoTrialsRequest) async throws -> RestartHpoTrialsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await restartHpoTrialsWithOptions(ExperimentId as! String, request as! RestartHpoTrialsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopHpoExperimentWithOptions(_ ExperimentId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopHpoExperimentResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopHpoExperiment",
            "version": "2022-08-28",
            "protocol": "HTTPS",
            "pathname": "/api/automl/v1/hpo/experiment/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)) + "/stop",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopHpoExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopHpoExperiment(_ ExperimentId: String) async throws -> StopHpoExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopHpoExperimentWithOptions(ExperimentId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopHpoTrialsWithOptions(_ ExperimentId: String, _ request: StopHpoTrialsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopHpoTrialsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.trialIds)) {
            body["TrialIds"] = request.trialIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopHpoTrials",
            "version": "2022-08-28",
            "protocol": "HTTPS",
            "pathname": "/api/automl/v1/hpo/experiment/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)) + "/stop_trials",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopHpoTrialsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopHpoTrials(_ ExperimentId: String, _ request: StopHpoTrialsRequest) async throws -> StopHpoTrialsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopHpoTrialsWithOptions(ExperimentId as! String, request as! StopHpoTrialsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHpoExperimentWithOptions(_ ExperimentId: String, _ request: UpdateHpoExperimentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateHpoExperimentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hpoExperimentConfiguration)) {
            body["HpoExperimentConfiguration"] = request.hpoExperimentConfiguration!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateHpoExperiment",
            "version": "2022-08-28",
            "protocol": "HTTPS",
            "pathname": "/api/automl/v1/hpo/experiment/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(ExperimentId)) + "/update",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateHpoExperimentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateHpoExperiment(_ ExperimentId: String, _ request: UpdateHpoExperimentRequest) async throws -> UpdateHpoExperimentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateHpoExperimentWithOptions(ExperimentId as! String, request as! UpdateHpoExperimentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
