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
        self._endpoint = try getEndpoint("emas-appmonitor", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createTlogTaskWithOptions(_ request: CreateTlogTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTlogTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliYunCurrentPk)) {
            body["AliYunCurrentPk"] = request.aliYunCurrentPk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aliYunMainPk)) {
            body["AliYunMainPk"] = request.aliYunMainPk ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aliYunName)) {
            body["AliYunName"] = request.aliYunName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            body["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.appVersion)) {
            body["AppVersion"] = request.appVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.beginDate)) {
            body["BeginDate"] = request.beginDate!;
        }
        if (!TeaUtils.Client.isUnset(request.brand)) {
            body["Brand"] = request.brand ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            body["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            body["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.collectionNums)) {
            body["CollectionNums"] = request.collectionNums!;
        }
        if (!TeaUtils.Client.isUnset(request.days)) {
            body["Days"] = request.days ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceJson)) {
            body["DeviceJson"] = request.deviceJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            body["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.errorType)) {
            body["ErrorType"] = request.errorType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifySettingJson)) {
            body["NotifySettingJson"] = request.notifySettingJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.os)) {
            body["Os"] = request.os ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.osVersion)) {
            body["OsVersion"] = request.osVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            body["TaskName"] = request.taskName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTlogTask",
            "version": "2019-06-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTlogTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTlogTask(_ request: CreateTlogTaskRequest) async throws -> CreateTlogTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTlogTaskWithOptions(request as! CreateTlogTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getErrorWithOptions(_ request: GetErrorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetErrorResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            body["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.bizModule)) {
            body["BizModule"] = request.bizModule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientTime)) {
            body["ClientTime"] = request.clientTime!;
        }
        if (!TeaUtils.Client.isUnset(request.did)) {
            body["Did"] = request.did ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.digestHash)) {
            body["DigestHash"] = request.digestHash ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.force)) {
            body["Force"] = request.force!;
        }
        if (!TeaUtils.Client.isUnset(request.os)) {
            body["Os"] = request.os ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            body["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetError",
            "version": "2019-06-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetErrorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getError(_ request: GetErrorRequest) async throws -> GetErrorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getErrorWithOptions(request as! GetErrorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getErrorsWithOptions(_ tmpReq: GetErrorsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetErrorsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetErrorsShrinkRequest = GetErrorsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filter)) {
            request.filterShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filter, "Filter", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            body["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.bizModule)) {
            body["BizModule"] = request.bizModule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.digestHash)) {
            body["DigestHash"] = request.digestHash ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterShrink)) {
            body["Filter"] = request.filterShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.os)) {
            body["Os"] = request.os ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            body["PageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.timeRange)) {
            bodyFlat["TimeRange"] = request.timeRange!;
        }
        if (!TeaUtils.Client.isUnset(request.utdid)) {
            body["Utdid"] = request.utdid ?? "";
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetErrors",
            "version": "2019-06-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetErrorsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getErrors(_ request: GetErrorsRequest) async throws -> GetErrorsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getErrorsWithOptions(request as! GetErrorsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIssueWithOptions(_ tmpReq: GetIssueRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIssueResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetIssueShrinkRequest = GetIssueShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filter)) {
            request.filterShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filter, "Filter", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            body["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.bizModule)) {
            body["BizModule"] = request.bizModule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.digestHash)) {
            body["DigestHash"] = request.digestHash ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterShrink)) {
            body["Filter"] = request.filterShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.os)) {
            body["Os"] = request.os ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.timeRange)) {
            bodyFlat["TimeRange"] = request.timeRange!;
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIssue",
            "version": "2019-06-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIssueResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIssue(_ request: GetIssueRequest) async throws -> GetIssueResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getIssueWithOptions(request as! GetIssueRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIssuesWithOptions(_ tmpReq: GetIssuesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIssuesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetIssuesShrinkRequest = GetIssuesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filter)) {
            request.filterShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filter, "Filter", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            body["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.bizModule)) {
            body["BizModule"] = request.bizModule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterShrink)) {
            body["Filter"] = request.filterShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            body["OrderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderType)) {
            body["OrderType"] = request.orderType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.os)) {
            body["Os"] = request.os ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            body["PageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status!;
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.timeRange)) {
            bodyFlat["TimeRange"] = request.timeRange!;
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIssues",
            "version": "2019-06-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIssuesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIssues(_ request: GetIssuesRequest) async throws -> GetIssuesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getIssuesWithOptions(request as! GetIssuesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSymbolicFilesWithOptions(_ request: GetSymbolicFilesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSymbolicFilesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            body["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.appVersion)) {
            body["AppVersion"] = request.appVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buildId)) {
            body["BuildId"] = request.buildId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.exportStatus)) {
            body["ExportStatus"] = request.exportStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["FileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileType)) {
            body["FileType"] = request.fileType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.os)) {
            body["Os"] = request.os ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            body["PageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            body["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSymbolicFiles",
            "version": "2019-06-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSymbolicFilesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSymbolicFiles(_ request: GetSymbolicFilesRequest) async throws -> GetSymbolicFilesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSymbolicFilesWithOptions(request as! GetSymbolicFilesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTlogCollectListWithOptions(_ request: GetTlogCollectListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTlogCollectListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            body["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.appVersion)) {
            body["AppVersion"] = request.appVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.author)) {
            body["Author"] = request.author ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.beginDate)) {
            body["BeginDate"] = request.beginDate!;
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            body["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createBeginDate)) {
            body["CreateBeginDate"] = request.createBeginDate!;
        }
        if (!TeaUtils.Client.isUnset(request.createEndDate)) {
            body["CreateEndDate"] = request.createEndDate!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            body["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.os)) {
            body["Os"] = request.os ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.osVersion)) {
            body["OsVersion"] = request.osVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            body["PageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.positiveComment)) {
            body["PositiveComment"] = request.positiveComment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateBeginDate)) {
            body["UpdateBeginDate"] = request.updateBeginDate!;
        }
        if (!TeaUtils.Client.isUnset(request.updateEndDate)) {
            body["UpdateEndDate"] = request.updateEndDate!;
        }
        if (!TeaUtils.Client.isUnset(request.userNick)) {
            body["UserNick"] = request.userNick ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.utdid)) {
            body["Utdid"] = request.utdid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTlogCollectList",
            "version": "2019-06-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTlogCollectListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTlogCollectList(_ request: GetTlogCollectListRequest) async throws -> GetTlogCollectListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTlogCollectListWithOptions(request as! GetTlogCollectListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTlogDeviceInfoWithOptions(_ request: GetTlogDeviceInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTlogDeviceInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            body["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.os)) {
            body["Os"] = request.os ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTlogDeviceInfo",
            "version": "2019-06-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTlogDeviceInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTlogDeviceInfo(_ request: GetTlogDeviceInfoRequest) async throws -> GetTlogDeviceInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTlogDeviceInfoWithOptions(request as! GetTlogDeviceInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTlogDeviceListWithOptions(_ request: GetTlogDeviceListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTlogDeviceListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            body["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.appVersion)) {
            body["AppVersion"] = request.appVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.beginDate)) {
            body["BeginDate"] = request.beginDate!;
        }
        if (!TeaUtils.Client.isUnset(request.brand)) {
            body["Brand"] = request.brand ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            body["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createBeginDate)) {
            body["CreateBeginDate"] = request.createBeginDate!;
        }
        if (!TeaUtils.Client.isUnset(request.createEndDate)) {
            body["CreateEndDate"] = request.createEndDate!;
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            body["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.os)) {
            body["Os"] = request.os ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.osVersion)) {
            body["OsVersion"] = request.osVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            body["PageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.updateBeginDate)) {
            body["UpdateBeginDate"] = request.updateBeginDate!;
        }
        if (!TeaUtils.Client.isUnset(request.updateEndDate)) {
            body["UpdateEndDate"] = request.updateEndDate!;
        }
        if (!TeaUtils.Client.isUnset(request.userNick)) {
            body["UserNick"] = request.userNick ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.utdid)) {
            body["Utdid"] = request.utdid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTlogDeviceList",
            "version": "2019-06-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTlogDeviceListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTlogDeviceList(_ request: GetTlogDeviceListRequest) async throws -> GetTlogDeviceListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTlogDeviceListWithOptions(request as! GetTlogDeviceListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTlogTaskCollectionsWithOptions(_ request: GetTlogTaskCollectionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTlogTaskCollectionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            body["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.os)) {
            body["Os"] = request.os ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTlogTaskCollections",
            "version": "2019-06-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTlogTaskCollectionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTlogTaskCollections(_ request: GetTlogTaskCollectionsRequest) async throws -> GetTlogTaskCollectionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTlogTaskCollectionsWithOptions(request as! GetTlogTaskCollectionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTlogTaskInfoWithOptions(_ request: GetTlogTaskInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTlogTaskInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            body["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.os)) {
            body["Os"] = request.os ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTlogTaskInfo",
            "version": "2019-06-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTlogTaskInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTlogTaskInfo(_ request: GetTlogTaskInfoRequest) async throws -> GetTlogTaskInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTlogTaskInfoWithOptions(request as! GetTlogTaskInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func requestUploadTokenWithOptions(_ request: RequestUploadTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RequestUploadTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            body["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.os)) {
            body["Os"] = request.os ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RequestUploadToken",
            "version": "2019-06-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RequestUploadTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func requestUploadToken(_ request: RequestUploadTokenRequest) async throws -> RequestUploadTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await requestUploadTokenWithOptions(request as! RequestUploadTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchTlogWithOptions(_ request: SearchTlogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchTlogResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            body["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.beginDate)) {
            body["BeginDate"] = request.beginDate!;
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            body["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            body["EndDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.levelJson)) {
            body["LevelJson"] = request.levelJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.os)) {
            body["Os"] = request.os ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            body["PageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchTlog",
            "version": "2019-06-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchTlogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchTlog(_ request: SearchTlogRequest) async throws -> SearchTlogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchTlogWithOptions(request as! SearchTlogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitSymbolicWithOptions(_ request: SubmitSymbolicRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitSymbolicResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            body["AppKey"] = request.appKey!;
        }
        if (!TeaUtils.Client.isUnset(request.appVersion)) {
            body["AppVersion"] = request.appVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buildId)) {
            body["BuildId"] = request.buildId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["FileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            body["FilePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileType)) {
            body["FileType"] = request.fileType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.os)) {
            body["Os"] = request.os ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            body["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitSymbolic",
            "version": "2019-06-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitSymbolicResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitSymbolic(_ request: SubmitSymbolicRequest) async throws -> SubmitSymbolicResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitSymbolicWithOptions(request as! SubmitSymbolicRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
