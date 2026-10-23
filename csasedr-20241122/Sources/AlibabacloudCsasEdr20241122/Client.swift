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
        self._endpoint = try getEndpoint("csasedr", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func describeNsasSuspEventTypeWithOptions(_ request: DescribeNsasSuspEventTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNsasSuspEventTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.containerFieldName)) {
            query["ContainerFieldName"] = request.containerFieldName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.containerFieldValue)) {
            query["ContainerFieldValue"] = request.containerFieldValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIp)) {
            query["SourceIp"] = request.sourceIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuids)) {
            query["Uuids"] = request.uuids ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNsasSuspEventType",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNsasSuspEventTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNsasSuspEventType(_ request: DescribeNsasSuspEventTypeRequest) async throws -> DescribeNsasSuspEventTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNsasSuspEventTypeWithOptions(request as! DescribeNsasSuspEventTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityEventOperationsWithOptions(_ request: DescribeSecurityEventOperationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSecurityEventOperationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.securityEventId)) {
            query["SecurityEventId"] = request.securityEventId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSecurityEventOperations",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSecurityEventOperationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityEventOperations(_ request: DescribeSecurityEventOperationsRequest) async throws -> DescribeSecurityEventOperationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSecurityEventOperationsWithOptions(request as! DescribeSecurityEventOperationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSuspEventsWithOptions(_ request: DescribeSuspEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSuspEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alarmEventName)) {
            query["AlarmEventName"] = request.alarmEventName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alarmUniqueInfo)) {
            query["AlarmUniqueInfo"] = request.alarmUniqueInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.assetsTypeList)) {
            query["AssetsTypeList"] = request.assetsTypeList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.containerFieldName)) {
            query["ContainerFieldName"] = request.containerFieldName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.containerFieldValue)) {
            query["ContainerFieldValue"] = request.containerFieldValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.dealed)) {
            query["Dealed"] = request.dealed ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.department)) {
            query["Department"] = request.department ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventNames)) {
            query["EventNames"] = request.eventNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.innerIp)) {
            query["InnerIp"] = request.innerIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.levels)) {
            query["Levels"] = request.levels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateErrorCodeList)) {
            query["OperateErrorCodeList"] = request.operateErrorCodeList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.operateTimeEnd)) {
            query["OperateTimeEnd"] = request.operateTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateTimeStart)) {
            query["OperateTimeStart"] = request.operateTimeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.parentEventTypes)) {
            query["ParentEventTypes"] = request.parentEventTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortColumn)) {
            query["SortColumn"] = request.sortColumn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortType)) {
            query["SortType"] = request.sortType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIp)) {
            query["SourceIp"] = request.sourceIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcIp)) {
            query["SrcIp"] = request.srcIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.strictMode)) {
            query["StrictMode"] = request.strictMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetType)) {
            query["TargetType"] = request.targetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeEnd)) {
            query["TimeEnd"] = request.timeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeStart)) {
            query["TimeStart"] = request.timeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uniqueInfo)) {
            query["UniqueInfo"] = request.uniqueInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuids)) {
            query["Uuids"] = request.uuids ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tacticId)) {
            body["TacticId"] = request.tacticId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSuspEvents",
            "version": "2024-11-22",
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
    public func handleSecurityEventsWithOptions(_ request: HandleSecurityEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> HandleSecurityEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.markBatch)) {
            query["MarkBatch"] = request.markBatch!;
        }
        if (!TeaUtils.Client.isUnset(request.markMissParam)) {
            query["MarkMissParam"] = request.markMissParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationCode)) {
            query["OperationCode"] = request.operationCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationParams)) {
            query["OperationParams"] = request.operationParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityEventIds)) {
            query["SecurityEventIds"] = request.securityEventIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HandleSecurityEvents",
            "version": "2024-11-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HandleSecurityEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func handleSecurityEvents(_ request: HandleSecurityEventsRequest) async throws -> HandleSecurityEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await handleSecurityEventsWithOptions(request as! HandleSecurityEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
