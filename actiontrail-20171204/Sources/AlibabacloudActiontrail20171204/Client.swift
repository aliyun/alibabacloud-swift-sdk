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
            "ap-northeast-2-pop": "actiontrail.ap-northeast-1.aliyuncs.com",
            "cn-beijing-finance-1": "actiontrail.aliyuncs.com",
            "cn-beijing-finance-pop": "actiontrail.aliyuncs.com",
            "cn-beijing-gov-1": "actiontrail.aliyuncs.com",
            "cn-beijing-nu16-b01": "actiontrail.aliyuncs.com",
            "cn-edge-1": "actiontrail.aliyuncs.com",
            "cn-fujian": "actiontrail.aliyuncs.com",
            "cn-haidian-cm12-c01": "actiontrail.aliyuncs.com",
            "cn-hangzhou-bj-b01": "actiontrail.aliyuncs.com",
            "cn-hangzhou-finance": "actiontrail.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "actiontrail.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "actiontrail.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "actiontrail.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "actiontrail.aliyuncs.com",
            "cn-hangzhou-test-306": "actiontrail.aliyuncs.com",
            "cn-hongkong-finance-pop": "actiontrail.aliyuncs.com",
            "cn-qingdao-nebula": "actiontrail.aliyuncs.com",
            "cn-shanghai-et15-b01": "actiontrail.aliyuncs.com",
            "cn-shanghai-et2-b01": "actiontrail.aliyuncs.com",
            "cn-shanghai-inner": "actiontrail.aliyuncs.com",
            "cn-shanghai-internal-test-1": "actiontrail.aliyuncs.com",
            "cn-shenzhen-finance-1": "actiontrail.aliyuncs.com",
            "cn-shenzhen-inner": "actiontrail.aliyuncs.com",
            "cn-shenzhen-st4-d01": "actiontrail.aliyuncs.com",
            "cn-shenzhen-su18-b01": "actiontrail.aliyuncs.com",
            "cn-wuhan": "actiontrail.aliyuncs.com",
            "cn-yushanfang": "actiontrail.aliyuncs.com",
            "cn-zhangbei-na61-b01": "actiontrail.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "actiontrail.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "actiontrail.aliyuncs.com",
            "eu-west-1-oxs": "actiontrail.ap-northeast-1.aliyuncs.com",
            "rus-west-1-pop": "actiontrail.ap-northeast-1.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("actiontrail", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createTrailWithOptions(_ request: CreateTrailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTrailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventRW)) {
            query["EventRW"] = request.eventRW ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isOrganizationTrail)) {
            query["IsOrganizationTrail"] = request.isOrganizationTrail!;
        }
        if (!TeaUtils.Client.isUnset(request.mnsTopicArn)) {
            query["MnsTopicArn"] = request.mnsTopicArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossBucketName)) {
            query["OssBucketName"] = request.ossBucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossKeyPrefix)) {
            query["OssKeyPrefix"] = request.ossKeyPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleName)) {
            query["RoleName"] = request.roleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsProjectArn)) {
            query["SlsProjectArn"] = request.slsProjectArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsWriteRoleArn)) {
            query["SlsWriteRoleArn"] = request.slsWriteRoleArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trailRegion)) {
            query["TrailRegion"] = request.trailRegion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTrail",
            "version": "2017-12-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTrailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTrail(_ request: CreateTrailRequest) async throws -> CreateTrailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTrailWithOptions(request as! CreateTrailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTrailWithOptions(_ request: DeleteTrailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTrailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTrail",
            "version": "2017-12-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTrailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTrail(_ request: DeleteTrailRequest) async throws -> DeleteTrailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteTrailWithOptions(request as! DeleteTrailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2017-12-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegions() async throws -> DescribeRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRegionsWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTrailsWithOptions(_ request: DescribeTrailsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTrailsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.includeOrganizationTrail)) {
            query["IncludeOrganizationTrail"] = request.includeOrganizationTrail!;
        }
        if (!TeaUtils.Client.isUnset(request.includeShadowTrails)) {
            query["IncludeShadowTrails"] = request.includeShadowTrails!;
        }
        if (!TeaUtils.Client.isUnset(request.nameList)) {
            query["NameList"] = request.nameList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTrails",
            "version": "2017-12-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTrailsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTrails(_ request: DescribeTrailsRequest) async throws -> DescribeTrailsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTrailsWithOptions(request as! DescribeTrailsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrailStatusWithOptions(_ request: GetTrailStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTrailStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isOrganizationTrail)) {
            query["IsOrganizationTrail"] = request.isOrganizationTrail!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTrailStatus",
            "version": "2017-12-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTrailStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrailStatus(_ request: GetTrailStatusRequest) async throws -> GetTrailStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTrailStatusWithOptions(request as! GetTrailStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func lookupEventsWithOptions(_ request: LookupEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> LookupEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.event)) {
            query["Event"] = request.event ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventAccessKeyId)) {
            query["EventAccessKeyId"] = request.eventAccessKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventName)) {
            query["EventName"] = request.eventName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventRW)) {
            query["EventRW"] = request.eventRW ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventType)) {
            query["EventType"] = request.eventType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.request)) {
            query["Request"] = request.request ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceName)) {
            query["ResourceName"] = request.resourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["ServiceName"] = request.serviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.user)) {
            query["User"] = request.user ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LookupEvents",
            "version": "2017-12-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LookupEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func lookupEvents(_ request: LookupEventsRequest) async throws -> LookupEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await lookupEventsWithOptions(request as! LookupEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startLoggingWithOptions(_ request: StartLoggingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartLoggingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartLogging",
            "version": "2017-12-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartLoggingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startLogging(_ request: StartLoggingRequest) async throws -> StartLoggingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startLoggingWithOptions(request as! StartLoggingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopLoggingWithOptions(_ request: StopLoggingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopLoggingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopLogging",
            "version": "2017-12-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopLoggingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopLogging(_ request: StopLoggingRequest) async throws -> StopLoggingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopLoggingWithOptions(request as! StopLoggingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTrailWithOptions(_ request: UpdateTrailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTrailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.eventRW)) {
            query["EventRW"] = request.eventRW ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mnsTopicArn)) {
            query["MnsTopicArn"] = request.mnsTopicArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossBucketName)) {
            query["OssBucketName"] = request.ossBucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossKeyPrefix)) {
            query["OssKeyPrefix"] = request.ossKeyPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleName)) {
            query["RoleName"] = request.roleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsProjectArn)) {
            query["SlsProjectArn"] = request.slsProjectArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.slsWriteRoleArn)) {
            query["SlsWriteRoleArn"] = request.slsWriteRoleArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trailRegion)) {
            query["TrailRegion"] = request.trailRegion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTrail",
            "version": "2017-12-04",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTrailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTrail(_ request: UpdateTrailRequest) async throws -> UpdateTrailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTrailWithOptions(request as! UpdateTrailRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
