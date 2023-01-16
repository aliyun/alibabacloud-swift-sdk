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
        self._endpoint = try getEndpoint("btripopen", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func accessTokenWithOptions(_ request: AccessTokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AccessTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appKey)) {
            query["app_key"] = request.appKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.appSecret)) {
            query["app_secret"] = request.appSecret ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AccessToken",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/btrip-open-auth/v1/access-token/action/take",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AccessTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func accessToken(_ request: AccessTokenRequest) async throws -> AccessTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await accessTokenWithOptions(request as! AccessTokenRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addressGetWithOptions(_ request: AddressGetRequest, _ headers: AddressGetHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddressGetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionType)) {
            query["action_type"] = request.actionType!;
        }
        if (!TeaUtils.Client.isUnset(request.itineraryId)) {
            query["itinerary_id"] = request.itineraryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            query["phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddressGet",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/open/v1/address",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddressGetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addressGet(_ request: AddressGetRequest) async throws -> AddressGetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AddressGetHeaders = AddressGetHeaders([:])
        return try await addressGetWithOptions(request as! AddressGetRequest, headers as! AddressGetHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func airportSearchWithOptions(_ request: AirportSearchRequest, _ headers: AirportSearchHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AirportSearchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AirportSearch",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/city/v1/airport",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AirportSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func airportSearch(_ request: AirportSearchRequest) async throws -> AirportSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AirportSearchHeaders = AirportSearchHeaders([:])
        return try await airportSearchWithOptions(request as! AirportSearchRequest, headers as! AirportSearchHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func allBaseCityInfoQueryWithOptions(_ headers: AllBaseCityInfoQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AllBaseCityInfoQueryResponse {
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripAccessToken)) {
            realHeaders["x-acs-btrip-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripAccessToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AllBaseCityInfoQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/city/v1/code",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AllBaseCityInfoQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func allBaseCityInfoQuery() async throws -> AllBaseCityInfoQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AllBaseCityInfoQueryHeaders = AllBaseCityInfoQueryHeaders([:])
        return try await allBaseCityInfoQueryWithOptions(headers as! AllBaseCityInfoQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyAddWithOptions(_ tmpReq: ApplyAddRequest, _ headers: ApplyAddHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyAddResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ApplyAddShrinkRequest = ApplyAddShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.externalTravelerList)) {
            request.externalTravelerListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.externalTravelerList, "external_traveler_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.externalTravelerStandard)) {
            request.externalTravelerStandardShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.externalTravelerStandard, "external_traveler_standard", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.hotelShare)) {
            request.hotelShareShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.hotelShare, "hotel_share", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.itineraryList)) {
            request.itineraryListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.itineraryList, "itinerary_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.itinerarySetList)) {
            request.itinerarySetListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.itinerarySetList, "itinerary_set_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.travelerList)) {
            request.travelerListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.travelerList, "traveler_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.travelerStandard)) {
            request.travelerStandardShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.travelerStandard, "traveler_standard", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.internationalFlightCabins)) {
            query["international_flight_cabins"] = request.internationalFlightCabins ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.budget)) {
            body["budget"] = request.budget!;
        }
        if (!TeaUtils.Client.isUnset(request.budgetMerge)) {
            body["budget_merge"] = request.budgetMerge!;
        }
        if (!TeaUtils.Client.isUnset(request.corpName)) {
            body["corp_name"] = request.corpName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.departId)) {
            body["depart_id"] = request.departId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.departName)) {
            body["depart_name"] = request.departName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalTravelerListShrink)) {
            body["external_traveler_list"] = request.externalTravelerListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalTravelerStandardShrink)) {
            body["external_traveler_standard"] = request.externalTravelerStandardShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flightBudget)) {
            body["flight_budget"] = request.flightBudget!;
        }
        if (!TeaUtils.Client.isUnset(request.hotelBudget)) {
            body["hotel_budget"] = request.hotelBudget!;
        }
        if (!TeaUtils.Client.isUnset(request.hotelShareShrink)) {
            body["hotel_share"] = request.hotelShareShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itineraryListShrink)) {
            body["itinerary_list"] = request.itineraryListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itineraryRule)) {
            body["itinerary_rule"] = request.itineraryRule!;
        }
        if (!TeaUtils.Client.isUnset(request.itinerarySetListShrink)) {
            body["itinerary_set_list"] = request.itinerarySetListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limitTraveler)) {
            body["limit_traveler"] = request.limitTraveler!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartApplyId)) {
            body["thirdpart_apply_id"] = request.thirdpartApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartBusinessId)) {
            body["thirdpart_business_id"] = request.thirdpartBusinessId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartDepartId)) {
            body["thirdpart_depart_id"] = request.thirdpartDepartId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.togetherBookRule)) {
            body["together_book_rule"] = request.togetherBookRule!;
        }
        if (!TeaUtils.Client.isUnset(request.trainBudget)) {
            body["train_budget"] = request.trainBudget!;
        }
        if (!TeaUtils.Client.isUnset(request.travelerListShrink)) {
            body["traveler_list"] = request.travelerListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.travelerStandardShrink)) {
            body["traveler_standard"] = request.travelerStandardShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tripCause)) {
            body["trip_cause"] = request.tripCause ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tripDay)) {
            body["trip_day"] = request.tripDay!;
        }
        if (!TeaUtils.Client.isUnset(request.tripTitle)) {
            body["trip_title"] = request.tripTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.unionNo)) {
            body["union_no"] = request.unionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["user_name"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleBudget)) {
            body["vehicle_budget"] = request.vehicleBudget!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyAdd",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/biz-trip",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyAddResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyAdd(_ request: ApplyAddRequest) async throws -> ApplyAddResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ApplyAddHeaders = ApplyAddHeaders([:])
        return try await applyAddWithOptions(request as! ApplyAddRequest, headers as! ApplyAddHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyApproveWithOptions(_ request: ApplyApproveRequest, _ headers: ApplyApproveHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyApproveResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            body["apply_id"] = request.applyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.note)) {
            body["note"] = request.note ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateTime)) {
            body["operate_time"] = request.operateTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["user_name"] = request.userName ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyApprove",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/biz-trip/action/approve",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyApproveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyApprove(_ request: ApplyApproveRequest) async throws -> ApplyApproveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ApplyApproveHeaders = ApplyApproveHeaders([:])
        return try await applyApproveWithOptions(request as! ApplyApproveRequest, headers as! ApplyApproveHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyListQueryWithOptions(_ request: ApplyListQueryRequest, _ headers: ApplyListQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyListQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allApply)) {
            query["all_apply"] = request.allApply!;
        }
        if (!TeaUtils.Client.isUnset(request.departId)) {
            query["depart_id"] = request.departId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["end_time"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gmtModified)) {
            query["gmt_modified"] = request.gmtModified ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onlyShangLvApply)) {
            query["only_shang_lv_apply"] = request.onlyShangLvApply!;
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["start_time"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.unionNo)) {
            query["union_no"] = request.unionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyListQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/biz-trips",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyListQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyListQuery(_ request: ApplyListQueryRequest) async throws -> ApplyListQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ApplyListQueryHeaders = ApplyListQueryHeaders([:])
        return try await applyListQueryWithOptions(request as! ApplyListQueryRequest, headers as! ApplyListQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyModifyWithOptions(_ tmpReq: ApplyModifyRequest, _ headers: ApplyModifyHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyModifyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ApplyModifyShrinkRequest = ApplyModifyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.externalTravelerList)) {
            request.externalTravelerListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.externalTravelerList, "external_traveler_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.externalTravelerStandard)) {
            request.externalTravelerStandardShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.externalTravelerStandard, "external_traveler_standard", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.hotelShare)) {
            request.hotelShareShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.hotelShare, "hotel_share", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.itineraryList)) {
            request.itineraryListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.itineraryList, "itinerary_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.itinerarySetList)) {
            request.itinerarySetListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.itinerarySetList, "itinerary_set_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.travelerList)) {
            request.travelerListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.travelerList, "traveler_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.travelerStandard)) {
            request.travelerStandardShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.travelerStandard, "traveler_standard", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.budget)) {
            body["budget"] = request.budget!;
        }
        if (!TeaUtils.Client.isUnset(request.budgetMerge)) {
            body["budget_merge"] = request.budgetMerge!;
        }
        if (!TeaUtils.Client.isUnset(request.corpName)) {
            body["corp_name"] = request.corpName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.departId)) {
            body["depart_id"] = request.departId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.departName)) {
            body["depart_name"] = request.departName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalTravelerListShrink)) {
            body["external_traveler_list"] = request.externalTravelerListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalTravelerStandardShrink)) {
            body["external_traveler_standard"] = request.externalTravelerStandardShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flightBudget)) {
            body["flight_budget"] = request.flightBudget!;
        }
        if (!TeaUtils.Client.isUnset(request.hotelBudget)) {
            body["hotel_budget"] = request.hotelBudget!;
        }
        if (!TeaUtils.Client.isUnset(request.hotelShareShrink)) {
            body["hotel_share"] = request.hotelShareShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itineraryListShrink)) {
            body["itinerary_list"] = request.itineraryListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itineraryRule)) {
            body["itinerary_rule"] = request.itineraryRule!;
        }
        if (!TeaUtils.Client.isUnset(request.itinerarySetListShrink)) {
            body["itinerary_set_list"] = request.itinerarySetListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limitTraveler)) {
            body["limit_traveler"] = request.limitTraveler!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartApplyId)) {
            body["thirdpart_apply_id"] = request.thirdpartApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartBusinessId)) {
            body["thirdpart_business_id"] = request.thirdpartBusinessId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartDepartId)) {
            body["thirdpart_depart_id"] = request.thirdpartDepartId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.togetherBookRule)) {
            body["together_book_rule"] = request.togetherBookRule!;
        }
        if (!TeaUtils.Client.isUnset(request.trainBudget)) {
            body["train_budget"] = request.trainBudget!;
        }
        if (!TeaUtils.Client.isUnset(request.travelerListShrink)) {
            body["traveler_list"] = request.travelerListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.travelerStandardShrink)) {
            body["traveler_standard"] = request.travelerStandardShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tripCause)) {
            body["trip_cause"] = request.tripCause ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tripDay)) {
            body["trip_day"] = request.tripDay!;
        }
        if (!TeaUtils.Client.isUnset(request.tripTitle)) {
            body["trip_title"] = request.tripTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unionNo)) {
            body["union_no"] = request.unionNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["user_name"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vehicleBudget)) {
            body["vehicle_budget"] = request.vehicleBudget!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyModify",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/biz-trip",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyModifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyModify(_ request: ApplyModifyRequest) async throws -> ApplyModifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ApplyModifyHeaders = ApplyModifyHeaders([:])
        return try await applyModifyWithOptions(request as! ApplyModifyRequest, headers as! ApplyModifyHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyQueryWithOptions(_ request: ApplyQueryRequest, _ headers: ApplyQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        if (!TeaUtils.Client.isUnset(request.applyShowId)) {
            query["apply_show_id"] = request.applyShowId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartApplyId)) {
            query["thirdpart_apply_id"] = request.thirdpartApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/biz-trip",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyQuery(_ request: ApplyQueryRequest) async throws -> ApplyQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ApplyQueryHeaders = ApplyQueryHeaders([:])
        return try await applyQueryWithOptions(request as! ApplyQueryRequest, headers as! ApplyQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carApplyAddWithOptions(_ request: CarApplyAddRequest, _ headers: CarApplyAddHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CarApplyAddResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cause)) {
            body["cause"] = request.cause ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            body["city"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.date)) {
            body["date"] = request.date ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.finishedDate)) {
            body["finished_date"] = request.finishedDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectCode)) {
            body["project_code"] = request.projectCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["project_name"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartApplyId)) {
            body["third_part_apply_id"] = request.thirdPartApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartCostCenterId)) {
            body["third_part_cost_center_id"] = request.thirdPartCostCenterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartInvoiceId)) {
            body["third_part_invoice_id"] = request.thirdPartInvoiceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timesTotal)) {
            body["times_total"] = request.timesTotal!;
        }
        if (!TeaUtils.Client.isUnset(request.timesType)) {
            body["times_type"] = request.timesType!;
        }
        if (!TeaUtils.Client.isUnset(request.timesUsed)) {
            body["times_used"] = request.timesUsed!;
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CarApplyAdd",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/car",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CarApplyAddResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carApplyAdd(_ request: CarApplyAddRequest) async throws -> CarApplyAddResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CarApplyAddHeaders = CarApplyAddHeaders([:])
        return try await carApplyAddWithOptions(request as! CarApplyAddRequest, headers as! CarApplyAddHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carApplyModifyWithOptions(_ request: CarApplyModifyRequest, _ headers: CarApplyModifyHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CarApplyModifyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operateTime)) {
            body["operate_time"] = request.operateTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            body["remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartApplyId)) {
            body["third_part_apply_id"] = request.thirdPartApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CarApplyModify",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/car",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CarApplyModifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carApplyModify(_ request: CarApplyModifyRequest) async throws -> CarApplyModifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CarApplyModifyHeaders = CarApplyModifyHeaders([:])
        return try await carApplyModifyWithOptions(request as! CarApplyModifyRequest, headers as! CarApplyModifyHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carApplyQueryWithOptions(_ request: CarApplyQueryRequest, _ headers: CarApplyQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CarApplyQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createdEndAt)) {
            query["created_end_at"] = request.createdEndAt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createdStartAt)) {
            query["created_start_at"] = request.createdStartAt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["page_number"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartApplyId)) {
            query["third_part_apply_id"] = request.thirdPartApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CarApplyQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/car",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CarApplyQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carApplyQuery(_ request: CarApplyQueryRequest) async throws -> CarApplyQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CarApplyQueryHeaders = CarApplyQueryHeaders([:])
        return try await carApplyQueryWithOptions(request as! CarApplyQueryRequest, headers as! CarApplyQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carBillSettlementQueryWithOptions(_ request: CarBillSettlementQueryRequest, _ headers: CarBillSettlementQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CarBillSettlementQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["page_no"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.periodEnd)) {
            query["period_end"] = request.periodEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodStart)) {
            query["period_start"] = request.periodStart ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CarBillSettlementQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/car/v1/bill-settlement",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CarBillSettlementQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carBillSettlementQuery(_ request: CarBillSettlementQueryRequest) async throws -> CarBillSettlementQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CarBillSettlementQueryHeaders = CarBillSettlementQueryHeaders([:])
        return try await carBillSettlementQueryWithOptions(request as! CarBillSettlementQueryRequest, headers as! CarBillSettlementQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carOrderListQueryWithOptions(_ request: CarOrderListQueryRequest, _ headers: CarOrderListQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CarOrderListQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allApply)) {
            query["all_apply"] = request.allApply!;
        }
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        if (!TeaUtils.Client.isUnset(request.departId)) {
            query["depart_id"] = request.departId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["end_time"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["start_time"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartApplyId)) {
            query["thirdpart_apply_id"] = request.thirdpartApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateEndTime)) {
            query["update_end_time"] = request.updateEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateStartTime)) {
            query["update_start_time"] = request.updateStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CarOrderListQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/car/v1/order-list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CarOrderListQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carOrderListQuery(_ request: CarOrderListQueryRequest) async throws -> CarOrderListQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CarOrderListQueryHeaders = CarOrderListQueryHeaders([:])
        return try await carOrderListQueryWithOptions(request as! CarOrderListQueryRequest, headers as! CarOrderListQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carOrderQueryWithOptions(_ request: CarOrderQueryRequest, _ headers: CarOrderQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CarOrderQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.subOrderId)) {
            query["sub_order_id"] = request.subOrderId!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CarOrderQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/car/v1/order",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CarOrderQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func carOrderQuery(_ request: CarOrderQueryRequest) async throws -> CarOrderQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CarOrderQueryHeaders = CarOrderQueryHeaders([:])
        return try await carOrderQueryWithOptions(request as! CarOrderQueryRequest, headers as! CarOrderQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func citySearchWithOptions(_ request: CitySearchRequest, _ headers: CitySearchHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CitySearchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CitySearch",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/city/v1/city",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CitySearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func citySearch(_ request: CitySearchRequest) async throws -> CitySearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CitySearchHeaders = CitySearchHeaders([:])
        return try await citySearchWithOptions(request as! CitySearchRequest, headers as! CitySearchHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func commonApplyQueryWithOptions(_ request: CommonApplyQueryRequest, _ headers: CommonApplyQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CommonApplyQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        if (!TeaUtils.Client.isUnset(request.bizCategory)) {
            query["biz_category"] = request.bizCategory!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CommonApplyQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/common",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CommonApplyQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func commonApplyQuery(_ request: CommonApplyQueryRequest) async throws -> CommonApplyQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CommonApplyQueryHeaders = CommonApplyQueryHeaders([:])
        return try await commonApplyQueryWithOptions(request as! CommonApplyQueryRequest, headers as! CommonApplyQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func commonApplySyncWithOptions(_ request: CommonApplySyncRequest, _ headers: CommonApplySyncHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CommonApplySyncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        if (!TeaUtils.Client.isUnset(request.bizCategory)) {
            query["biz_category"] = request.bizCategory!;
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartyFlowId)) {
            query["thirdparty_flow_id"] = request.thirdpartyFlowId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CommonApplySync",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/syn-common",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CommonApplySyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func commonApplySync(_ request: CommonApplySyncRequest) async throws -> CommonApplySyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CommonApplySyncHeaders = CommonApplySyncHeaders([:])
        return try await commonApplySyncWithOptions(request as! CommonApplySyncRequest, headers as! CommonApplySyncHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func corpAuthLinkInfoQueryWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CorpAuthLinkInfoQueryResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CorpAuthLinkInfoQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/corp-authority-link/v1/info",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CorpAuthLinkInfoQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func corpAuthLinkInfoQuery() async throws -> CorpAuthLinkInfoQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await corpAuthLinkInfoQueryWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func corpTokenWithOptions(_ request: CorpTokenRequest, _ headers: CorpTokenHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CorpTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appSecret)) {
            query["app_secret"] = request.appSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpId)) {
            query["corp_id"] = request.corpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["type"] = request.type!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripAccessToken)) {
            realHeaders["x-acs-btrip-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripAccessToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CorpToken",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/btrip-open-auth/v1/corp-token/action/take",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CorpTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func corpToken(_ request: CorpTokenRequest) async throws -> CorpTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CorpTokenHeaders = CorpTokenHeaders([:])
        return try await corpTokenWithOptions(request as! CorpTokenRequest, headers as! CorpTokenHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func costCenterDeleteWithOptions(_ request: CostCenterDeleteRequest, _ headers: CostCenterDeleteHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CostCenterDeleteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.thirdpartId)) {
            query["thirdpart_id"] = request.thirdpartId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CostCenterDelete",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/costcenter/v1/delete-costcenter",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CostCenterDeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func costCenterDelete(_ request: CostCenterDeleteRequest) async throws -> CostCenterDeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CostCenterDeleteHeaders = CostCenterDeleteHeaders([:])
        return try await costCenterDeleteWithOptions(request as! CostCenterDeleteRequest, headers as! CostCenterDeleteHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func costCenterModifyWithOptions(_ request: CostCenterModifyRequest, _ headers: CostCenterModifyHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CostCenterModifyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alipayNo)) {
            body["alipay_no"] = request.alipayNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.number)) {
            body["number"] = request.number ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["scope"] = request.scope!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartId)) {
            body["thirdpart_id"] = request.thirdpartId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["title"] = request.title ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CostCenterModify",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/costcenter/v1/modify-costcenter",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CostCenterModifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func costCenterModify(_ request: CostCenterModifyRequest) async throws -> CostCenterModifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CostCenterModifyHeaders = CostCenterModifyHeaders([:])
        return try await costCenterModifyWithOptions(request as! CostCenterModifyRequest, headers as! CostCenterModifyHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func costCenterQueryWithOptions(_ request: CostCenterQueryRequest, _ headers: CostCenterQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CostCenterQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.needOrgEntity)) {
            query["need_org_entity"] = request.needOrgEntity!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartId)) {
            query["thirdpart_id"] = request.thirdpartId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CostCenterQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/costcenter/v1/costcenter",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CostCenterQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func costCenterQuery(_ request: CostCenterQueryRequest) async throws -> CostCenterQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CostCenterQueryHeaders = CostCenterQueryHeaders([:])
        return try await costCenterQueryWithOptions(request as! CostCenterQueryRequest, headers as! CostCenterQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func costCenterSaveWithOptions(_ request: CostCenterSaveRequest, _ headers: CostCenterSaveHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CostCenterSaveResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alipayNo)) {
            body["alipay_no"] = request.alipayNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.number)) {
            body["number"] = request.number ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["scope"] = request.scope!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartId)) {
            body["thirdpart_id"] = request.thirdpartId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["title"] = request.title ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CostCenterSave",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/costcenter/v1/save-costcenter",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CostCenterSaveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func costCenterSave(_ request: CostCenterSaveRequest) async throws -> CostCenterSaveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CostCenterSaveHeaders = CostCenterSaveHeaders([:])
        return try await costCenterSaveWithOptions(request as! CostCenterSaveRequest, headers as! CostCenterSaveHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func departmentSaveWithOptions(_ tmpReq: DepartmentSaveRequest, _ headers: DepartmentSaveHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DepartmentSaveResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DepartmentSaveShrinkRequest = DepartmentSaveShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.departList)) {
            request.departListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.departList, "depart_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.departListShrink)) {
            body["depart_list"] = request.departListShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DepartmentSave",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/department/v1/department",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DepartmentSaveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func departmentSave(_ request: DepartmentSaveRequest) async throws -> DepartmentSaveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DepartmentSaveHeaders = DepartmentSaveHeaders([:])
        return try await departmentSaveWithOptions(request as! DepartmentSaveRequest, headers as! DepartmentSaveHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func entityAddWithOptions(_ tmpReq: EntityAddRequest, _ headers: EntityAddHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> EntityAddResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: EntityAddShrinkRequest = EntityAddShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.entityDOList)) {
            request.entityDOListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.entityDOList, "entity_d_o_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.entityDOListShrink)) {
            body["entity_d_o_list"] = request.entityDOListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartId)) {
            body["thirdpart_id"] = request.thirdpartId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EntityAdd",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/costcenter/v1/add-entity",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EntityAddResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func entityAdd(_ request: EntityAddRequest) async throws -> EntityAddResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: EntityAddHeaders = EntityAddHeaders([:])
        return try await entityAddWithOptions(request as! EntityAddRequest, headers as! EntityAddHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func entityDeleteWithOptions(_ tmpReq: EntityDeleteRequest, _ headers: EntityDeleteHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> EntityDeleteResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: EntityDeleteShrinkRequest = EntityDeleteShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.entityDOList)) {
            request.entityDOListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.entityDOList, "entity_d_o_list", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.delAll)) {
            query["del_all"] = request.delAll!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartId)) {
            query["thirdpart_id"] = request.thirdpartId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.entityDOListShrink)) {
            body["entity_d_o_list"] = request.entityDOListShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EntityDelete",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/costcenter/v1/entity/action/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EntityDeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func entityDelete(_ request: EntityDeleteRequest) async throws -> EntityDeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: EntityDeleteHeaders = EntityDeleteHeaders([:])
        return try await entityDeleteWithOptions(request as! EntityDeleteRequest, headers as! EntityDeleteHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func entitySetWithOptions(_ tmpReq: EntitySetRequest, _ headers: EntitySetHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> EntitySetResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: EntitySetShrinkRequest = EntitySetShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.entityDOList)) {
            request.entityDOListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.entityDOList, "entity_d_o_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.entityDOListShrink)) {
            body["entity_d_o_list"] = request.entityDOListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartId)) {
            body["thirdpart_id"] = request.thirdpartId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EntitySet",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/costcenter/v1/set-entity",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EntitySetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func entitySet(_ request: EntitySetRequest) async throws -> EntitySetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: EntitySetHeaders = EntitySetHeaders([:])
        return try await entitySetWithOptions(request as! EntitySetRequest, headers as! EntitySetHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func estimatedPriceQueryWithOptions(_ request: EstimatedPriceQueryRequest, _ headers: EstimatedPriceQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> EstimatedPriceQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.arrCity)) {
            query["arr_city"] = request.arrCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            query["category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depCity)) {
            query["dep_city"] = request.depCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["end_time"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.itineraryId)) {
            query["itinerary_id"] = request.itineraryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["start_time"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EstimatedPriceQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/costcenter/v1/estimated-price",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EstimatedPriceQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func estimatedPriceQuery(_ request: EstimatedPriceQueryRequest) async throws -> EstimatedPriceQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: EstimatedPriceQueryHeaders = EstimatedPriceQueryHeaders([:])
        return try await estimatedPriceQueryWithOptions(request as! EstimatedPriceQueryRequest, headers as! EstimatedPriceQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exceedApplySyncWithOptions(_ request: ExceedApplySyncRequest, _ headers: ExceedApplySyncHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExceedApplySyncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        if (!TeaUtils.Client.isUnset(request.bizCategory)) {
            query["biz_category"] = request.bizCategory!;
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartyFlowId)) {
            query["thirdparty_flow_id"] = request.thirdpartyFlowId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExceedApplySync",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/syn-exceed",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExceedApplySyncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exceedApplySync(_ request: ExceedApplySyncRequest) async throws -> ExceedApplySyncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ExceedApplySyncHeaders = ExceedApplySyncHeaders([:])
        return try await exceedApplySyncWithOptions(request as! ExceedApplySyncRequest, headers as! ExceedApplySyncHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightBillSettlementQueryWithOptions(_ request: FlightBillSettlementQueryRequest, _ headers: FlightBillSettlementQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightBillSettlementQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["page_no"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.periodEnd)) {
            query["period_end"] = request.periodEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodStart)) {
            query["period_start"] = request.periodStart ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightBillSettlementQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/flight/v1/bill-settlement",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightBillSettlementQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightBillSettlementQuery(_ request: FlightBillSettlementQueryRequest) async throws -> FlightBillSettlementQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightBillSettlementQueryHeaders = FlightBillSettlementQueryHeaders([:])
        return try await flightBillSettlementQueryWithOptions(request as! FlightBillSettlementQueryRequest, headers as! FlightBillSettlementQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightCancelOrderWithOptions(_ request: FlightCancelOrderRequest, _ headers: FlightCancelOrderHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightCancelOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            query["dis_order_id"] = request.disOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightCancelOrder",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/order/action/cancel",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightCancelOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightCancelOrder(_ request: FlightCancelOrderRequest) async throws -> FlightCancelOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightCancelOrderHeaders = FlightCancelOrderHeaders([:])
        return try await flightCancelOrderWithOptions(request as! FlightCancelOrderRequest, headers as! FlightCancelOrderHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightCreateOrderWithOptions(_ tmpReq: FlightCreateOrderRequest, _ headers: FlightCreateOrderHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightCreateOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FlightCreateOrderShrinkRequest = FlightCreateOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.contactInfo)) {
            request.contactInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contactInfo, "contact_info", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.orderAttr)) {
            request.orderAttrShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.orderAttr, "order_attr", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.travelerInfoList)) {
            request.travelerInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.travelerInfoList, "traveler_info_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.arrAirportCode)) {
            body["arr_airport_code"] = request.arrAirportCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.arrCityCode)) {
            body["arr_city_code"] = request.arrCityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            body["auto_pay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.buyerName)) {
            body["buyer_name"] = request.buyerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buyerUniqueKey)) {
            body["buyer_unique_key"] = request.buyerUniqueKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactInfoShrink)) {
            body["contact_info"] = request.contactInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depAirportCode)) {
            body["dep_airport_code"] = request.depAirportCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depCityCode)) {
            body["dep_city_code"] = request.depCityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depDate)) {
            body["dep_date"] = request.depDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            body["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderAttrShrink)) {
            body["order_attr"] = request.orderAttrShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderParams)) {
            body["order_params"] = request.orderParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.otaItemId)) {
            body["ota_item_id"] = request.otaItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.price)) {
            body["price"] = request.price!;
        }
        if (!TeaUtils.Client.isUnset(request.receiptAddress)) {
            body["receipt_address"] = request.receiptAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.receiptTarget)) {
            body["receipt_target"] = request.receiptTarget!;
        }
        if (!TeaUtils.Client.isUnset(request.receiptTitle)) {
            body["receipt_title"] = request.receiptTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.travelerInfoListShrink)) {
            body["traveler_info_list"] = request.travelerInfoListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tripType)) {
            body["trip_type"] = request.tripType!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightCreateOrder",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/order/action/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightCreateOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightCreateOrder(_ request: FlightCreateOrderRequest) async throws -> FlightCreateOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightCreateOrderHeaders = FlightCreateOrderHeaders([:])
        return try await flightCreateOrderWithOptions(request as! FlightCreateOrderRequest, headers as! FlightCreateOrderHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightExceedApplyQueryWithOptions(_ request: FlightExceedApplyQueryRequest, _ headers: FlightExceedApplyQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightExceedApplyQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightExceedApplyQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/flight-exceed",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightExceedApplyQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightExceedApplyQuery(_ request: FlightExceedApplyQueryRequest) async throws -> FlightExceedApplyQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightExceedApplyQueryHeaders = FlightExceedApplyQueryHeaders([:])
        return try await flightExceedApplyQueryWithOptions(request as! FlightExceedApplyQueryRequest, headers as! FlightExceedApplyQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOrderDetailInfoWithOptions(_ request: FlightOrderDetailInfoRequest, _ headers: FlightOrderDetailInfoHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightOrderDetailInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            query["dis_order_id"] = request.disOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightOrderDetailInfo",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/order/action/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightOrderDetailInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOrderDetailInfo(_ request: FlightOrderDetailInfoRequest) async throws -> FlightOrderDetailInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightOrderDetailInfoHeaders = FlightOrderDetailInfoHeaders([:])
        return try await flightOrderDetailInfoWithOptions(request as! FlightOrderDetailInfoRequest, headers as! FlightOrderDetailInfoHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOrderListQueryWithOptions(_ request: FlightOrderListQueryRequest, _ headers: FlightOrderListQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightOrderListQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allApply)) {
            query["all_apply"] = request.allApply!;
        }
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        if (!TeaUtils.Client.isUnset(request.departId)) {
            query["depart_id"] = request.departId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["end_time"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["start_time"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartApplyId)) {
            query["thirdpart_apply_id"] = request.thirdpartApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateEndTime)) {
            query["update_end_time"] = request.updateEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateStartTime)) {
            query["update_start_time"] = request.updateStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightOrderListQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/flight/v1/order-list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightOrderListQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOrderListQuery(_ request: FlightOrderListQueryRequest) async throws -> FlightOrderListQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightOrderListQueryHeaders = FlightOrderListQueryHeaders([:])
        return try await flightOrderListQueryWithOptions(request as! FlightOrderListQueryRequest, headers as! FlightOrderListQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOrderQueryWithOptions(_ request: FlightOrderQueryRequest, _ headers: FlightOrderQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightOrderQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightOrderQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/flight/v1/order",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightOrderQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightOrderQuery(_ request: FlightOrderQueryRequest) async throws -> FlightOrderQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightOrderQueryHeaders = FlightOrderQueryHeaders([:])
        return try await flightOrderQueryWithOptions(request as! FlightOrderQueryRequest, headers as! FlightOrderQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightPayOrderWithOptions(_ tmpReq: FlightPayOrderRequest, _ headers: FlightPayOrderHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightPayOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FlightPayOrderShrinkRequest = FlightPayOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extra)) {
            request.extraShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extra, "extra", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpPayPrice)) {
            body["corp_pay_price"] = request.corpPayPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            body["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraShrink)) {
            body["extra"] = request.extraShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personalPayPrice)) {
            body["personal_pay_price"] = request.personalPayPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.totalPayPrice)) {
            body["total_pay_price"] = request.totalPayPrice!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightPayOrder",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/order/action/pay",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightPayOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightPayOrder(_ request: FlightPayOrderRequest) async throws -> FlightPayOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightPayOrderHeaders = FlightPayOrderHeaders([:])
        return try await flightPayOrderWithOptions(request as! FlightPayOrderRequest, headers as! FlightPayOrderHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightRefundApplyWithOptions(_ tmpReq: FlightRefundApplyRequest, _ headers: FlightRefundApplyHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightRefundApplyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FlightRefundApplyShrinkRequest = FlightRefundApplyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extra)) {
            request.extraShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extra, "extra", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.passengerSegmentInfoList)) {
            request.passengerSegmentInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.passengerSegmentInfoList, "passenger_segment_info_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.refundVoucherInfo)) {
            request.refundVoucherInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.refundVoucherInfo, "refund_voucher_info", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpRefundPrice)) {
            body["corp_refund_price"] = request.corpRefundPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            body["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disSubOrderId)) {
            body["dis_sub_order_id"] = request.disSubOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayRefundMoney)) {
            body["display_refund_money"] = request.displayRefundMoney ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraShrink)) {
            body["extra"] = request.extraShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isVoluntary)) {
            body["is_voluntary"] = request.isVoluntary!;
        }
        if (!TeaUtils.Client.isUnset(request.itemUnitIds)) {
            body["item_unit_ids"] = request.itemUnitIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passengerSegmentInfoListShrink)) {
            body["passenger_segment_info_list"] = request.passengerSegmentInfoListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personalRefundPrice)) {
            body["personal_refund_price"] = request.personalRefundPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.reasonDetail)) {
            body["reason_detail"] = request.reasonDetail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reasonType)) {
            body["reason_type"] = request.reasonType!;
        }
        if (!TeaUtils.Client.isUnset(request.refundVoucherInfoShrink)) {
            body["refund_voucher_info"] = request.refundVoucherInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["session_id"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalRefundPrice)) {
            body["total_refund_price"] = request.totalRefundPrice!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightRefundApply",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/refund/action/apply",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightRefundApplyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightRefundApply(_ request: FlightRefundApplyRequest) async throws -> FlightRefundApplyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightRefundApplyHeaders = FlightRefundApplyHeaders([:])
        return try await flightRefundApplyWithOptions(request as! FlightRefundApplyRequest, headers as! FlightRefundApplyHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightRefundDetailWithOptions(_ request: FlightRefundDetailRequest, _ headers: FlightRefundDetailHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightRefundDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            query["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disSubOrderId)) {
            query["dis_sub_order_id"] = request.disSubOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightRefundDetail",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/refund/action/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightRefundDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightRefundDetail(_ request: FlightRefundDetailRequest) async throws -> FlightRefundDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightRefundDetailHeaders = FlightRefundDetailHeaders([:])
        return try await flightRefundDetailWithOptions(request as! FlightRefundDetailRequest, headers as! FlightRefundDetailHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightRefundPreCalWithOptions(_ tmpReq: FlightRefundPreCalRequest, _ headers: FlightRefundPreCalHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightRefundPreCalResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FlightRefundPreCalShrinkRequest = FlightRefundPreCalShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.passengerSegmentInfoList)) {
            request.passengerSegmentInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.passengerSegmentInfoList, "passenger_segment_info_list", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            query["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isVoluntary)) {
            query["is_voluntary"] = request.isVoluntary ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passengerSegmentInfoListShrink)) {
            query["passenger_segment_info_list"] = request.passengerSegmentInfoListShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightRefundPreCal",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/refund/action/pre-cal",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightRefundPreCalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightRefundPreCal(_ request: FlightRefundPreCalRequest) async throws -> FlightRefundPreCalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightRefundPreCalHeaders = FlightRefundPreCalHeaders([:])
        return try await flightRefundPreCalWithOptions(request as! FlightRefundPreCalRequest, headers as! FlightRefundPreCalHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelBillSettlementQueryWithOptions(_ request: HotelBillSettlementQueryRequest, _ headers: HotelBillSettlementQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelBillSettlementQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["page_no"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.periodEnd)) {
            query["period_end"] = request.periodEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodStart)) {
            query["period_start"] = request.periodStart ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelBillSettlementQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/hotel/v1/bill-settlement",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelBillSettlementQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelBillSettlementQuery(_ request: HotelBillSettlementQueryRequest) async throws -> HotelBillSettlementQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelBillSettlementQueryHeaders = HotelBillSettlementQueryHeaders([:])
        return try await hotelBillSettlementQueryWithOptions(request as! HotelBillSettlementQueryRequest, headers as! HotelBillSettlementQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelExceedApplyQueryWithOptions(_ request: HotelExceedApplyQueryRequest, _ headers: HotelExceedApplyQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelExceedApplyQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelExceedApplyQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/hotel-exceed",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelExceedApplyQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelExceedApplyQuery(_ request: HotelExceedApplyQueryRequest) async throws -> HotelExceedApplyQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelExceedApplyQueryHeaders = HotelExceedApplyQueryHeaders([:])
        return try await hotelExceedApplyQueryWithOptions(request as! HotelExceedApplyQueryRequest, headers as! HotelExceedApplyQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderListQueryWithOptions(_ request: HotelOrderListQueryRequest, _ headers: HotelOrderListQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelOrderListQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allApply)) {
            query["all_apply"] = request.allApply!;
        }
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        if (!TeaUtils.Client.isUnset(request.departId)) {
            query["depart_id"] = request.departId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["end_time"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["start_time"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartApplyId)) {
            query["thirdpart_apply_id"] = request.thirdpartApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateEndTime)) {
            query["update_end_time"] = request.updateEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateStartTime)) {
            query["update_start_time"] = request.updateStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelOrderListQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/hotel/v1/order-list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelOrderListQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderListQuery(_ request: HotelOrderListQueryRequest) async throws -> HotelOrderListQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelOrderListQueryHeaders = HotelOrderListQueryHeaders([:])
        return try await hotelOrderListQueryWithOptions(request as! HotelOrderListQueryRequest, headers as! HotelOrderListQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderQueryWithOptions(_ request: HotelOrderQueryRequest, _ headers: HotelOrderQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> HotelOrderQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HotelOrderQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/hotel/v1/order",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HotelOrderQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func hotelOrderQuery(_ request: HotelOrderQueryRequest) async throws -> HotelOrderQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: HotelOrderQueryHeaders = HotelOrderQueryHeaders([:])
        return try await hotelOrderQueryWithOptions(request as! HotelOrderQueryRequest, headers as! HotelOrderQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ieFlightBillSettlementQueryWithOptions(_ request: IeFlightBillSettlementQueryRequest, _ headers: IeFlightBillSettlementQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> IeFlightBillSettlementQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["page_no"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.periodEnd)) {
            query["period_end"] = request.periodEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodStart)) {
            query["period_start"] = request.periodStart ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IeFlightBillSettlementQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/ie-flight/v1/bill-settlement",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IeFlightBillSettlementQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ieFlightBillSettlementQuery(_ request: IeFlightBillSettlementQueryRequest) async throws -> IeFlightBillSettlementQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: IeFlightBillSettlementQueryHeaders = IeFlightBillSettlementQueryHeaders([:])
        return try await ieFlightBillSettlementQueryWithOptions(request as! IeFlightBillSettlementQueryRequest, headers as! IeFlightBillSettlementQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceAddWithOptions(_ request: InvoiceAddRequest, _ headers: InvoiceAddHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InvoiceAddResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            body["address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bankName)) {
            body["bank_name"] = request.bankName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bankNo)) {
            body["bank_no"] = request.bankNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taxNo)) {
            body["tax_no"] = request.taxNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tel)) {
            body["tel"] = request.tel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartId)) {
            body["third_part_id"] = request.thirdPartId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InvoiceAdd",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/invoice/v1/add-invoice",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InvoiceAddResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceAdd(_ request: InvoiceAddRequest) async throws -> InvoiceAddResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InvoiceAddHeaders = InvoiceAddHeaders([:])
        return try await invoiceAddWithOptions(request as! InvoiceAddRequest, headers as! InvoiceAddHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceDeleteWithOptions(_ request: InvoiceDeleteRequest, _ headers: InvoiceDeleteHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InvoiceDeleteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.thirdPartId)) {
            query["third_part_id"] = request.thirdPartId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InvoiceDelete",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/invoice/v1/invoice",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InvoiceDeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceDelete(_ request: InvoiceDeleteRequest) async throws -> InvoiceDeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InvoiceDeleteHeaders = InvoiceDeleteHeaders([:])
        return try await invoiceDeleteWithOptions(request as! InvoiceDeleteRequest, headers as! InvoiceDeleteHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceModifyWithOptions(_ request: InvoiceModifyRequest, _ headers: InvoiceModifyHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InvoiceModifyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.address)) {
            body["address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bankName)) {
            body["bank_name"] = request.bankName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bankNo)) {
            body["bank_no"] = request.bankNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taxNo)) {
            body["tax_no"] = request.taxNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tel)) {
            body["tel"] = request.tel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartId)) {
            body["third_part_id"] = request.thirdPartId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InvoiceModify",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/invoice/v1/invoice",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InvoiceModifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceModify(_ request: InvoiceModifyRequest) async throws -> InvoiceModifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InvoiceModifyHeaders = InvoiceModifyHeaders([:])
        return try await invoiceModifyWithOptions(request as! InvoiceModifyRequest, headers as! InvoiceModifyHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceRuleSaveWithOptions(_ tmpReq: InvoiceRuleSaveRequest, _ headers: InvoiceRuleSaveHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InvoiceRuleSaveResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InvoiceRuleSaveShrinkRequest = InvoiceRuleSaveShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.entities)) {
            request.entitiesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.entities, "entities", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allEmploye)) {
            body["all_employe"] = request.allEmploye!;
        }
        if (!TeaUtils.Client.isUnset(request.entitiesShrink)) {
            body["entities"] = request.entitiesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartId)) {
            body["third_part_id"] = request.thirdPartId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InvoiceRuleSave",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/invoice/v1/invoice-rule",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InvoiceRuleSaveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceRuleSave(_ request: InvoiceRuleSaveRequest) async throws -> InvoiceRuleSaveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InvoiceRuleSaveHeaders = InvoiceRuleSaveHeaders([:])
        return try await invoiceRuleSaveWithOptions(request as! InvoiceRuleSaveRequest, headers as! InvoiceRuleSaveHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceSearchWithOptions(_ request: InvoiceSearchRequest, _ headers: InvoiceSearchHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InvoiceSearchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InvoiceSearch",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/invoice/v1/invoice",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InvoiceSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func invoiceSearch(_ request: InvoiceSearchRequest) async throws -> InvoiceSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InvoiceSearchHeaders = InvoiceSearchHeaders([:])
        return try await invoiceSearchWithOptions(request as! InvoiceSearchRequest, headers as! InvoiceSearchHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func isvUserSaveWithOptions(_ tmpReq: IsvUserSaveRequest, _ headers: IsvUserSaveHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> IsvUserSaveResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: IsvUserSaveShrinkRequest = IsvUserSaveShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.userList)) {
            request.userListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userList, "user_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userListShrink)) {
            body["user_list"] = request.userListShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IsvUserSave",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/isvuser/v1/isvuser",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IsvUserSaveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func isvUserSave(_ request: IsvUserSaveRequest) async throws -> IsvUserSaveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: IsvUserSaveHeaders = IsvUserSaveHeaders([:])
        return try await isvUserSaveWithOptions(request as! IsvUserSaveRequest, headers as! IsvUserSaveHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func monthBillGetWithOptions(_ request: MonthBillGetRequest, _ headers: MonthBillGetHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> MonthBillGetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billMonth)) {
            query["bill_month"] = request.billMonth ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MonthBillGet",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/open/v1/month-bill",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MonthBillGetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func monthBillGet(_ request: MonthBillGetRequest) async throws -> MonthBillGetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: MonthBillGetHeaders = MonthBillGetHeaders([:])
        return try await monthBillGetWithOptions(request as! MonthBillGetRequest, headers as! MonthBillGetHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func projectAddWithOptions(_ request: ProjectAddRequest, _ headers: ProjectAddHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ProjectAddResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["project_name"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartCostCenterId)) {
            body["third_part_cost_center_id"] = request.thirdPartCostCenterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartId)) {
            body["third_part_id"] = request.thirdPartId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartInvoiceId)) {
            body["third_part_invoice_id"] = request.thirdPartInvoiceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ProjectAdd",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/cost/v1/project",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ProjectAddResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func projectAdd(_ request: ProjectAddRequest) async throws -> ProjectAddResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ProjectAddHeaders = ProjectAddHeaders([:])
        return try await projectAddWithOptions(request as! ProjectAddRequest, headers as! ProjectAddHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func projectDeleteWithOptions(_ request: ProjectDeleteRequest, _ headers: ProjectDeleteHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ProjectDeleteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.thirdPartId)) {
            query["third_part_id"] = request.thirdPartId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ProjectDelete",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/cost/v1/project",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ProjectDeleteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func projectDelete(_ request: ProjectDeleteRequest) async throws -> ProjectDeleteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ProjectDeleteHeaders = ProjectDeleteHeaders([:])
        return try await projectDeleteWithOptions(request as! ProjectDeleteRequest, headers as! ProjectDeleteHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func projectModifyWithOptions(_ request: ProjectModifyRequest, _ headers: ProjectModifyHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ProjectModifyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            body["project_name"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartCostCenterId)) {
            body["third_part_cost_center_id"] = request.thirdPartCostCenterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartId)) {
            body["third_part_id"] = request.thirdPartId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartInvoiceId)) {
            body["third_part_invoice_id"] = request.thirdPartInvoiceId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ProjectModify",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/cost/v1/project",
            "method": "PUT",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ProjectModifyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func projectModify(_ request: ProjectModifyRequest) async throws -> ProjectModifyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ProjectModifyHeaders = ProjectModifyHeaders([:])
        return try await projectModifyWithOptions(request as! ProjectModifyRequest, headers as! ProjectModifyHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncSingleUserWithOptions(_ tmpReq: SyncSingleUserRequest, _ headers: SyncSingleUserHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SyncSingleUserResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SyncSingleUserShrinkRequest = SyncSingleUserShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.thirdDepartIdList)) {
            request.thirdDepartIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.thirdDepartIdList, "third_depart_id_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.email)) {
            body["email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.jobNo)) {
            body["job_no"] = request.jobNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.leaveStatus)) {
            body["leave_status"] = request.leaveStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.managerUserId)) {
            body["manager_user_id"] = request.managerUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            body["phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.position)) {
            body["position"] = request.position ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.positionLevel)) {
            body["position_level"] = request.positionLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.realNameEn)) {
            body["real_name_en"] = request.realNameEn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdDepartIdListShrink)) {
            body["third_depart_id_list"] = request.thirdDepartIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["user_id"] = request.userId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            body["user_name"] = request.userName ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SyncSingleUser",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/user/v1/single-user/action/sync",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyncSingleUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncSingleUser(_ request: SyncSingleUserRequest) async throws -> SyncSingleUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SyncSingleUserHeaders = SyncSingleUserHeaders([:])
        return try await syncSingleUserWithOptions(request as! SyncSingleUserRequest, headers as! SyncSingleUserHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingApplyWithOptions(_ tmpReq: TicketChangingApplyRequest, _ headers: TicketChangingApplyHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TicketChangingApplyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TicketChangingApplyShrinkRequest = TicketChangingApplyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.modifyFlightInfoList)) {
            request.modifyFlightInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.modifyFlightInfoList, "modify_flight_info_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            body["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disSubOrderId)) {
            body["dis_sub_order_id"] = request.disSubOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isVoluntary)) {
            body["is_voluntary"] = request.isVoluntary!;
        }
        if (!TeaUtils.Client.isUnset(request.modifyFlightInfoListShrink)) {
            body["modify_flight_info_list"] = request.modifyFlightInfoListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.otaItemId)) {
            body["ota_item_id"] = request.otaItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reason)) {
            body["reason"] = request.reason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["session_id"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whetherRetry)) {
            body["whether_retry"] = request.whetherRetry!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TicketChangingApply",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/ticket-changing/action/apply",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TicketChangingApplyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingApply(_ request: TicketChangingApplyRequest) async throws -> TicketChangingApplyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TicketChangingApplyHeaders = TicketChangingApplyHeaders([:])
        return try await ticketChangingApplyWithOptions(request as! TicketChangingApplyRequest, headers as! TicketChangingApplyHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingCancelWithOptions(_ request: TicketChangingCancelRequest, _ headers: TicketChangingCancelHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TicketChangingCancelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            query["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disSubOrderId)) {
            query["dis_sub_order_id"] = request.disSubOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TicketChangingCancel",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/ticket-changing/action/cancel",
            "method": "DELETE",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TicketChangingCancelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingCancel(_ request: TicketChangingCancelRequest) async throws -> TicketChangingCancelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TicketChangingCancelHeaders = TicketChangingCancelHeaders([:])
        return try await ticketChangingCancelWithOptions(request as! TicketChangingCancelRequest, headers as! TicketChangingCancelHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingDetailWithOptions(_ request: TicketChangingDetailRequest, _ headers: TicketChangingDetailHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TicketChangingDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            query["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disSubOrderId)) {
            query["dis_sub_order_id"] = request.disSubOrderId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TicketChangingDetail",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/ticket-changing/action/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TicketChangingDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingDetail(_ request: TicketChangingDetailRequest) async throws -> TicketChangingDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TicketChangingDetailHeaders = TicketChangingDetailHeaders([:])
        return try await ticketChangingDetailWithOptions(request as! TicketChangingDetailRequest, headers as! TicketChangingDetailHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingEnquiryWithOptions(_ request: TicketChangingEnquiryRequest, _ headers: TicketChangingEnquiryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TicketChangingEnquiryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.arrCity)) {
            query["arr_city"] = request.arrCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depCity)) {
            query["dep_city"] = request.depCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            query["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isVoluntary)) {
            query["is_voluntary"] = request.isVoluntary!;
        }
        if (!TeaUtils.Client.isUnset(request.modifyDepartDate)) {
            query["modify_depart_date"] = request.modifyDepartDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifyFlightNo)) {
            query["modify_flight_no"] = request.modifyFlightNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["session_id"] = request.sessionId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TicketChangingEnquiry",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/ticket-changing/action/enquiry",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TicketChangingEnquiryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingEnquiry(_ request: TicketChangingEnquiryRequest) async throws -> TicketChangingEnquiryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TicketChangingEnquiryHeaders = TicketChangingEnquiryHeaders([:])
        return try await ticketChangingEnquiryWithOptions(request as! TicketChangingEnquiryRequest, headers as! TicketChangingEnquiryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingFlightListWithOptions(_ tmpReq: TicketChangingFlightListRequest, _ headers: TicketChangingFlightListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TicketChangingFlightListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TicketChangingFlightListShrinkRequest = TicketChangingFlightListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.travelerInfoList)) {
            request.travelerInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.travelerInfoList, "traveler_info_list", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.arrCity)) {
            query["arr_city"] = request.arrCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depCity)) {
            query["dep_city"] = request.depCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.depDate)) {
            query["dep_date"] = request.depDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            query["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isVoluntary)) {
            query["is_voluntary"] = request.isVoluntary!;
        }
        if (!TeaUtils.Client.isUnset(request.travelerInfoListShrink)) {
            query["traveler_info_list"] = request.travelerInfoListShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TicketChangingFlightList",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/huge/dtb-flight/v1/ticket-changing-flight/action/list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TicketChangingFlightListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingFlightList(_ request: TicketChangingFlightListRequest) async throws -> TicketChangingFlightListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TicketChangingFlightListHeaders = TicketChangingFlightListHeaders([:])
        return try await ticketChangingFlightListWithOptions(request as! TicketChangingFlightListRequest, headers as! TicketChangingFlightListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingPayWithOptions(_ tmpReq: TicketChangingPayRequest, _ headers: TicketChangingPayHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TicketChangingPayResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TicketChangingPayShrinkRequest = TicketChangingPayShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extra)) {
            request.extraShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extra, "extra", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpPayPrice)) {
            body["corp_pay_price"] = request.corpPayPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.disOrderId)) {
            body["dis_order_id"] = request.disOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disSubOrderId)) {
            body["dis_sub_order_id"] = request.disSubOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraShrink)) {
            body["extra"] = request.extraShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.personalPayPrice)) {
            body["personal_pay_price"] = request.personalPayPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.totalPayPrice)) {
            body["total_pay_price"] = request.totalPayPrice!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripCorpToken)) {
            realHeaders["x-acs-btrip-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TicketChangingPay",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/dtb-flight/v1/ticket-changing/action/pay",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TicketChangingPayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketChangingPay(_ request: TicketChangingPayRequest) async throws -> TicketChangingPayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TicketChangingPayHeaders = TicketChangingPayHeaders([:])
        return try await ticketChangingPayWithOptions(request as! TicketChangingPayRequest, headers as! TicketChangingPayHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainBillSettlementQueryWithOptions(_ request: TrainBillSettlementQueryRequest, _ headers: TrainBillSettlementQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainBillSettlementQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["page_no"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.periodEnd)) {
            query["period_end"] = request.periodEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodStart)) {
            query["period_start"] = request.periodStart ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainBillSettlementQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/train/v1/bill-settlement",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainBillSettlementQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainBillSettlementQuery(_ request: TrainBillSettlementQueryRequest) async throws -> TrainBillSettlementQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainBillSettlementQueryHeaders = TrainBillSettlementQueryHeaders([:])
        return try await trainBillSettlementQueryWithOptions(request as! TrainBillSettlementQueryRequest, headers as! TrainBillSettlementQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainExceedApplyQueryWithOptions(_ request: TrainExceedApplyQueryRequest, _ headers: TrainExceedApplyQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainExceedApplyQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainExceedApplyQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/apply/v1/train-exceed",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainExceedApplyQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainExceedApplyQuery(_ request: TrainExceedApplyQueryRequest) async throws -> TrainExceedApplyQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainExceedApplyQueryHeaders = TrainExceedApplyQueryHeaders([:])
        return try await trainExceedApplyQueryWithOptions(request as! TrainExceedApplyQueryRequest, headers as! TrainExceedApplyQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainOrderListQueryWithOptions(_ request: TrainOrderListQueryRequest, _ headers: TrainOrderListQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainOrderListQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allApply)) {
            query["all_apply"] = request.allApply!;
        }
        if (!TeaUtils.Client.isUnset(request.applyId)) {
            query["apply_id"] = request.applyId!;
        }
        if (!TeaUtils.Client.isUnset(request.departId)) {
            query["depart_id"] = request.departId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["end_time"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            query["page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["start_time"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdpartApplyId)) {
            query["thirdpart_apply_id"] = request.thirdpartApplyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateEndTime)) {
            query["update_end_time"] = request.updateEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateStartTime)) {
            query["update_start_time"] = request.updateStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainOrderListQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/train/v1/order-list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainOrderListQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainOrderListQuery(_ request: TrainOrderListQueryRequest) async throws -> TrainOrderListQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainOrderListQueryHeaders = TrainOrderListQueryHeaders([:])
        return try await trainOrderListQueryWithOptions(request as! TrainOrderListQueryRequest, headers as! TrainOrderListQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainOrderQueryWithOptions(_ request: TrainOrderQueryRequest, _ headers: TrainOrderQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainOrderQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["order_id"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["user_id"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainOrderQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/train/v1/order",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainOrderQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainOrderQuery(_ request: TrainOrderQueryRequest) async throws -> TrainOrderQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainOrderQueryHeaders = TrainOrderQueryHeaders([:])
        return try await trainOrderQueryWithOptions(request as! TrainOrderQueryRequest, headers as! TrainOrderQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainStationSearchWithOptions(_ request: TrainStationSearchRequest, _ headers: TrainStationSearchHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TrainStationSearchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["keyword"] = request.keyword ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TrainStationSearch",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/city/v1/train",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TrainStationSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func trainStationSearch(_ request: TrainStationSearchRequest) async throws -> TrainStationSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TrainStationSearchHeaders = TrainStationSearchHeaders([:])
        return try await trainStationSearchWithOptions(request as! TrainStationSearchRequest, headers as! TrainStationSearchHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func userQueryWithOptions(_ request: UserQueryRequest, _ headers: UserQueryHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> UserQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modifiedTimeGreaterOrEqualThan)) {
            query["modified_time_greater_or_equal_than"] = request.modifiedTimeGreaterOrEqualThan ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.pageToken)) {
            query["page_token"] = request.pageToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartJobNo)) {
            query["third_part_job_no"] = request.thirdPartJobNo ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsBtripSoCorpToken)) {
            realHeaders["x-acs-btrip-so-corp-token"] = TeaUtils.Client.toJSONString(headers.xAcsBtripSoCorpToken);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UserQuery",
            "version": "2022-05-20",
            "protocol": "HTTPS",
            "pathname": "/user/v1/user",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UserQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func userQuery(_ request: UserQueryRequest) async throws -> UserQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: UserQueryHeaders = UserQueryHeaders([:])
        return try await userQueryWithOptions(request as! UserQueryRequest, headers as! UserQueryHeaders, runtime as! TeaUtils.RuntimeOptions)
    }
}
