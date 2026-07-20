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
        self._endpoint = try getEndpoint("riskmanagement", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func bindAuthToMachineWithOptions(_ tmpReq: BindAuthToMachineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BindAuthToMachineResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BindAuthToMachineShrinkRequest = BindAuthToMachineShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.sdkRequest)) {
            request.sdkRequestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sdkRequest, "SdkRequest", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sdkRequestShrink)) {
            query["SdkRequest"] = request.sdkRequestShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BindAuthToMachine",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BindAuthToMachineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bindAuthToMachine(_ request: BindAuthToMachineRequest) async throws -> BindAuthToMachineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await bindAuthToMachineWithOptions(request as! BindAuthToMachineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSasTrialWithOptions(_ tmpReq: CreateSasTrialRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSasTrialResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateSasTrialShrinkRequest = CreateSasTrialShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.sdkRequest)) {
            request.sdkRequestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sdkRequest, "SdkRequest", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sdkRequestShrink)) {
            query["SdkRequest"] = request.sdkRequestShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSasTrial",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSasTrialResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSasTrial(_ request: CreateSasTrialRequest) async throws -> CreateSasTrialResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSasTrialWithOptions(request as! CreateSasTrialRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceLinkedRoleWithOptions(_ tmpReq: CreateServiceLinkedRoleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceLinkedRoleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateServiceLinkedRoleShrinkRequest = CreateServiceLinkedRoleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.sdkRequest)) {
            request.sdkRequestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sdkRequest, "SdkRequest", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sdkRequestShrink)) {
            query["SdkRequest"] = request.sdkRequestShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateServiceLinkedRole",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceLinkedRoleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceLinkedRole(_ request: CreateServiceLinkedRoleRequest) async throws -> CreateServiceLinkedRoleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createServiceLinkedRoleWithOptions(request as! CreateServiceLinkedRoleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVirusScanOnceTaskWithOptions(_ request: CreateVirusScanOnceTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVirusScanOnceTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVirusScanOnceTask",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVirusScanOnceTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVirusScanOnceTask(_ request: CreateVirusScanOnceTaskRequest) async throws -> CreateVirusScanOnceTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createVirusScanOnceTaskWithOptions(request as! CreateVirusScanOnceTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCloudCenterInstancesWithOptions(_ tmpReq: DescribeCloudCenterInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCloudCenterInstancesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeCloudCenterInstancesShrinkRequest = DescribeCloudCenterInstancesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.sdkRequest)) {
            request.sdkRequestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sdkRequest, "SdkRequest", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sdkRequestShrink)) {
            query["SdkRequest"] = request.sdkRequestShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCloudCenterInstances",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCloudCenterInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCloudCenterInstances(_ request: DescribeCloudCenterInstancesRequest) async throws -> DescribeCloudCenterInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCloudCenterInstancesWithOptions(request as! DescribeCloudCenterInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceLinkedRoleStatusWithOptions(_ tmpReq: DescribeServiceLinkedRoleStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeServiceLinkedRoleStatusResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeServiceLinkedRoleStatusShrinkRequest = DescribeServiceLinkedRoleStatusShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.sdkRequest)) {
            request.sdkRequestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sdkRequest, "SdkRequest", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sdkRequestShrink)) {
            query["SdkRequest"] = request.sdkRequestShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeServiceLinkedRoleStatus",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeServiceLinkedRoleStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeServiceLinkedRoleStatus(_ request: DescribeServiceLinkedRoleStatusRequest) async throws -> DescribeServiceLinkedRoleStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeServiceLinkedRoleStatusWithOptions(request as! DescribeServiceLinkedRoleStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSuspEventsWithOptions(_ tmpReq: DescribeSuspEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSuspEventsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeSuspEventsShrinkRequest = DescribeSuspEventsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.sdkRequest)) {
            request.sdkRequestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sdkRequest, "SdkRequest", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sdkRequestShrink)) {
            query["SdkRequest"] = request.sdkRequestShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSuspEvents",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSuspEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSuspEvents(_ request: DescribeSuspEventsRequest) async throws -> DescribeSuspEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSuspEventsWithOptions(request as! DescribeSuspEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVersionConfigWithOptions(_ tmpReq: DescribeVersionConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVersionConfigResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeVersionConfigShrinkRequest = DescribeVersionConfigShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.sdkRequest)) {
            request.sdkRequestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sdkRequest, "SdkRequest", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sdkRequestShrink)) {
            query["SdkRequest"] = request.sdkRequestShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVersionConfig",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVersionConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVersionConfig(_ request: DescribeVersionConfigRequest) async throws -> DescribeVersionConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVersionConfigWithOptions(request as! DescribeVersionConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAlertRecordAnalysisResultWithOptions(_ tmpReq: GetAlertRecordAnalysisResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAlertRecordAnalysisResultResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetAlertRecordAnalysisResultShrinkRequest = GetAlertRecordAnalysisResultShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.uniqueTagList)) {
            request.uniqueTagListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.uniqueTagList, "UniqueTagList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alarmUniqueInfo)) {
            query["AlarmUniqueInfo"] = request.alarmUniqueInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aliyunLang)) {
            query["AliyunLang"] = request.aliyunLang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uniqueInfo)) {
            query["UniqueInfo"] = request.uniqueInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uniqueTagListShrink)) {
            query["UniqueTagList"] = request.uniqueTagListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            query["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAlertRecordAnalysisResult",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAlertRecordAnalysisResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAlertRecordAnalysisResult(_ request: GetAlertRecordAnalysisResultRequest) async throws -> GetAlertRecordAnalysisResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAlertRecordAnalysisResultWithOptions(request as! GetAlertRecordAnalysisResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAliYunSafeCenterResultWithOptions(_ tmpReq: GetAliYunSafeCenterResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAliYunSafeCenterResultResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetAliYunSafeCenterResultShrinkRequest = GetAliYunSafeCenterResultShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.createSimilarSecurityEventsQueryTaskRequest)) {
            request.createSimilarSecurityEventsQueryTaskRequestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createSimilarSecurityEventsQueryTaskRequest, "CreateSimilarSecurityEventsQueryTaskRequest", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.describeInstancesFullStatusRequest)) {
            request.describeInstancesFullStatusRequestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.describeInstancesFullStatusRequest, "DescribeInstancesFullStatusRequest", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.describeSecurityEventOperationStatusRequest)) {
            request.describeSecurityEventOperationStatusRequestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.describeSecurityEventOperationStatusRequest, "DescribeSecurityEventOperationStatusRequest", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.describeSimilarSecurityEventsRequest)) {
            request.describeSimilarSecurityEventsRequestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.describeSimilarSecurityEventsRequest, "DescribeSimilarSecurityEventsRequest", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.getAssetDetailByUuidRequest)) {
            request.getAssetDetailByUuidRequestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.getAssetDetailByUuidRequest, "GetAssetDetailByUuidRequest", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.handleSecurityEventsRequest)) {
            request.handleSecurityEventsRequestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.handleSecurityEventsRequest, "HandleSecurityEventsRequest", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.handleSimilarSecurityEventsRequest)) {
            request.handleSimilarSecurityEventsRequestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.handleSimilarSecurityEventsRequest, "HandleSimilarSecurityEventsRequest", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.listInstancesRequest)) {
            request.listInstancesRequestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listInstancesRequest, "ListInstancesRequest", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createSimilarSecurityEventsQueryTaskRequestShrink)) {
            query["CreateSimilarSecurityEventsQueryTaskRequest"] = request.createSimilarSecurityEventsQueryTaskRequestShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.describeInstancesFullStatusRequestShrink)) {
            query["DescribeInstancesFullStatusRequest"] = request.describeInstancesFullStatusRequestShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.describeSecurityEventOperationStatusRequestShrink)) {
            query["DescribeSecurityEventOperationStatusRequest"] = request.describeSecurityEventOperationStatusRequestShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.describeSimilarSecurityEventsRequestShrink)) {
            query["DescribeSimilarSecurityEventsRequest"] = request.describeSimilarSecurityEventsRequestShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.getAssetDetailByUuidRequestShrink)) {
            query["GetAssetDetailByUuidRequest"] = request.getAssetDetailByUuidRequestShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.handleSecurityEventsRequestShrink)) {
            query["HandleSecurityEventsRequest"] = request.handleSecurityEventsRequestShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.handleSimilarSecurityEventsRequestShrink)) {
            query["HandleSimilarSecurityEventsRequest"] = request.handleSimilarSecurityEventsRequestShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.interfaceCode)) {
            query["InterfaceCode"] = request.interfaceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.listInstancesRequestShrink)) {
            query["ListInstancesRequest"] = request.listInstancesRequestShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAliYunSafeCenterResult",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAliYunSafeCenterResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAliYunSafeCenterResult(_ request: GetAliYunSafeCenterResultRequest) async throws -> GetAliYunSafeCenterResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAliYunSafeCenterResultWithOptions(request as! GetAliYunSafeCenterResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCanTrySasWithOptions(_ tmpReq: GetCanTrySasRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCanTrySasResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetCanTrySasShrinkRequest = GetCanTrySasShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.sdkRequest)) {
            request.sdkRequestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sdkRequest, "SdkRequest", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sdkRequestShrink)) {
            query["SdkRequest"] = request.sdkRequestShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCanTrySas",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCanTrySasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCanTrySas(_ request: GetCanTrySasRequest) async throws -> GetCanTrySasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCanTrySasWithOptions(request as! GetCanTrySasRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCompliancePackIdWithOptions(_ request: GetCompliancePackIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCompliancePackIdResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCompliancePackId",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCompliancePackIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCompliancePackId(_ request: GetCompliancePackIdRequest) async throws -> GetCompliancePackIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCompliancePackIdWithOptions(request as! GetCompliancePackIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDisposalToolStatusWithOptions(_ request: GetDisposalToolStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDisposalToolStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDisposalToolStatus",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDisposalToolStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDisposalToolStatus(_ request: GetDisposalToolStatusRequest) async throws -> GetDisposalToolStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDisposalToolStatusWithOptions(request as! GetDisposalToolStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNotificationClickRecordWithOptions(_ request: GetNotificationClickRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNotificationClickRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNotificationClickRecord",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNotificationClickRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNotificationClickRecord(_ request: GetNotificationClickRecordRequest) async throws -> GetNotificationClickRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNotificationClickRecordWithOptions(request as! GetNotificationClickRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNotificationContactsWithOptions(_ request: GetNotificationContactsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNotificationContactsResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNotificationContacts",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNotificationContactsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNotificationContacts(_ request: GetNotificationContactsRequest) async throws -> GetNotificationContactsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNotificationContactsWithOptions(request as! GetNotificationContactsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNotificationPendNumberWithOptions(_ request: GetNotificationPendNumberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetNotificationPendNumberResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetNotificationPendNumber",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetNotificationPendNumberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getNotificationPendNumber(_ request: GetNotificationPendNumberRequest) async throws -> GetNotificationPendNumberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getNotificationPendNumberWithOptions(request as! GetNotificationPendNumberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceControlEventWithOptions(_ tmpReq: GetResourceControlEventRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceControlEventResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetResourceControlEventShrinkRequest = GetResourceControlEventShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.eventIdList)) {
            request.eventIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.eventIdList, "EventIdList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunLang)) {
            query["AliyunLang"] = request.aliyunLang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventId)) {
            query["EventId"] = request.eventId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventIdListShrink)) {
            query["EventIdList"] = request.eventIdListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceControlEvent",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceControlEventResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceControlEvent(_ request: GetResourceControlEventRequest) async throws -> GetResourceControlEventResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourceControlEventWithOptions(request as! GetResourceControlEventRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSecurityCheckBaseInfoWithOptions(_ request: GetSecurityCheckBaseInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSecurityCheckBaseInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSecurityCheckBaseInfo",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSecurityCheckBaseInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSecurityCheckBaseInfo(_ request: GetSecurityCheckBaseInfoRequest) async throws -> GetSecurityCheckBaseInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSecurityCheckBaseInfoWithOptions(request as! GetSecurityCheckBaseInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSecurityCheckResultBaseInfoWithOptions(_ request: GetSecurityCheckResultBaseInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSecurityCheckResultBaseInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSecurityCheckResultBaseInfo",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSecurityCheckResultBaseInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSecurityCheckResultBaseInfo(_ request: GetSecurityCheckResultBaseInfoRequest) async throws -> GetSecurityCheckResultBaseInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSecurityCheckResultBaseInfoWithOptions(request as! GetSecurityCheckResultBaseInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSecuritySuggestionListWithOptions(_ tmpReq: GetSecuritySuggestionListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSecuritySuggestionListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetSecuritySuggestionListShrinkRequest = GetSecuritySuggestionListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listConfigRulesRequest)) {
            request.listConfigRulesRequestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listConfigRulesRequest, "ListConfigRulesRequest", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.listConfigRulesRequestShrink)) {
            query["ListConfigRulesRequest"] = request.listConfigRulesRequestShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSecuritySuggestionList",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSecuritySuggestionListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSecuritySuggestionList(_ request: GetSecuritySuggestionListRequest) async throws -> GetSecuritySuggestionListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSecuritySuggestionListWithOptions(request as! GetSecuritySuggestionListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSecuritySuggestionNumberWithOptions(_ request: GetSecuritySuggestionNumberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSecuritySuggestionNumberResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSecuritySuggestionNumber",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSecuritySuggestionNumberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSecuritySuggestionNumber(_ request: GetSecuritySuggestionNumberRequest) async throws -> GetSecuritySuggestionNumberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSecuritySuggestionNumberWithOptions(request as! GetSecuritySuggestionNumberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceLinkedRoleStatusWithOptions(_ request: GetServiceLinkedRoleStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceLinkedRoleStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetServiceLinkedRoleStatus",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceLinkedRoleStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceLinkedRoleStatus(_ request: GetServiceLinkedRoleStatusRequest) async throws -> GetServiceLinkedRoleStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getServiceLinkedRoleStatusWithOptions(request as! GetServiceLinkedRoleStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getValidDeductInstancesWithOptions(_ tmpReq: GetValidDeductInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetValidDeductInstancesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetValidDeductInstancesShrinkRequest = GetValidDeductInstancesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.sdkRequest)) {
            request.sdkRequestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sdkRequest, "SdkRequest", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sdkRequestShrink)) {
            query["SdkRequest"] = request.sdkRequestShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetValidDeductInstances",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetValidDeductInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getValidDeductInstances(_ request: GetValidDeductInstancesRequest) async throws -> GetValidDeductInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getValidDeductInstancesWithOptions(request as! GetValidDeductInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initSasModuleRuleWithOptions(_ tmpReq: InitSasModuleRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InitSasModuleRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InitSasModuleRuleShrinkRequest = InitSasModuleRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.instances)) {
            request.instancesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.instances, "Instances", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoBind)) {
            query["AutoBind"] = request.autoBind!;
        }
        if (!TeaUtils.Client.isUnset(request.instancesShrink)) {
            query["Instances"] = request.instancesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isTrial)) {
            query["IsTrial"] = request.isTrial!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InitSasModuleRule",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InitSasModuleRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initSasModuleRule(_ request: InitSasModuleRuleRequest) async throws -> InitSasModuleRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await initSasModuleRuleWithOptions(request as! InitSasModuleRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVirusScanMachineEventWithOptions(_ request: ListVirusScanMachineEventRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListVirusScanMachineEventResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateTaskId)) {
            query["OperateTaskId"] = request.operateTaskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            query["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListVirusScanMachineEvent",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListVirusScanMachineEventResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVirusScanMachineEvent(_ request: ListVirusScanMachineEventRequest) async throws -> ListVirusScanMachineEventResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listVirusScanMachineEventWithOptions(request as! ListVirusScanMachineEventRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openTrialPackageWithOptions(_ request: OpenTrialPackageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OpenTrialPackageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoCloseSwitch)) {
            query["AutoCloseSwitch"] = request.autoCloseSwitch!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OpenTrialPackage",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OpenTrialPackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openTrialPackage(_ request: OpenTrialPackageRequest) async throws -> OpenTrialPackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await openTrialPackageWithOptions(request as! OpenTrialPackageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountSafetyIncidentWithOptions(_ request: QueryAccountSafetyIncidentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAccountSafetyIncidentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliyunLang)) {
            query["AliyunLang"] = request.aliyunLang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.caseCode)) {
            query["CaseCode"] = request.caseCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.current)) {
            query["Current"] = request.current ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventId)) {
            query["EventId"] = request.eventId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.punishEndTime)) {
            query["PunishEndTime"] = request.punishEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.punishStartTime)) {
            query["PunishStartTime"] = request.punishStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAccountSafetyIncident",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAccountSafetyIncidentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountSafetyIncident(_ request: QueryAccountSafetyIncidentRequest) async throws -> QueryAccountSafetyIncidentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAccountSafetyIncidentWithOptions(request as! QueryAccountSafetyIncidentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryGuideSubStatusWithOptions(_ request: QueryGuideSubStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryGuideSubStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryGuideSubStatus",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryGuideSubStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryGuideSubStatus(_ request: QueryGuideSubStatusRequest) async throws -> QueryGuideSubStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryGuideSubStatusWithOptions(request as! QueryGuideSubStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryResourceControlEventsWithOptions(_ tmpReq: QueryResourceControlEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryResourceControlEventsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryResourceControlEventsShrinkRequest = QueryResourceControlEventsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.actionCodes)) {
            request.actionCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.actionCodes, "ActionCodes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.caseCodesPrefix)) {
            request.caseCodesPrefixShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.caseCodesPrefix, "CaseCodesPrefix", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.eventCodes)) {
            request.eventCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.eventCodes, "EventCodes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.eventIdList)) {
            request.eventIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.eventIdList, "EventIdList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.excludeActionCodes)) {
            request.excludeActionCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.excludeActionCodes, "ExcludeActionCodes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.excludeEventCodes)) {
            request.excludeEventCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.excludeEventCodes, "ExcludeEventCodes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.excludeReasons)) {
            request.excludeReasonsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.excludeReasons, "ExcludeReasons", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.includeReasons)) {
            request.includeReasonsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.includeReasons, "IncludeReasons", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sourceCodes)) {
            request.sourceCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sourceCodes, "SourceCodes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.statusList)) {
            request.statusListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.statusList, "StatusList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionCode)) {
            query["ActionCode"] = request.actionCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.actionCodesShrink)) {
            query["ActionCodes"] = request.actionCodesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aliyunLang)) {
            query["AliyunLang"] = request.aliyunLang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessCode)) {
            query["BusinessCode"] = request.businessCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.caseCodesPrefixShrink)) {
            query["CaseCodesPrefix"] = request.caseCodesPrefixShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.current)) {
            query["Current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventCode)) {
            query["EventCode"] = request.eventCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventCodesShrink)) {
            query["EventCodes"] = request.eventCodesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventId)) {
            query["EventId"] = request.eventId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventIdListShrink)) {
            query["EventIdList"] = request.eventIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeActionCodesShrink)) {
            query["ExcludeActionCodes"] = request.excludeActionCodesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeEventCodesShrink)) {
            query["ExcludeEventCodes"] = request.excludeEventCodesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeReasonsShrink)) {
            query["ExcludeReasons"] = request.excludeReasonsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includeReasonsShrink)) {
            query["IncludeReasons"] = request.includeReasonsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.punishEndTime)) {
            query["PunishEndTime"] = request.punishEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.punishStartTime)) {
            query["PunishStartTime"] = request.punishStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reason)) {
            query["Reason"] = request.reason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceCodesShrink)) {
            query["SourceCodes"] = request.sourceCodesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statusListShrink)) {
            query["StatusList"] = request.statusListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryResourceControlEvents",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryResourceControlEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryResourceControlEvents(_ request: QueryResourceControlEventsRequest) async throws -> QueryResourceControlEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryResourceControlEventsWithOptions(request as! QueryResourceControlEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySecurityCheckReportWithOptions(_ request: QuerySecurityCheckReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySecurityCheckReportResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySecurityCheckReport",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySecurityCheckReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySecurityCheckReport(_ request: QuerySecurityCheckReportRequest) async throws -> QuerySecurityCheckReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySecurityCheckReportWithOptions(request as! QuerySecurityCheckReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startDisposalToolServiceWithOptions(_ request: StartDisposalToolServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartDisposalToolServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartDisposalToolService",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartDisposalToolServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startDisposalToolService(_ request: StartDisposalToolServiceRequest) async throws -> StartDisposalToolServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startDisposalToolServiceWithOptions(request as! StartDisposalToolServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startSecurityCheckServiceWithOptions(_ request: StartSecurityCheckServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartSecurityCheckServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartSecurityCheckService",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartSecurityCheckServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startSecurityCheckService(_ request: StartSecurityCheckServiceRequest) async throws -> StartSecurityCheckServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startSecurityCheckServiceWithOptions(request as! StartSecurityCheckServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitApplyRecordWithOptions(_ tmpReq: SubmitApplyRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitApplyRecordResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitApplyRecordShrinkRequest = SubmitApplyRecordShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.eventIdList)) {
            request.eventIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.eventIdList, "EventIdList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyRequest)) {
            query["ApplyRequest"] = request.applyRequest ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commitmentLetter)) {
            query["CommitmentLetter"] = request.commitmentLetter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventIdListShrink)) {
            query["EventIdList"] = request.eventIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.qualificationProof)) {
            query["QualificationProof"] = request.qualificationProof ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trial)) {
            query["Trial"] = request.trial!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitApplyRecord",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitApplyRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitApplyRecord(_ request: SubmitApplyRecordRequest) async throws -> SubmitApplyRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitApplyRecordWithOptions(request as! SubmitApplyRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePostPaidBindRelWithOptions(_ tmpReq: UpdatePostPaidBindRelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePostPaidBindRelResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdatePostPaidBindRelShrinkRequest = UpdatePostPaidBindRelShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.sdkRequest)) {
            request.sdkRequestShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sdkRequest, "SdkRequest", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sdkRequestShrink)) {
            query["SdkRequest"] = request.sdkRequestShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePostPaidBindRel",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePostPaidBindRelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePostPaidBindRel(_ request: UpdatePostPaidBindRelRequest) async throws -> UpdatePostPaidBindRelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updatePostPaidBindRelWithOptions(request as! UpdatePostPaidBindRelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSecurityCheckResultWithOptions(_ request: UpdateSecurityCheckResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSecurityCheckResultResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSecurityCheckResult",
            "version": "2026-04-24",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSecurityCheckResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSecurityCheckResult(_ request: UpdateSecurityCheckResultRequest) async throws -> UpdateSecurityCheckResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateSecurityCheckResultWithOptions(request as! UpdateSecurityCheckResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
