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
            "cn-qingdao": "dts.aliyuncs.com",
            "cn-beijing": "dts.aliyuncs.com",
            "cn-zhangjiakou": "dts.aliyuncs.com",
            "cn-huhehaote": "dts.aliyuncs.com",
            "cn-hangzhou": "dts.aliyuncs.com",
            "cn-shanghai": "dts.aliyuncs.com",
            "cn-shenzhen": "dts.aliyuncs.com",
            "cn-hongkong": "dts.aliyuncs.com",
            "ap-southeast-1": "dts.aliyuncs.com",
            "ap-southeast-2": "dts.aliyuncs.com",
            "ap-southeast-3": "dts.aliyuncs.com",
            "ap-southeast-5": "dts.aliyuncs.com",
            "eu-west-1": "dts.aliyuncs.com",
            "us-west-1": "dts.aliyuncs.com",
            "us-east-1": "dts.aliyuncs.com",
            "eu-central-1": "dts.aliyuncs.com",
            "me-east-1": "dts.aliyuncs.com",
            "ap-south-1": "dts.aliyuncs.com",
            "cn-hangzhou-finance": "dts.aliyuncs.com",
            "cn-shanghai-finance-1": "dts.aliyuncs.com",
            "cn-shenzhen-finance-1": "dts.aliyuncs.com",
            "cn-north-2-gov-1": "dts.aliyuncs.com",
            "ap-northeast-2-pop": "dts.aliyuncs.com",
            "cn-beijing-finance-1": "dts.aliyuncs.com",
            "cn-beijing-finance-pop": "dts.aliyuncs.com",
            "cn-beijing-gov-1": "dts.aliyuncs.com",
            "cn-beijing-nu16-b01": "dts.aliyuncs.com",
            "cn-chengdu": "dts.aliyuncs.com",
            "cn-edge-1": "dts.aliyuncs.com",
            "cn-fujian": "dts.aliyuncs.com",
            "cn-haidian-cm12-c01": "dts.aliyuncs.com",
            "cn-hangzhou-bj-b01": "dts.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "dts.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "dts.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "dts.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "dts.aliyuncs.com",
            "cn-hangzhou-test-306": "dts.aliyuncs.com",
            "cn-hongkong-finance-pop": "dts.aliyuncs.com",
            "cn-huhehaote-nebula-1": "dts.aliyuncs.com",
            "cn-qingdao-nebula": "dts.aliyuncs.com",
            "cn-shanghai-et15-b01": "dts.aliyuncs.com",
            "cn-shanghai-et2-b01": "dts.aliyuncs.com",
            "cn-shanghai-inner": "dts.aliyuncs.com",
            "cn-shanghai-internal-test-1": "dts.aliyuncs.com",
            "cn-shenzhen-inner": "dts.aliyuncs.com",
            "cn-shenzhen-st4-d01": "dts.aliyuncs.com",
            "cn-shenzhen-su18-b01": "dts.aliyuncs.com",
            "cn-wuhan": "dts.aliyuncs.com",
            "cn-wulanchabu": "dts.aliyuncs.com",
            "cn-yushanfang": "dts.aliyuncs.com",
            "cn-zhangbei-na61-b01": "dts.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "dts.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "dts.aliyuncs.com",
            "eu-west-1-oxs": "dts.aliyuncs.com",
            "rus-west-1-pop": "dts.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("dts", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func configureSynchronizationJobWithOptions(_ request: ConfigureSynchronizationJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigureSynchronizationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkpoint)) {
            query["Checkpoint"] = request.checkpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataInitialization)) {
            query["DataInitialization"] = request.dataInitialization!;
        }
        if (!TeaUtils.Client.isUnset(request.migrationReserved)) {
            query["MigrationReserved"] = request.migrationReserved ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.structureInitialization)) {
            query["StructureInitialization"] = request.structureInitialization!;
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobName)) {
            query["SynchronizationJobName"] = request.synchronizationJobName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationObjects)) {
            query["SynchronizationObjects"] = request.synchronizationObjects ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpoint)) {
            query["DestinationEndpoint"] = request.destinationEndpoint!;
        }
        if (!TeaUtils.Client.isUnset(request.partitionKey)) {
            query["PartitionKey"] = request.partitionKey!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpoint)) {
            query["SourceEndpoint"] = request.sourceEndpoint!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfigureSynchronizationJob",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfigureSynchronizationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureSynchronizationJob(_ request: ConfigureSynchronizationJobRequest) async throws -> ConfigureSynchronizationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await configureSynchronizationJobWithOptions(request as! ConfigureSynchronizationJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureSynchronizationJobAlertWithOptions(_ request: ConfigureSynchronizationJobAlertRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigureSynchronizationJobAlertResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.delayAlertPhone)) {
            query["DelayAlertPhone"] = request.delayAlertPhone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.delayAlertStatus)) {
            query["DelayAlertStatus"] = request.delayAlertStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.delayOverSeconds)) {
            query["DelayOverSeconds"] = request.delayOverSeconds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.errorAlertPhone)) {
            query["ErrorAlertPhone"] = request.errorAlertPhone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.errorAlertStatus)) {
            query["ErrorAlertStatus"] = request.errorAlertStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfigureSynchronizationJobAlert",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfigureSynchronizationJobAlertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configureSynchronizationJobAlert(_ request: ConfigureSynchronizationJobAlertRequest) async throws -> ConfigureSynchronizationJobAlertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await configureSynchronizationJobAlertWithOptions(request as! ConfigureSynchronizationJobAlertRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSynchronizationJobWithOptions(_ request: CreateSynchronizationJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSynchronizationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destRegion)) {
            query["DestRegion"] = request.destRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            query["PayType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceRegion)) {
            query["SourceRegion"] = request.sourceRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobClass)) {
            query["SynchronizationJobClass"] = request.synchronizationJobClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topology)) {
            query["Topology"] = request.topology ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usedTime)) {
            query["UsedTime"] = request.usedTime!;
        }
        if (!TeaUtils.Client.isUnset(request.networkType)) {
            query["networkType"] = request.networkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationEndpoint)) {
            query["DestinationEndpoint"] = request.destinationEndpoint!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceEndpoint)) {
            query["SourceEndpoint"] = request.sourceEndpoint!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSynchronizationJob",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSynchronizationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSynchronizationJob(_ request: CreateSynchronizationJobRequest) async throws -> CreateSynchronizationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSynchronizationJobWithOptions(request as! CreateSynchronizationJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSynchronizationJobWithOptions(_ request: DeleteSynchronizationJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSynchronizationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSynchronizationJob",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSynchronizationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSynchronizationJob(_ request: DeleteSynchronizationJobRequest) async throws -> DeleteSynchronizationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSynchronizationJobWithOptions(request as! DeleteSynchronizationJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEndpointSwitchStatusWithOptions(_ request: DescribeEndpointSwitchStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeEndpointSwitchStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeEndpointSwitchStatus",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeEndpointSwitchStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeEndpointSwitchStatus(_ request: DescribeEndpointSwitchStatusRequest) async throws -> DescribeEndpointSwitchStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeEndpointSwitchStatusWithOptions(request as! DescribeEndpointSwitchStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSynchronizationJobAlertWithOptions(_ request: DescribeSynchronizationJobAlertRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSynchronizationJobAlertResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSynchronizationJobAlert",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSynchronizationJobAlertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSynchronizationJobAlert(_ request: DescribeSynchronizationJobAlertRequest) async throws -> DescribeSynchronizationJobAlertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSynchronizationJobAlertWithOptions(request as! DescribeSynchronizationJobAlertRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSynchronizationJobStatusWithOptions(_ request: DescribeSynchronizationJobStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSynchronizationJobStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSynchronizationJobStatus",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSynchronizationJobStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSynchronizationJobStatus(_ request: DescribeSynchronizationJobStatusRequest) async throws -> DescribeSynchronizationJobStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSynchronizationJobStatusWithOptions(request as! DescribeSynchronizationJobStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSynchronizationJobsWithOptions(_ request: DescribeSynchronizationJobsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSynchronizationJobsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobName)) {
            query["SynchronizationJobName"] = request.synchronizationJobName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSynchronizationJobs",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSynchronizationJobsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSynchronizationJobs(_ request: DescribeSynchronizationJobsRequest) async throws -> DescribeSynchronizationJobsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSynchronizationJobsWithOptions(request as! DescribeSynchronizationJobsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSynchronizationObjectModifyStatusWithOptions(_ request: DescribeSynchronizationObjectModifyStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSynchronizationObjectModifyStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSynchronizationObjectModifyStatus",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSynchronizationObjectModifyStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSynchronizationObjectModifyStatus(_ request: DescribeSynchronizationObjectModifyStatusRequest) async throws -> DescribeSynchronizationObjectModifyStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSynchronizationObjectModifyStatusWithOptions(request as! DescribeSynchronizationObjectModifyStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySynchronizationObjectWithOptions(_ request: ModifySynchronizationObjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifySynchronizationObjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationObjects)) {
            query["SynchronizationObjects"] = request.synchronizationObjects ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifySynchronizationObject",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifySynchronizationObjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySynchronizationObject(_ request: ModifySynchronizationObjectRequest) async throws -> ModifySynchronizationObjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifySynchronizationObjectWithOptions(request as! ModifySynchronizationObjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetSynchronizationJobWithOptions(_ request: ResetSynchronizationJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetSynchronizationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetSynchronizationJob",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetSynchronizationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetSynchronizationJob(_ request: ResetSynchronizationJobRequest) async throws -> ResetSynchronizationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resetSynchronizationJobWithOptions(request as! ResetSynchronizationJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startSynchronizationJobWithOptions(_ request: StartSynchronizationJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartSynchronizationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartSynchronizationJob",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartSynchronizationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startSynchronizationJob(_ request: StartSynchronizationJobRequest) async throws -> StartSynchronizationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startSynchronizationJobWithOptions(request as! StartSynchronizationJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendSynchronizationJobWithOptions(_ request: SuspendSynchronizationJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SuspendSynchronizationJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SuspendSynchronizationJob",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SuspendSynchronizationJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func suspendSynchronizationJob(_ request: SuspendSynchronizationJobRequest) async throws -> SuspendSynchronizationJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await suspendSynchronizationJobWithOptions(request as! SuspendSynchronizationJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchSynchronizationEndpointWithOptions(_ request: SwitchSynchronizationEndpointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SwitchSynchronizationEndpointResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationDirection)) {
            query["SynchronizationDirection"] = request.synchronizationDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.synchronizationJobId)) {
            query["SynchronizationJobId"] = request.synchronizationJobId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endpoint)) {
            query["Endpoint"] = request.endpoint!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SwitchSynchronizationEndpoint",
            "version": "2019-09-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SwitchSynchronizationEndpointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func switchSynchronizationEndpoint(_ request: SwitchSynchronizationEndpointRequest) async throws -> SwitchSynchronizationEndpointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await switchSynchronizationEndpointWithOptions(request as! SwitchSynchronizationEndpointRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
