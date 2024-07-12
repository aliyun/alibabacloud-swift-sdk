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
        self._endpoint = try getEndpoint("buss", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func businessResultServiceWithOptions(_ tmpReq: BusinessResultServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BusinessResultServiceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BusinessResultServiceShrinkRequest = BusinessResultServiceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.result)) {
            request.resultShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.result, "Result", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BusinessResultService",
            "version": "2022-08-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BusinessResultServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func businessResultService(_ request: BusinessResultServiceRequest) async throws -> BusinessResultServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await businessResultServiceWithOptions(request as! BusinessResultServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserInvestigationInfoQueryTaskWithOptions(_ request: CreateUserInvestigationInfoQueryTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUserInvestigationInfoQueryTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUserInvestigationInfoQueryTask",
            "version": "2022-08-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUserInvestigationInfoQueryTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserInvestigationInfoQueryTask(_ request: CreateUserInvestigationInfoQueryTaskRequest) async throws -> CreateUserInvestigationInfoQueryTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createUserInvestigationInfoQueryTaskWithOptions(request as! CreateUserInvestigationInfoQueryTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findInstanceInfoWithOptions(_ tmpReq: FindInstanceInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FindInstanceInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FindInstanceInfoShrinkRequest = FindInstanceInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extras)) {
            request.extrasShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extras, "extras", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FindInstanceInfo",
            "version": "2022-08-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FindInstanceInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findInstanceInfo(_ request: FindInstanceInfoRequest) async throws -> FindInstanceInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await findInstanceInfoWithOptions(request as! FindInstanceInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findUserAvailbleResourcesWithOptions(_ request: FindUserAvailbleResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FindUserAvailbleResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FindUserAvailbleResources",
            "version": "2022-08-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FindUserAvailbleResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findUserAvailbleResources(_ request: FindUserAvailbleResourcesRequest) async throws -> FindUserAvailbleResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await findUserAvailbleResourcesWithOptions(request as! FindUserAvailbleResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func punishResourceSearchWithOptions(_ tmpReq: PunishResourceSearchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PunishResourceSearchResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: PunishResourceSearchShrinkRequest = PunishResourceSearchShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.actionCodes)) {
            request.actionCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.actionCodes, "ActionCodes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.bussinessCodes)) {
            request.bussinessCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.bussinessCodes, "BussinessCodes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sourceCodes)) {
            request.sourceCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sourceCodes, "SourceCodes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.userIds)) {
            request.userIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userIds, "UserIds", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PunishResourceSearch",
            "version": "2022-08-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PunishResourceSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func punishResourceSearch(_ request: PunishResourceSearchRequest) async throws -> PunishResourceSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await punishResourceSearchWithOptions(request as! PunishResourceSearchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func riskEventSyncWithOptions(_ request: RiskEventSyncRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RiskEventSyncResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deleted)) {
            body["Deleted"] = request.deleted!;
        }
        if (!TeaUtils.Client.isUnset(request.discoveryTime)) {
            body["DiscoveryTime"] = request.discoveryTime!;
        }
        if (!TeaUtils.Client.isUnset(request.eventName)) {
            body["EventName"] = request.eventName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventNumber)) {
            body["EventNumber"] = request.eventNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relevanceBu)) {
            body["RelevanceBu"] = request.relevanceBu ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskDetail)) {
            body["RiskDetail"] = request.riskDetail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskEffectType)) {
            body["RiskEffectType"] = request.riskEffectType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskLevel)) {
            body["RiskLevel"] = request.riskLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskType)) {
            body["RiskType"] = request.riskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            body["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.submitter)) {
            body["Submitter"] = request.submitter ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RiskEventSync",
            "version": "2022-08-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RiskEventSyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func riskEventSync(_ request: RiskEventSyncRequest) async throws -> RiskEventSyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await riskEventSyncWithOptions(request as! RiskEventSyncRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchPunishEventsWithOptions(_ tmpReq: SearchPunishEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchPunishEventsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SearchPunishEventsShrinkRequest = SearchPunishEventsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.bussinessCodes)) {
            request.bussinessCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.bussinessCodes, "BussinessCodes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.caseCodes)) {
            request.caseCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.caseCodes, "CaseCodes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.eventCodes)) {
            request.eventCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.eventCodes, "EventCodes", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliUid)) {
            query["AliUid"] = request.aliUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bussinessCodesShrink)) {
            query["BussinessCodes"] = request.bussinessCodesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.caseCodesShrink)) {
            query["CaseCodes"] = request.caseCodesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventCodesShrink)) {
            query["EventCodes"] = request.eventCodesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchPunishEvents",
            "version": "2022-08-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchPunishEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchPunishEvents(_ request: SearchPunishEventsRequest) async throws -> SearchPunishEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchPunishEventsWithOptions(request as! SearchPunishEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchPunishRecordsWithOptions(_ tmpReq: SearchPunishRecordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchPunishRecordsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SearchPunishRecordsShrinkRequest = SearchPunishRecordsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.actionCodes)) {
            request.actionCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.actionCodes, "ActionCodes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.caseCodes)) {
            request.caseCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.caseCodes, "CaseCodes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.eventCodes)) {
            request.eventCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.eventCodes, "EventCodes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.punishStatus)) {
            request.punishStatusShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.punishStatus, "PunishStatus", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sourceCodes)) {
            request.sourceCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sourceCodes, "SourceCodes", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionCodesShrink)) {
            query["ActionCodes"] = request.actionCodesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aliUid)) {
            query["AliUid"] = request.aliUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bussinessCodes)) {
            query["BussinessCodes"] = request.bussinessCodes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.caseCodesShrink)) {
            query["CaseCodes"] = request.caseCodesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.eventCodesShrink)) {
            query["EventCodes"] = request.eventCodesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["Page"] = request.page ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.punishStatusShrink)) {
            query["PunishStatus"] = request.punishStatusShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceCodesShrink)) {
            query["SourceCodes"] = request.sourceCodesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.urlFuzzy)) {
            query["UrlFuzzy"] = request.urlFuzzy ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchPunishRecords",
            "version": "2022-08-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchPunishRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchPunishRecords(_ request: SearchPunishRecordsRequest) async throws -> SearchPunishRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchPunishRecordsWithOptions(request as! SearchPunishRecordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchPunishRequestWithOptions(_ tmpReq: SearchPunishRequestRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchPunishRequestResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SearchPunishRequestShrinkRequest = SearchPunishRequestShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.antiStatuses)) {
            request.antiStatusesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.antiStatuses, "AntiStatuses", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.bussinessCodes)) {
            request.bussinessCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.bussinessCodes, "BussinessCodes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.eventCodes)) {
            request.eventCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.eventCodes, "EventCodes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.punishStatuses)) {
            request.punishStatusesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.punishStatuses, "PunishStatuses", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sourceCodes)) {
            request.sourceCodesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sourceCodes, "SourceCodes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.userIds)) {
            request.userIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userIds, "UserIds", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchPunishRequest",
            "version": "2022-08-22",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchPunishRequestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchPunishRequest(_ request: SearchPunishRequestRequest) async throws -> SearchPunishRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchPunishRequestWithOptions(request as! SearchPunishRequestRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
