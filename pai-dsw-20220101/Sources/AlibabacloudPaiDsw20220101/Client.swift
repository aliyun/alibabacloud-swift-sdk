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
        self._endpoint = try getEndpoint("pai-dsw", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createIdleInstanceCullerWithOptions(_ InstanceId: String, _ request: CreateIdleInstanceCullerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIdleInstanceCullerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cpuPercentThreshold)) {
            body["CpuPercentThreshold"] = request.cpuPercentThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.gpuPercentThreshold)) {
            body["GpuPercentThreshold"] = request.gpuPercentThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.maxIdleTimeInMinutes)) {
            body["MaxIdleTimeInMinutes"] = request.maxIdleTimeInMinutes!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIdleInstanceCuller",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId) + "/idleinstanceculler",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIdleInstanceCullerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIdleInstanceCuller(_ InstanceId: String, _ request: CreateIdleInstanceCullerRequest) async throws -> CreateIdleInstanceCullerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createIdleInstanceCullerWithOptions(InstanceId as! String, request as! CreateIdleInstanceCullerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceWithOptions(_ request: CreateInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cloudDisks)) {
            body["CloudDisks"] = request.cloudDisks ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.datasets)) {
            body["Datasets"] = request.datasets ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.driver)) {
            body["Driver"] = request.driver ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecsSpec)) {
            body["EcsSpec"] = request.ecsSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.environmentVariables)) {
            body["EnvironmentVariables"] = request.environmentVariables ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            body["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            body["Priority"] = request.priority!;
        }
        if (!TeaUtils.Client.isUnset(request.requestedResource)) {
            body["RequestedResource"] = request.requestedResource!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userVpc)) {
            body["UserVpc"] = request.userVpc!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            body["WorkspaceId"] = request.workspaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceSource)) {
            body["WorkspaceSource"] = request.workspaceSource ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateInstance",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/instances",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstance(_ request: CreateInstanceRequest) async throws -> CreateInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createInstanceWithOptions(request as! CreateInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceShutdownTimerWithOptions(_ InstanceId: String, _ request: CreateInstanceShutdownTimerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateInstanceShutdownTimerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dueTime)) {
            body["DueTime"] = request.dueTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remainingTimeInMs)) {
            body["RemainingTimeInMs"] = request.remainingTimeInMs!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateInstanceShutdownTimer",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId) + "/shutdowntimer",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateInstanceShutdownTimerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceShutdownTimer(_ InstanceId: String, _ request: CreateInstanceShutdownTimerRequest) async throws -> CreateInstanceShutdownTimerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createInstanceShutdownTimerWithOptions(InstanceId as! String, request as! CreateInstanceShutdownTimerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceSnapshotWithOptions(_ InstanceId: String, _ request: CreateInstanceSnapshotRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateInstanceSnapshotResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.excludePaths)) {
            body["ExcludePaths"] = request.excludePaths ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.overwrite)) {
            body["Overwrite"] = request.overwrite!;
        }
        if (!TeaUtils.Client.isUnset(request.snapshotDescription)) {
            body["SnapshotDescription"] = request.snapshotDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotName)) {
            body["SnapshotName"] = request.snapshotName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateInstanceSnapshot",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId) + "/snapshots",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateInstanceSnapshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceSnapshot(_ InstanceId: String, _ request: CreateInstanceSnapshotRequest) async throws -> CreateInstanceSnapshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createInstanceSnapshotWithOptions(InstanceId as! String, request as! CreateInstanceSnapshotRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIdleInstanceCullerWithOptions(_ InstanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteIdleInstanceCullerResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteIdleInstanceCuller",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId) + "/idleinstanceculler",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteIdleInstanceCullerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIdleInstanceCuller(_ InstanceId: String) async throws -> DeleteIdleInstanceCullerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteIdleInstanceCullerWithOptions(InstanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstanceWithOptions(_ InstanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteInstanceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteInstance",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstance(_ InstanceId: String) async throws -> DeleteInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteInstanceWithOptions(InstanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstanceShutdownTimerWithOptions(_ InstanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteInstanceShutdownTimerResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteInstanceShutdownTimer",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId) + "/shutdowntimer",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteInstanceShutdownTimerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstanceShutdownTimer(_ InstanceId: String) async throws -> DeleteInstanceShutdownTimerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteInstanceShutdownTimerWithOptions(InstanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstanceSnapshotWithOptions(_ InstanceId: String, _ SnapshotId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteInstanceSnapshotResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteInstanceSnapshot",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId) + "/snapshots/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(SnapshotId),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteInstanceSnapshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstanceSnapshot(_ InstanceId: String, _ SnapshotId: String) async throws -> DeleteInstanceSnapshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteInstanceSnapshotWithOptions(InstanceId as! String, SnapshotId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIdleInstanceCullerWithOptions(_ InstanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIdleInstanceCullerResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIdleInstanceCuller",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId) + "/idleinstanceculler",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIdleInstanceCullerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIdleInstanceCuller(_ InstanceId: String) async throws -> GetIdleInstanceCullerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getIdleInstanceCullerWithOptions(InstanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceWithOptions(_ InstanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstance",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId),
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
    public func getInstance(_ InstanceId: String) async throws -> GetInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getInstanceWithOptions(InstanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceMetricsWithOptions(_ InstanceId: String, _ request: GetInstanceMetricsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceMetricsResponse {
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstanceMetrics",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/instance/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId) + "/metrics",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceMetricsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceMetrics(_ InstanceId: String, _ request: GetInstanceMetricsRequest) async throws -> GetInstanceMetricsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getInstanceMetricsWithOptions(InstanceId as! String, request as! GetInstanceMetricsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceShutdownTimerWithOptions(_ InstanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceShutdownTimerResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstanceShutdownTimer",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId) + "/shutdowntimer",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceShutdownTimerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceShutdownTimer(_ InstanceId: String) async throws -> GetInstanceShutdownTimerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getInstanceShutdownTimerWithOptions(InstanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceSnapshotWithOptions(_ InstanceId: String, _ SnapshotId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceSnapshotResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstanceSnapshot",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId) + "/snapshots/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(SnapshotId),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceSnapshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceSnapshot(_ InstanceId: String, _ SnapshotId: String) async throws -> GetInstanceSnapshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getInstanceSnapshotWithOptions(InstanceId as! String, SnapshotId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLifecycleWithOptions(_ InstanceId: String, _ request: GetLifecycleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLifecycleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionNumber)) {
            query["SessionNumber"] = request.sessionNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLifecycle",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId) + "/lifecycle",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLifecycleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLifecycle(_ InstanceId: String, _ request: GetLifecycleRequest) async throws -> GetLifecycleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getLifecycleWithOptions(InstanceId as! String, request as! GetLifecycleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceGroupStatisticsWithOptions(_ request: GetResourceGroupStatisticsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceGroupStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceIds)) {
            query["WorkspaceIds"] = request.workspaceIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceGroupStatistics",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/resourcegroupstatistics",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceGroupStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceGroupStatistics(_ request: GetResourceGroupStatisticsRequest) async throws -> GetResourceGroupStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getResourceGroupStatisticsWithOptions(request as! GetResourceGroupStatisticsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTokenWithOptions(_ request: GetTokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.expireTime)) {
            query["ExpireTime"] = request.expireTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetToken",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/tokens",
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
    public func getUserConfigWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserConfigResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserConfig",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/userconfig",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserConfig() async throws -> GetUserConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getUserConfigWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEcsSpecsWithOptions(_ request: ListEcsSpecsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEcsSpecsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceleratorType)) {
            query["AcceleratorType"] = request.acceleratorType ?? "";
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
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEcsSpecs",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/ecsspecs",
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
    public func listInstanceSnapshotWithOptions(_ InstanceId: String, _ request: ListInstanceSnapshotRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstanceSnapshotResponse {
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
            "action": "ListInstanceSnapshot",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId) + "/snapshots",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstanceSnapshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceSnapshot(_ InstanceId: String, _ request: ListInstanceSnapshotRequest) async throws -> ListInstanceSnapshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listInstanceSnapshotWithOptions(InstanceId as! String, request as! ListInstanceSnapshotRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceStatisticsWithOptions(_ request: ListInstanceStatisticsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstanceStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.workspaceIds)) {
            query["WorkspaceIds"] = request.workspaceIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstanceStatistics",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/instancestatistics",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstanceStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstanceStatistics(_ request: ListInstanceStatisticsRequest) async throws -> ListInstanceStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listInstanceStatisticsWithOptions(request as! ListInstanceStatisticsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstancesWithOptions(_ request: ListInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceleratorType)) {
            query["AcceleratorType"] = request.acceleratorType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            query["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
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
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
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
            "action": "ListInstances",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/instances",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstances(_ request: ListInstancesRequest) async throws -> ListInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listInstancesWithOptions(request as! ListInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startInstanceWithOptions(_ InstanceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartInstanceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartInstance",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId) + "/start",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startInstance(_ InstanceId: String) async throws -> StartInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startInstanceWithOptions(InstanceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopInstanceWithOptions(_ InstanceId: String, _ request: StopInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.saveImage)) {
            query["SaveImage"] = request.saveImage!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopInstance",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId) + "/stop",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopInstance(_ InstanceId: String, _ request: StopInstanceRequest) async throws -> StopInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopInstanceWithOptions(InstanceId as! String, request as! StopInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceWithOptions(_ InstanceId: String, _ request: UpdateInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessibility)) {
            body["Accessibility"] = request.accessibility ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.datasets)) {
            body["Datasets"] = request.datasets ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.disassociateDatasets)) {
            body["DisassociateDatasets"] = request.disassociateDatasets!;
        }
        if (!TeaUtils.Client.isUnset(request.disassociateDriver)) {
            body["DisassociateDriver"] = request.disassociateDriver!;
        }
        if (!TeaUtils.Client.isUnset(request.disassociateVpc)) {
            body["DisassociateVpc"] = request.disassociateVpc!;
        }
        if (!TeaUtils.Client.isUnset(request.driver)) {
            body["Driver"] = request.driver ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecsSpec)) {
            body["EcsSpec"] = request.ecsSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            body["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            body["Priority"] = request.priority!;
        }
        if (!TeaUtils.Client.isUnset(request.requestedResource)) {
            body["RequestedResource"] = request.requestedResource!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["UserId"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userVpc)) {
            body["UserVpc"] = request.userVpc!;
        }
        if (!TeaUtils.Client.isUnset(request.workspaceSource)) {
            body["WorkspaceSource"] = request.workspaceSource ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateInstance",
            "version": "2022-01-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstance(_ InstanceId: String, _ request: UpdateInstanceRequest) async throws -> UpdateInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateInstanceWithOptions(InstanceId as! String, request as! UpdateInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
