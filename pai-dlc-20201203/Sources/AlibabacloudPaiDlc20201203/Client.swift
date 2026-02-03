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
            "ap-northeast-2-pop": "pai-dlc.aliyuncs.com",
            "ap-south-1": "pai-dlc.aliyuncs.com",
            "ap-southeast-2": "pai-dlc.aliyuncs.com",
            "cn-beijing-finance-1": "pai-dlc.aliyuncs.com",
            "cn-beijing-finance-pop": "pai-dlc.aliyuncs.com",
            "cn-beijing-gov-1": "pai-dlc.aliyuncs.com",
            "cn-beijing-nu16-b01": "pai-dlc.aliyuncs.com",
            "cn-chengdu": "pai-dlc.aliyuncs.com",
            "cn-edge-1": "pai-dlc.aliyuncs.com",
            "cn-fujian": "pai-dlc.aliyuncs.com",
            "cn-haidian-cm12-c01": "pai-dlc.aliyuncs.com",
            "cn-hangzhou-bj-b01": "pai-dlc.aliyuncs.com",
            "cn-hangzhou-finance": "pai-dlc.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "pai-dlc.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "pai-dlc.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "pai-dlc.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "pai-dlc.aliyuncs.com",
            "cn-hangzhou-test-306": "pai-dlc.aliyuncs.com",
            "cn-hongkong-finance-pop": "pai-dlc.aliyuncs.com",
            "cn-huhehaote": "pai-dlc.aliyuncs.com",
            "cn-huhehaote-nebula-1": "pai-dlc.aliyuncs.com",
            "cn-north-2-gov-1": "pai-dlc.aliyuncs.com",
            "cn-qingdao": "pai-dlc.aliyuncs.com",
            "cn-qingdao-nebula": "pai-dlc.aliyuncs.com",
            "cn-shanghai-et15-b01": "pai-dlc.aliyuncs.com",
            "cn-shanghai-et2-b01": "pai-dlc.aliyuncs.com",
            "cn-shanghai-inner": "pai-dlc.aliyuncs.com",
            "cn-shanghai-internal-test-1": "pai-dlc.aliyuncs.com",
            "cn-shenzhen-finance-1": "pai-dlc.aliyuncs.com",
            "cn-shenzhen-inner": "pai-dlc.aliyuncs.com",
            "cn-shenzhen-st4-d01": "pai-dlc.aliyuncs.com",
            "cn-shenzhen-su18-b01": "pai-dlc.aliyuncs.com",
            "cn-wuhan": "pai-dlc.aliyuncs.com",
            "cn-yushanfang": "pai-dlc.aliyuncs.com",
            "cn-zhangbei": "pai-dlc.aliyuncs.com",
            "cn-zhangbei-na61-b01": "pai-dlc.aliyuncs.com",
            "cn-zhangjiakou": "pai-dlc.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "pai-dlc.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "pai-dlc.aliyuncs.com",
            "eu-west-1": "pai-dlc.aliyuncs.com",
            "eu-west-1-oxs": "pai-dlc.aliyuncs.com",
            "me-east-1": "pai-dlc.aliyuncs.com",
            "rus-west-1-pop": "pai-dlc.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("pai-dlc", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createJobWithOptions(_ request: CreateJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeSource)) {
            body["CodeSource"] = request.codeSource!;
        }
        if (!TeaUtils.Client.isUnset(request.credentialConfig)) {
            body["CredentialConfig"] = request.credentialConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.customEnvs)) {
            body["CustomEnvs"] = request.customEnvs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.dataSources)) {
            body["DataSources"] = request.dataSources ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.debuggerConfigContent)) {
            body["DebuggerConfigContent"] = request.debuggerConfigContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["DisplayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.elasticSpec)) {
            body["ElasticSpec"] = request.elasticSpec!;
        }
        if (!TeaUtils.Client.isUnset(request.envs)) {
            body["Envs"] = request.envs ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.jobMaxRunningTimeMinutes)) {
            body["JobMaxRunningTimeMinutes"] = request.jobMaxRunningTimeMinutes!;
        }
        if (!TeaUtils.Client.isUnset(request.jobSpecs)) {
            body["JobSpecs"] = request.jobSpecs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.jobType)) {
            body["JobType"] = request.jobType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.options)) {
            body["Options"] = request.options ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            body["Priority"] = request.priority!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.settings)) {
            body["Settings"] = request.settings!;
        }
        if (!TeaUtils.Client.isUnset(request.successPolicy)) {
            body["SuccessPolicy"] = request.successPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartyLibDir)) {
            body["ThirdpartyLibDir"] = request.thirdpartyLibDir ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartyLibs)) {
            body["ThirdpartyLibs"] = request.thirdpartyLibs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userCommand)) {
            body["UserCommand"] = request.userCommand ?? "";
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
            "action": "CreateJob",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createJob(_ request: CreateJobRequest) async throws -> CreateJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createJobWithOptions(request as! CreateJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTensorboardWithOptions(_ request: CreateTensorboardRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTensorboardResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpu)) {
            body["Cpu"] = request.cpu!;
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceId)) {
            body["DataSourceId"] = request.dataSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSourceType)) {
            body["DataSourceType"] = request.dataSourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataSources)) {
            body["DataSources"] = request.dataSources ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            body["DisplayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            body["JobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxRunningTimeMinutes)) {
            body["MaxRunningTimeMinutes"] = request.maxRunningTimeMinutes!;
        }
        if (!TeaUtils.Client.isUnset(request.memory)) {
            body["Memory"] = request.memory!;
        }
        if (!TeaUtils.Client.isUnset(request.options)) {
            body["Options"] = request.options ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            body["Priority"] = request.priority ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quotaId)) {
            body["QuotaId"] = request.quotaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            body["SourceId"] = request.sourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.summaryPath)) {
            body["SummaryPath"] = request.summaryPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.summaryRelativePath)) {
            body["SummaryRelativePath"] = request.summaryRelativePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tensorboardDataSources)) {
            body["TensorboardDataSources"] = request.tensorboardDataSources ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tensorboardSpec)) {
            body["TensorboardSpec"] = request.tensorboardSpec!;
        }
        if (!TeaUtils.Client.isUnset(request.uri)) {
            body["Uri"] = request.uri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTensorboard",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/tensorboards",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTensorboardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTensorboard(_ request: CreateTensorboardRequest) async throws -> CreateTensorboardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTensorboardWithOptions(request as! CreateTensorboardRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteJobWithOptions(_ JobId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteJobResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteJob",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(JobId)),
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
    public func deleteJob(_ JobId: String) async throws -> DeleteJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteJobWithOptions(JobId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTensorboardWithOptions(_ TensorboardId: String, _ request: DeleteTensorboardRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTensorboardResponse {
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
            "action": "DeleteTensorboard",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/tensorboards/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TensorboardId)),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTensorboardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTensorboard(_ TensorboardId: String, _ request: DeleteTensorboardRequest) async throws -> DeleteTensorboardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteTensorboardWithOptions(TensorboardId as! String, request as! DeleteTensorboardRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDashboardWithOptions(_ jobId: String, _ request: GetDashboardRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDashboardResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isShared)) {
            query["isShared"] = request.isShared!;
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["token"] = request.token ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDashboard",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId)) + "/dashboard",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDashboardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDashboard(_ jobId: String, _ request: GetDashboardRequest) async throws -> GetDashboardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDashboardWithOptions(jobId as! String, request as! GetDashboardRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJobWithOptions(_ JobId: String, _ request: GetJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.needDetail)) {
            query["NeedDetail"] = request.needDetail!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetJob",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(JobId)),
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
    public func getJob(_ JobId: String, _ request: GetJobRequest) async throws -> GetJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getJobWithOptions(JobId as! String, request as! GetJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJobEventsWithOptions(_ JobId: String, _ request: GetJobEventsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetJobEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxEventsNum)) {
            query["MaxEventsNum"] = request.maxEventsNum!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetJobEvents",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(JobId)) + "/events",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetJobEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJobEvents(_ JobId: String, _ request: GetJobEventsRequest) async throws -> GetJobEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getJobEventsWithOptions(JobId as! String, request as! GetJobEventsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJobMetricsWithOptions(_ JobId: String, _ request: GetJobMetricsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetJobMetricsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricType)) {
            query["MetricType"] = request.metricType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeStep)) {
            query["TimeStep"] = request.timeStep ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetJobMetrics",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(JobId)) + "/metrics",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetJobMetricsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJobMetrics(_ JobId: String, _ request: GetJobMetricsRequest) async throws -> GetJobMetricsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getJobMetricsWithOptions(JobId as! String, request as! GetJobMetricsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJobSanityCheckResultWithOptions(_ JobId: String, _ request: GetJobSanityCheckResultRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetJobSanityCheckResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sanityCheckNumber)) {
            query["SanityCheckNumber"] = request.sanityCheckNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.sanityCheckPhase)) {
            query["SanityCheckPhase"] = request.sanityCheckPhase ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetJobSanityCheckResult",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(JobId)) + "/sanitycheckresult",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetJobSanityCheckResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getJobSanityCheckResult(_ JobId: String, _ request: GetJobSanityCheckResultRequest) async throws -> GetJobSanityCheckResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getJobSanityCheckResultWithOptions(JobId as! String, request as! GetJobSanityCheckResultRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPodEventsWithOptions(_ JobId: String, _ PodId: String, _ request: GetPodEventsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPodEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxEventsNum)) {
            query["MaxEventsNum"] = request.maxEventsNum!;
        }
        if (!TeaUtils.Client.isUnset(request.podUid)) {
            query["PodUid"] = request.podUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPodEvents",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(JobId)) + "/pods/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(PodId)) + "/events",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPodEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPodEvents(_ JobId: String, _ PodId: String, _ request: GetPodEventsRequest) async throws -> GetPodEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPodEventsWithOptions(JobId as! String, PodId as! String, request as! GetPodEventsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPodLogsWithOptions(_ JobId: String, _ PodId: String, _ request: GetPodLogsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPodLogsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.downloadToFile)) {
            query["DownloadToFile"] = request.downloadToFile!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxLines)) {
            query["MaxLines"] = request.maxLines!;
        }
        if (!TeaUtils.Client.isUnset(request.podUid)) {
            query["PodUid"] = request.podUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPodLogs",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(JobId)) + "/pods/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(PodId)) + "/logs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPodLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPodLogs(_ JobId: String, _ PodId: String, _ request: GetPodLogsRequest) async throws -> GetPodLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPodLogsWithOptions(JobId as! String, PodId as! String, request as! GetPodLogsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRayDashboardWithOptions(_ jobId: String, _ request: GetRayDashboardRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRayDashboardResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isShared)) {
            query["isShared"] = request.isShared!;
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["token"] = request.token ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRayDashboard",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(jobId)) + "/rayDashboard",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRayDashboardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRayDashboard(_ jobId: String, _ request: GetRayDashboardRequest) async throws -> GetRayDashboardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRayDashboardWithOptions(jobId as! String, request as! GetRayDashboardRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTensorboardWithOptions(_ TensorboardId: String, _ request: GetTensorboardRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTensorboardResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.jodId)) {
            query["JodId"] = request.jodId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTensorboard",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/tensorboards/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TensorboardId)),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTensorboardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTensorboard(_ TensorboardId: String, _ request: GetTensorboardRequest) async throws -> GetTensorboardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTensorboardWithOptions(TensorboardId as! String, request as! GetTensorboardRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTensorboardSharedUrlWithOptions(_ TensorboardId: String, _ request: GetTensorboardSharedUrlRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTensorboardSharedUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.expireTimeSeconds)) {
            query["ExpireTimeSeconds"] = request.expireTimeSeconds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTensorboardSharedUrl",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/tensorboards/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TensorboardId)) + "/sharedurl",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTensorboardSharedUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTensorboardSharedUrl(_ TensorboardId: String, _ request: GetTensorboardSharedUrlRequest) async throws -> GetTensorboardSharedUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTensorboardSharedUrlWithOptions(TensorboardId as! String, request as! GetTensorboardSharedUrlRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTokenWithOptions(_ request: GetTokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.expireTime)) {
            query["ExpireTime"] = request.expireTime!;
        }
        if (!TeaUtils.Client.isUnset(request.targetId)) {
            query["TargetId"] = request.targetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetType)) {
            query["TargetType"] = request.targetType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetToken",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/tokens",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getToken(_ request: GetTokenRequest) async throws -> GetTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTokenWithOptions(request as! GetTokenRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWebTerminalWithOptions(_ JobId: String, _ PodId: String, _ request: GetWebTerminalRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWebTerminalResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isShared)) {
            query["IsShared"] = request.isShared!;
        }
        if (!TeaUtils.Client.isUnset(request.podUid)) {
            query["PodUid"] = request.podUid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWebTerminal",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(JobId)) + "/pods/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(PodId)) + "/webterminal",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWebTerminalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWebTerminal(_ JobId: String, _ PodId: String, _ request: GetWebTerminalRequest) async throws -> GetWebTerminalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getWebTerminalWithOptions(JobId as! String, PodId as! String, request as! GetWebTerminalRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEcsSpecsWithOptions(_ request: ListEcsSpecsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEcsSpecsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceleratorType)) {
            query["AcceleratorType"] = request.acceleratorType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceTypes)) {
            query["InstanceTypes"] = request.instanceTypes ?? "";
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
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEcsSpecs",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/ecsspecs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEcsSpecsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEcsSpecs(_ request: ListEcsSpecsRequest) async throws -> ListEcsSpecsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listEcsSpecsWithOptions(request as! ListEcsSpecsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobSanityCheckResultsWithOptions(_ JobId: String, _ request: ListJobSanityCheckResultsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListJobSanityCheckResultsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListJobSanityCheckResults",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(JobId)) + "/sanitycheckresults",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListJobSanityCheckResultsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobSanityCheckResults(_ JobId: String, _ request: ListJobSanityCheckResultsRequest) async throws -> ListJobSanityCheckResultsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listJobSanityCheckResultsWithOptions(JobId as! String, request as! ListJobSanityCheckResultsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listJobsWithOptions(_ tmpReq: ListJobsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListJobsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListJobsShrinkRequest = ListJobsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            query["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessUserId)) {
            query["BusinessUserId"] = request.businessUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.caller)) {
            query["Caller"] = request.caller ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            query["DisplayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayNameSearchMode)) {
            query["DisplayNameSearchMode"] = request.displayNameSearchMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAssignNode)) {
            query["EnableAssignNode"] = request.enableAssignNode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fromAllWorkspaces)) {
            query["FromAllWorkspaces"] = request.fromAllWorkspaces!;
        }
        if (!TeaUtils.Client.isUnset(request.imageSearch)) {
            query["ImageSearch"] = request.imageSearch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobIds)) {
            query["JobIds"] = request.jobIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobType)) {
            query["JobType"] = request.jobType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.numericRangeField)) {
            query["NumericRangeField"] = request.numericRangeField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.numericRangeMax)) {
            query["NumericRangeMax"] = request.numericRangeMax!;
        }
        if (!TeaUtils.Client.isUnset(request.numericRangeMin)) {
            query["NumericRangeMin"] = request.numericRangeMin!;
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.oversoldInfo)) {
            query["OversoldInfo"] = request.oversoldInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.paymentType)) {
            query["PaymentType"] = request.paymentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pipelineId)) {
            query["PipelineId"] = request.pipelineId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reasonSearch)) {
            query["ReasonSearch"] = request.reasonSearch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceQuotaName)) {
            query["ResourceQuotaName"] = request.resourceQuotaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showOwn)) {
            query["ShowOwn"] = request.showOwn!;
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["Tags"] = request.tagsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeRangeField)) {
            query["TimeRangeField"] = request.timeRangeField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userCommandSearch)) {
            query["UserCommandSearch"] = request.userCommandSearch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIdForFilter)) {
            query["UserIdForFilter"] = request.userIdForFilter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            query["Username"] = request.username ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListJobs",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs",
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
    public func listJobs(_ request: ListJobsRequest) async throws -> ListJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listJobsWithOptions(request as! ListJobsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTensorboardsWithOptions(_ request: ListTensorboardsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTensorboardsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            query["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayName)) {
            query["DisplayName"] = request.displayName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobId)) {
            query["JobId"] = request.jobId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.paymentType)) {
            query["PaymentType"] = request.paymentType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quotaId)) {
            query["QuotaId"] = request.quotaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.showOwn)) {
            query["ShowOwn"] = request.showOwn!;
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceId)) {
            query["SourceId"] = request.sourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tensorboardId)) {
            query["TensorboardId"] = request.tensorboardId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            query["Username"] = request.username ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verbose)) {
            query["Verbose"] = request.verbose!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTensorboards",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/tensorboards",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTensorboardsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTensorboards(_ request: ListTensorboardsRequest) async throws -> ListTensorboardsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTensorboardsWithOptions(request as! ListTensorboardsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startTensorboardWithOptions(_ TensorboardId: String, _ request: StartTensorboardRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartTensorboardResponse {
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
            "action": "StartTensorboard",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/tensorboards/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TensorboardId)) + "/start",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartTensorboardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startTensorboard(_ TensorboardId: String, _ request: StartTensorboardRequest) async throws -> StartTensorboardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startTensorboardWithOptions(TensorboardId as! String, request as! StartTensorboardRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopJobWithOptions(_ JobId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopJobResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopJob",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(JobId)) + "/stop",
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
    public func stopJob(_ JobId: String) async throws -> StopJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopJobWithOptions(JobId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopTensorboardWithOptions(_ TensorboardId: String, _ request: StopTensorboardRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopTensorboardResponse {
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
            "action": "StopTensorboard",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/tensorboards/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TensorboardId)) + "/stop",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopTensorboardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopTensorboard(_ TensorboardId: String, _ request: StopTensorboardRequest) async throws -> StopTensorboardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopTensorboardWithOptions(TensorboardId as! String, request as! StopTensorboardRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateJobWithOptions(_ JobId: String, _ request: UpdateJobRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateJobResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobSpecs)) {
            body["JobSpecs"] = request.jobSpecs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            body["Priority"] = request.priority!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateJob",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/jobs/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(JobId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateJob(_ JobId: String, _ request: UpdateJobRequest) async throws -> UpdateJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateJobWithOptions(JobId as! String, request as! UpdateJobRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTensorboardWithOptions(_ TensorboardId: String, _ request: UpdateTensorboardRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTensorboardResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            query["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxRunningTimeMinutes)) {
            query["MaxRunningTimeMinutes"] = request.maxRunningTimeMinutes!;
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            query["Priority"] = request.priority ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTensorboard",
            "version": "2020-12-03",
            "protocol": "HTTPS",
            "pathname": "/api/v1/tensorboards/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(TensorboardId)),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTensorboardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTensorboard(_ TensorboardId: String, _ request: UpdateTensorboardRequest) async throws -> UpdateTensorboardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateTensorboardWithOptions(TensorboardId as! String, request as! UpdateTensorboardRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
