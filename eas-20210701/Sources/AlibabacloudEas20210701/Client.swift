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
            "cn-beijing": "pai-eas.cn-beijing.aliyuncs.com",
            "cn-zhangjiakou": "pai-eas.cn-zhangjiakou.aliyuncs.com",
            "cn-hangzhou": "pai-eas.cn-hangzhou.aliyuncs.com",
            "cn-shanghai": "pai-eas.cn-shanghai.aliyuncs.com",
            "cn-shenzhen": "pai-eas.cn-shenzhen.aliyuncs.com",
            "cn-hongkong": "pai-eas.cn-hongkong.aliyuncs.com",
            "ap-southeast-1": "pai-eas.ap-southeast-1.aliyuncs.com",
            "ap-southeast-5": "pai-eas.ap-southeast-5.aliyuncs.com",
            "us-east-1": "pai-eas.us-east-1.aliyuncs.com",
            "us-west-1": "pai-eas.us-west-1.aliyuncs.com",
            "eu-central-1": "pai-eas.eu-central-1.aliyuncs.com",
            "ap-south-1": "pai-eas.ap-south-1.aliyuncs.com",
            "cn-shanghai-finance-1": "pai-eas.cn-shanghai-finance-1.aliyuncs.com",
            "cn-north-2-gov-1": "pai-eas.cn-north-2-gov-1.aliyuncs.com",
            "cn-chengdu": "pai-eas.cn-chengdu.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("eas", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func commitServiceWithOptions(_ ClusterId: String, _ ServiceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CommitServiceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CommitService",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/commit",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CommitServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func commitService(_ ClusterId: String, _ ServiceName: String) async throws -> CommitServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await commitServiceWithOptions(ClusterId as! String, ServiceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBenchmarkTaskWithOptions(_ request: CreateBenchmarkTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBenchmarkTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBenchmarkTask",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/benchmark-tasks",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateBenchmarkTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBenchmarkTask(_ request: CreateBenchmarkTaskRequest) async throws -> CreateBenchmarkTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createBenchmarkTaskWithOptions(request as! CreateBenchmarkTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResourceWithOptions(_ request: CreateResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoRenewal)) {
            body["AutoRenewal"] = request.autoRenewal!;
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            body["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecsInstanceCount)) {
            body["EcsInstanceCount"] = request.ecsInstanceCount!;
        }
        if (!TeaUtils.Client.isUnset(request.ecsInstanceType)) {
            body["EcsInstanceType"] = request.ecsInstanceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateResource",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/resources",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResource(_ request: CreateResourceRequest) async throws -> CreateResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createResourceWithOptions(request as! CreateResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResourceInstancesWithOptions(_ ClusterId: String, _ ResourceId: String, _ request: CreateResourceInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateResourceInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoRenewal)) {
            body["AutoRenewal"] = request.autoRenewal!;
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            body["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecsInstanceCount)) {
            body["EcsInstanceCount"] = request.ecsInstanceCount!;
        }
        if (!TeaUtils.Client.isUnset(request.ecsInstanceType)) {
            body["EcsInstanceType"] = request.ecsInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            body["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateResourceInstances",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/resources/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceId) + "/instances",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateResourceInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResourceInstances(_ ClusterId: String, _ ResourceId: String, _ request: CreateResourceInstancesRequest) async throws -> CreateResourceInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createResourceInstancesWithOptions(ClusterId as! String, ResourceId as! String, request as! CreateResourceInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResourceLogWithOptions(_ ClusterId: String, _ ResourceId: String, _ request: CreateResourceLogRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateResourceLogResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.logStore)) {
            body["LogStore"] = request.logStore ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["ProjectName"] = request.projectName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateResourceLog",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/resources/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceId) + "/log",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateResourceLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResourceLog(_ ClusterId: String, _ ResourceId: String, _ request: CreateResourceLogRequest) async throws -> CreateResourceLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createResourceLogWithOptions(ClusterId as! String, ResourceId as! String, request as! CreateResourceLogRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceWithOptions(_ tmpReq: CreateServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateServiceShrinkRequest = CreateServiceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.labels)) {
            request.labelsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.labels, "Labels", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.develop)) {
            query["Develop"] = request.develop ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelsShrink)) {
            query["Labels"] = request.labelsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateService",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createService(_ request: CreateServiceRequest) async throws -> CreateServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createServiceWithOptions(request as! CreateServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceAutoScalerWithOptions(_ ClusterId: String, _ ServiceName: String, _ request: CreateServiceAutoScalerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceAutoScalerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.max)) {
            body["max"] = request.max!;
        }
        if (!TeaUtils.Client.isUnset(request.min)) {
            body["min"] = request.min!;
        }
        if (!TeaUtils.Client.isUnset(request.scaleStrategies)) {
            body["scaleStrategies"] = request.scaleStrategies ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateServiceAutoScaler",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/autoscaler",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceAutoScalerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceAutoScaler(_ ClusterId: String, _ ServiceName: String, _ request: CreateServiceAutoScalerRequest) async throws -> CreateServiceAutoScalerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createServiceAutoScalerWithOptions(ClusterId as! String, ServiceName as! String, request as! CreateServiceAutoScalerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceCronScalerWithOptions(_ ClusterId: String, _ ServiceName: String, _ request: CreateServiceCronScalerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceCronScalerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.excludeDates)) {
            body["ExcludeDates"] = request.excludeDates ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.scaleJobs)) {
            body["ScaleJobs"] = request.scaleJobs ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateServiceCronScaler",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/cronscaler",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceCronScalerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceCronScaler(_ ClusterId: String, _ ServiceName: String, _ request: CreateServiceCronScalerRequest) async throws -> CreateServiceCronScalerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createServiceCronScalerWithOptions(ClusterId as! String, ServiceName as! String, request as! CreateServiceCronScalerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceMirrorWithOptions(_ ClusterId: String, _ ServiceName: String, _ request: CreateServiceMirrorRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceMirrorResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ratio)) {
            body["Ratio"] = request.ratio!;
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            body["Target"] = request.target ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateServiceMirror",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/mirror",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceMirrorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceMirror(_ ClusterId: String, _ ServiceName: String, _ request: CreateServiceMirrorRequest) async throws -> CreateServiceMirrorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createServiceMirrorWithOptions(ClusterId as! String, ServiceName as! String, request as! CreateServiceMirrorRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBenchmarkTaskWithOptions(_ ClusterId: String, _ TaskName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBenchmarkTaskResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBenchmarkTask",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/benchmark-tasks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(TaskName),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBenchmarkTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBenchmarkTask(_ ClusterId: String, _ TaskName: String) async throws -> DeleteBenchmarkTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteBenchmarkTaskWithOptions(ClusterId as! String, TaskName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResourceWithOptions(_ ClusterId: String, _ ResourceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteResourceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteResource",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/resources/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceId),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResource(_ ClusterId: String, _ ResourceId: String) async throws -> DeleteResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteResourceWithOptions(ClusterId as! String, ResourceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResourceDLinkWithOptions(_ ClusterId: String, _ ResourceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteResourceDLinkResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteResourceDLink",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/resources/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceId) + "/dlink",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteResourceDLinkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResourceDLink(_ ClusterId: String, _ ResourceId: String) async throws -> DeleteResourceDLinkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteResourceDLinkWithOptions(ClusterId as! String, ResourceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResourceInstancesWithOptions(_ ClusterId: String, _ ResourceId: String, _ request: DeleteResourceInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteResourceInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allFailed)) {
            query["AllFailed"] = request.allFailed!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceList)) {
            query["InstanceList"] = request.instanceList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteResourceInstances",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/resources/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceId) + "/instances",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteResourceInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResourceInstances(_ ClusterId: String, _ ResourceId: String, _ request: DeleteResourceInstancesRequest) async throws -> DeleteResourceInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteResourceInstancesWithOptions(ClusterId as! String, ResourceId as! String, request as! DeleteResourceInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResourceLogWithOptions(_ ClusterId: String, _ ResourceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteResourceLogResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteResourceLog",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/resources/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceId) + "/log",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteResourceLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteResourceLog(_ ClusterId: String, _ ResourceId: String) async throws -> DeleteResourceLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteResourceLogWithOptions(ClusterId as! String, ResourceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceWithOptions(_ ClusterId: String, _ ServiceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteService",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName),
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteService(_ ClusterId: String, _ ServiceName: String) async throws -> DeleteServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteServiceWithOptions(ClusterId as! String, ServiceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceAutoScalerWithOptions(_ ClusterId: String, _ ServiceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceAutoScalerResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteServiceAutoScaler",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/autoscaler",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceAutoScalerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceAutoScaler(_ ClusterId: String, _ ServiceName: String) async throws -> DeleteServiceAutoScalerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteServiceAutoScalerWithOptions(ClusterId as! String, ServiceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceCronScalerWithOptions(_ ClusterId: String, _ ServiceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceCronScalerResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteServiceCronScaler",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/cronscaler",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceCronScalerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceCronScaler(_ ClusterId: String, _ ServiceName: String) async throws -> DeleteServiceCronScalerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteServiceCronScalerWithOptions(ClusterId as! String, ServiceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceInstancesWithOptions(_ ClusterId: String, _ ServiceName: String, _ request: DeleteServiceInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceList)) {
            query["InstanceList"] = request.instanceList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteServiceInstances",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/instances",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceInstances(_ ClusterId: String, _ ServiceName: String, _ request: DeleteServiceInstancesRequest) async throws -> DeleteServiceInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteServiceInstancesWithOptions(ClusterId as! String, ServiceName as! String, request as! DeleteServiceInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceLabelWithOptions(_ ClusterId: String, _ ServiceName: String, _ tmpReq: DeleteServiceLabelRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceLabelResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteServiceLabelShrinkRequest = DeleteServiceLabelShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.keys)) {
            request.keysShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.keys, "Keys", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keysShrink)) {
            query["Keys"] = request.keysShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteServiceLabel",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/label",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceLabel(_ ClusterId: String, _ ServiceName: String, _ request: DeleteServiceLabelRequest) async throws -> DeleteServiceLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteServiceLabelWithOptions(ClusterId as! String, ServiceName as! String, request as! DeleteServiceLabelRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceMirrorWithOptions(_ ClusterId: String, _ ServiceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceMirrorResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteServiceMirror",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/mirror",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceMirrorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceMirror(_ ClusterId: String, _ ServiceName: String) async throws -> DeleteServiceMirrorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteServiceMirrorWithOptions(ClusterId as! String, ServiceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBenchmarkTaskWithOptions(_ ClusterId: String, _ TaskName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBenchmarkTaskResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBenchmarkTask",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/benchmark-tasks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(TaskName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBenchmarkTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBenchmarkTask(_ ClusterId: String, _ TaskName: String) async throws -> DescribeBenchmarkTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeBenchmarkTaskWithOptions(ClusterId as! String, TaskName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBenchmarkTaskReportWithOptions(_ ClusterId: String, _ TaskName: String, _ request: DescribeBenchmarkTaskReportRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBenchmarkTaskReportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.reportType)) {
            query["ReportType"] = request.reportType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBenchmarkTaskReport",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/benchmark-tasks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(TaskName) + "/report",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBenchmarkTaskReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBenchmarkTaskReport(_ ClusterId: String, _ TaskName: String, _ request: DescribeBenchmarkTaskReportRequest) async throws -> DescribeBenchmarkTaskReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeBenchmarkTaskReportWithOptions(ClusterId as! String, TaskName as! String, request as! DescribeBenchmarkTaskReportRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGroupWithOptions(_ ClusterId: String, _ GroupName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGroupResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGroup",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/groups/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(GroupName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGroup(_ ClusterId: String, _ GroupName: String) async throws -> DescribeGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeGroupWithOptions(ClusterId as! String, GroupName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceWithOptions(_ ClusterId: String, _ ResourceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeResourceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeResource",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/resources/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceId),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResource(_ ClusterId: String, _ ResourceId: String) async throws -> DescribeResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeResourceWithOptions(ClusterId as! String, ResourceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceDLinkWithOptions(_ ClusterId: String, _ ResourceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeResourceDLinkResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeResourceDLink",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/resources/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceId) + "/dlink",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeResourceDLinkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceDLink(_ ClusterId: String, _ ResourceId: String) async throws -> DescribeResourceDLinkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeResourceDLinkWithOptions(ClusterId as! String, ResourceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceLogWithOptions(_ ClusterId: String, _ ResourceId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeResourceLogResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeResourceLog",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/resources/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceId) + "/log",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeResourceLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceLog(_ ClusterId: String, _ ResourceId: String) async throws -> DescribeResourceLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeResourceLogWithOptions(ClusterId as! String, ResourceId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceWithOptions(_ ClusterId: String, _ ServiceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServiceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeService",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeService(_ ClusterId: String, _ ServiceName: String) async throws -> DescribeServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeServiceWithOptions(ClusterId as! String, ServiceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceAutoScalerWithOptions(_ ClusterId: String, _ ServiceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServiceAutoScalerResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeServiceAutoScaler",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/autoscaler",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServiceAutoScalerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceAutoScaler(_ ClusterId: String, _ ServiceName: String) async throws -> DescribeServiceAutoScalerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeServiceAutoScalerWithOptions(ClusterId as! String, ServiceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceCronScalerWithOptions(_ ClusterId: String, _ ServiceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServiceCronScalerResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeServiceCronScaler",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/cronscaler",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServiceCronScalerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceCronScaler(_ ClusterId: String, _ ServiceName: String) async throws -> DescribeServiceCronScalerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeServiceCronScalerWithOptions(ClusterId as! String, ServiceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceEventWithOptions(_ ClusterId: String, _ ServiceName: String, _ request: DescribeServiceEventRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServiceEventResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeServiceEvent",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/events",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServiceEventResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceEvent(_ ClusterId: String, _ ServiceName: String, _ request: DescribeServiceEventRequest) async throws -> DescribeServiceEventResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeServiceEventWithOptions(ClusterId as! String, ServiceName as! String, request as! DescribeServiceEventRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceLogWithOptions(_ ClusterId: String, _ ServiceName: String, _ request: DescribeServiceLogRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServiceLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeServiceLog",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/logs",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServiceLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceLog(_ ClusterId: String, _ ServiceName: String, _ request: DescribeServiceLogRequest) async throws -> DescribeServiceLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeServiceLogWithOptions(ClusterId as! String, ServiceName as! String, request as! DescribeServiceLogRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceMirrorWithOptions(_ ClusterId: String, _ ServiceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServiceMirrorResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeServiceMirror",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/mirror",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServiceMirrorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceMirror(_ ClusterId: String, _ ServiceName: String) async throws -> DescribeServiceMirrorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeServiceMirrorWithOptions(ClusterId as! String, ServiceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func developServiceWithOptions(_ ClusterId: String, _ ServiceName: String, _ request: DevelopServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DevelopServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.exit)) {
            query["Exit"] = request.exit ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DevelopService",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/develop",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DevelopServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func developService(_ ClusterId: String, _ ServiceName: String, _ request: DevelopServiceRequest) async throws -> DevelopServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await developServiceWithOptions(ClusterId as! String, ServiceName as! String, request as! DevelopServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBenchmarkTaskWithOptions(_ request: ListBenchmarkTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListBenchmarkTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filter)) {
            query["Filter"] = request.filter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["ServiceName"] = request.serviceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListBenchmarkTask",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/benchmark-tasks",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListBenchmarkTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listBenchmarkTask(_ request: ListBenchmarkTaskRequest) async throws -> ListBenchmarkTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listBenchmarkTaskWithOptions(request as! ListBenchmarkTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroupsWithOptions(_ request: ListGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filter)) {
            query["Filter"] = request.filter ?? "";
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
            "action": "ListGroups",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/groups",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listGroups(_ request: ListGroupsRequest) async throws -> ListGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listGroupsWithOptions(request as! ListGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceInstanceWorkerWithOptions(_ ClusterId: String, _ ResourceId: String, _ InstanceName: String, _ request: ListResourceInstanceWorkerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourceInstanceWorkerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
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
            "action": "ListResourceInstanceWorker",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/resources/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceId) + "/instance/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceName) + "/workers",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourceInstanceWorkerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceInstanceWorker(_ ClusterId: String, _ ResourceId: String, _ InstanceName: String, _ request: ListResourceInstanceWorkerRequest) async throws -> ListResourceInstanceWorkerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listResourceInstanceWorkerWithOptions(ClusterId as! String, ResourceId as! String, InstanceName as! String, request as! ListResourceInstanceWorkerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceInstancesWithOptions(_ ClusterId: String, _ ResourceId: String, _ request: ListResourceInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourceInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
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
            "action": "ListResourceInstances",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/resources/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceId) + "/instances",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourceInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceInstances(_ ClusterId: String, _ ResourceId: String, _ request: ListResourceInstancesRequest) async throws -> ListResourceInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listResourceInstancesWithOptions(ClusterId as! String, ResourceId as! String, request as! ListResourceInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceServicesWithOptions(_ ClusterId: String, _ ResourceId: String, _ request: ListResourceServicesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourceServicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
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
            "action": "ListResourceServices",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/resources/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceId) + "/services",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourceServicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceServices(_ ClusterId: String, _ ResourceId: String, _ request: ListResourceServicesRequest) async throws -> ListResourceServicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listResourceServicesWithOptions(ClusterId as! String, ResourceId as! String, request as! ListResourceServicesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourcesWithOptions(_ request: ListResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceName)) {
            query["ResourceName"] = request.resourceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResources",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/resources",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResources(_ request: ListResourcesRequest) async throws -> ListResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listResourcesWithOptions(request as! ListResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceInstancesWithOptions(_ ClusterId: String, _ ServiceName: String, _ request: ListServiceInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListServiceInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
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
            "action": "ListServiceInstances",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/instances",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListServiceInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceInstances(_ ClusterId: String, _ ServiceName: String, _ request: ListServiceInstancesRequest) async throws -> ListServiceInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listServiceInstancesWithOptions(ClusterId as! String, ServiceName as! String, request as! ListServiceInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceVersionsWithOptions(_ ClusterId: String, _ ServiceName: String, _ request: ListServiceVersionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListServiceVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
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
            "action": "ListServiceVersions",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/versions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListServiceVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceVersions(_ ClusterId: String, _ ServiceName: String, _ request: ListServiceVersionsRequest) async throws -> ListServiceVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listServiceVersionsWithOptions(ClusterId as! String, ServiceName as! String, request as! ListServiceVersionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServicesWithOptions(_ tmpReq: ListServicesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListServicesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListServicesShrinkRequest = ListServicesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.label)) {
            request.labelShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.label, "Label", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filter)) {
            query["Filter"] = request.filter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.labelShrink)) {
            query["Label"] = request.labelShrink ?? "";
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
        if (!TeaUtils.Client.isUnset(request.parentServiceUid)) {
            query["ParentServiceUid"] = request.parentServiceUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceType)) {
            query["ServiceType"] = request.serviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sort)) {
            query["Sort"] = request.sort ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListServices",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListServicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServices(_ request: ListServicesRequest) async throws -> ListServicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listServicesWithOptions(request as! ListServicesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseServiceWithOptions(_ ClusterId: String, _ ServiceName: String, _ request: ReleaseServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.trafficState)) {
            body["TrafficState"] = request.trafficState ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.weight)) {
            body["Weight"] = request.weight!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseService",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/release",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseService(_ ClusterId: String, _ ServiceName: String, _ request: ReleaseServiceRequest) async throws -> ReleaseServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await releaseServiceWithOptions(ClusterId as! String, ServiceName as! String, request as! ReleaseServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startBenchmarkTaskWithOptions(_ ClusterId: String, _ TaskName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartBenchmarkTaskResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartBenchmarkTask",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/benchmark-tasks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(TaskName) + "/start",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartBenchmarkTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startBenchmarkTask(_ ClusterId: String, _ TaskName: String) async throws -> StartBenchmarkTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startBenchmarkTaskWithOptions(ClusterId as! String, TaskName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startServiceWithOptions(_ ClusterId: String, _ ServiceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StartServiceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartService",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/start",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startService(_ ClusterId: String, _ ServiceName: String) async throws -> StartServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await startServiceWithOptions(ClusterId as! String, ServiceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopBenchmarkTaskWithOptions(_ ClusterId: String, _ TaskName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopBenchmarkTaskResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopBenchmarkTask",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/benchmark-tasks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(TaskName) + "/stop",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopBenchmarkTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopBenchmarkTask(_ ClusterId: String, _ TaskName: String) async throws -> StopBenchmarkTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopBenchmarkTaskWithOptions(ClusterId as! String, TaskName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopServiceWithOptions(_ ClusterId: String, _ ServiceName: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> StopServiceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopService",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/stop",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopService(_ ClusterId: String, _ ServiceName: String) async throws -> StopServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await stopServiceWithOptions(ClusterId as! String, ServiceName as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateBenchmarkTaskWithOptions(_ ClusterId: String, _ TaskName: String, _ request: UpdateBenchmarkTaskRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateBenchmarkTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateBenchmarkTask",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/benchmark-tasks/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(TaskName),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateBenchmarkTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateBenchmarkTask(_ ClusterId: String, _ TaskName: String, _ request: UpdateBenchmarkTaskRequest) async throws -> UpdateBenchmarkTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateBenchmarkTaskWithOptions(ClusterId as! String, TaskName as! String, request as! UpdateBenchmarkTaskRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResourceWithOptions(_ ClusterId: String, _ ResourceId: String, _ request: UpdateResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceName)) {
            body["ResourceName"] = request.resourceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateResource",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/resources/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceId),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResource(_ ClusterId: String, _ ResourceId: String, _ request: UpdateResourceRequest) async throws -> UpdateResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateResourceWithOptions(ClusterId as! String, ResourceId as! String, request as! UpdateResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResourceDLinkWithOptions(_ ClusterId: String, _ ResourceId: String, _ request: UpdateResourceDLinkRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateResourceDLinkResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationCIDRs)) {
            body["DestinationCIDRs"] = request.destinationCIDRs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityGroupId)) {
            body["SecurityGroupId"] = request.securityGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            body["VSwitchId"] = request.vSwitchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchIdList)) {
            body["VSwitchIdList"] = request.vSwitchIdList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateResourceDLink",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/resources/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceId) + "/dlink",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateResourceDLinkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResourceDLink(_ ClusterId: String, _ ResourceId: String, _ request: UpdateResourceDLinkRequest) async throws -> UpdateResourceDLinkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateResourceDLinkWithOptions(ClusterId as! String, ResourceId as! String, request as! UpdateResourceDLinkRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResourceInstanceWithOptions(_ ClusterId: String, _ ResourceId: String, _ InstanceId: String, _ request: UpdateResourceInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateResourceInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.action)) {
            body["Action"] = request.action ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateResourceInstance",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/resources/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ResourceId) + "/instances/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(InstanceId),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateResourceInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateResourceInstance(_ ClusterId: String, _ ResourceId: String, _ InstanceId: String, _ request: UpdateResourceInstanceRequest) async throws -> UpdateResourceInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateResourceInstanceWithOptions(ClusterId as! String, ResourceId as! String, InstanceId as! String, request as! UpdateResourceInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceWithOptions(_ ClusterId: String, _ ServiceName: String, _ request: UpdateServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateService",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName),
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateService(_ ClusterId: String, _ ServiceName: String, _ request: UpdateServiceRequest) async throws -> UpdateServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateServiceWithOptions(ClusterId as! String, ServiceName as! String, request as! UpdateServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceAutoScalerWithOptions(_ ClusterId: String, _ ServiceName: String, _ request: UpdateServiceAutoScalerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateServiceAutoScalerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.max)) {
            body["max"] = request.max!;
        }
        if (!TeaUtils.Client.isUnset(request.min)) {
            body["min"] = request.min!;
        }
        if (!TeaUtils.Client.isUnset(request.scaleStrategies)) {
            body["scaleStrategies"] = request.scaleStrategies ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateServiceAutoScaler",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/autoscaler",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateServiceAutoScalerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceAutoScaler(_ ClusterId: String, _ ServiceName: String, _ request: UpdateServiceAutoScalerRequest) async throws -> UpdateServiceAutoScalerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateServiceAutoScalerWithOptions(ClusterId as! String, ServiceName as! String, request as! UpdateServiceAutoScalerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceCronScalerWithOptions(_ ClusterId: String, _ ServiceName: String, _ request: UpdateServiceCronScalerRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateServiceCronScalerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.excludeDates)) {
            body["ExcludeDates"] = request.excludeDates ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.scaleJobs)) {
            body["ScaleJobs"] = request.scaleJobs ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateServiceCronScaler",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/cronscaler",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateServiceCronScalerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceCronScaler(_ ClusterId: String, _ ServiceName: String, _ request: UpdateServiceCronScalerRequest) async throws -> UpdateServiceCronScalerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateServiceCronScalerWithOptions(ClusterId as! String, ServiceName as! String, request as! UpdateServiceCronScalerRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceLabelWithOptions(_ ClusterId: String, _ ServiceName: String, _ request: UpdateServiceLabelRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateServiceLabelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.labels)) {
            body["Labels"] = request.labels ?? [:];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateServiceLabel",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/label",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateServiceLabelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceLabel(_ ClusterId: String, _ ServiceName: String, _ request: UpdateServiceLabelRequest) async throws -> UpdateServiceLabelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateServiceLabelWithOptions(ClusterId as! String, ServiceName as! String, request as! UpdateServiceLabelRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceMirrorWithOptions(_ ClusterId: String, _ ServiceName: String, _ request: UpdateServiceMirrorRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateServiceMirrorResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ratio)) {
            body["Ratio"] = request.ratio!;
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            body["Target"] = request.target ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateServiceMirror",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/mirror",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateServiceMirrorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceMirror(_ ClusterId: String, _ ServiceName: String, _ request: UpdateServiceMirrorRequest) async throws -> UpdateServiceMirrorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateServiceMirrorWithOptions(ClusterId as! String, ServiceName as! String, request as! UpdateServiceMirrorRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceSafetyLockWithOptions(_ ClusterId: String, _ ServiceName: String, _ request: UpdateServiceSafetyLockRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateServiceSafetyLockResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lock)) {
            body["Lock"] = request.lock ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateServiceSafetyLock",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/lock",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateServiceSafetyLockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceSafetyLock(_ ClusterId: String, _ ServiceName: String, _ request: UpdateServiceSafetyLockRequest) async throws -> UpdateServiceSafetyLockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateServiceSafetyLockWithOptions(ClusterId as! String, ServiceName as! String, request as! UpdateServiceSafetyLockRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceVersionWithOptions(_ ClusterId: String, _ ServiceName: String, _ request: UpdateServiceVersionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateServiceVersionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.version)) {
            body["Version"] = request.version!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateServiceVersion",
            "version": "2021-07-01",
            "protocol": "HTTPS",
            "pathname": "/api/v2/services/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ClusterId) + "/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(ServiceName) + "/version",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateServiceVersionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceVersion(_ ClusterId: String, _ ServiceName: String, _ request: UpdateServiceVersionRequest) async throws -> UpdateServiceVersionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateServiceVersionWithOptions(ClusterId as! String, ServiceName as! String, request as! UpdateServiceVersionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
