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
        self._endpoint = try getEndpoint("airticketopen", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func accountFlowListWithOptions(_ request: AccountFlowListRequest, _ headers: AccountFlowListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AccountFlowListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dayNum)) {
            query["day_num"] = request.dayNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["page_index"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.utcBeginTime)) {
            query["utc_begin_time"] = request.utcBeginTime!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AccountFlowList",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/account/flow-list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AccountFlowListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func accountFlowList(_ request: AccountFlowListRequest) async throws -> AccountFlowListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AccountFlowListHeaders = AccountFlowListHeaders([:])
        return try await accountFlowListWithOptions(request as! AccountFlowListRequest, headers as! AccountFlowListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ancillarySuggestWithOptions(_ request: AncillarySuggestRequest, _ headers: AncillarySuggestHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> AncillarySuggestResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.solutionId)) {
            body["solution_id"] = request.solutionId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AncillarySuggest",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/ancillary/action-suggest",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AncillarySuggestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ancillarySuggest(_ request: AncillarySuggestRequest) async throws -> AncillarySuggestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: AncillarySuggestHeaders = AncillarySuggestHeaders([:])
        return try await ancillarySuggestWithOptions(request as! AncillarySuggestRequest, headers as! AncillarySuggestHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func bookWithOptions(_ tmpReq: BookRequest, _ headers: BookHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> BookResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BookShrinkRequest = BookShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.contact)) {
            request.contactShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contact, "contact", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.passengerAncillaryPurchaseMapList)) {
            request.passengerAncillaryPurchaseMapListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.passengerAncillaryPurchaseMapList, "passenger_ancillary_purchase_map_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.passengerList)) {
            request.passengerListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.passengerList, "passenger_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contactShrink)) {
            body["contact"] = request.contactShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outOrderNum)) {
            body["out_order_num"] = request.outOrderNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passengerAncillaryPurchaseMapListShrink)) {
            body["passenger_ancillary_purchase_map_list"] = request.passengerAncillaryPurchaseMapListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.passengerListShrink)) {
            body["passenger_list"] = request.passengerListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.solutionId)) {
            body["solution_id"] = request.solutionId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Book",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/trade/action-book",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func book(_ request: BookRequest) async throws -> BookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: BookHeaders = BookHeaders([:])
        return try await bookWithOptions(request as! BookRequest, headers as! BookHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelWithOptions(_ request: CancelRequest, _ headers: CancelHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderNum)) {
            body["order_num"] = request.orderNum!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Cancel",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/trade/action-cancel",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancel(_ request: CancelRequest) async throws -> CancelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CancelHeaders = CancelHeaders([:])
        return try await cancelWithOptions(request as! CancelRequest, headers as! CancelHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeApplyWithOptions(_ tmpReq: ChangeApplyRequest, _ headers: ChangeApplyHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeApplyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ChangeApplyShrinkRequest = ChangeApplyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.changePassengerList)) {
            request.changePassengerListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.changePassengerList, "change_passenger_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.changedJourneys)) {
            request.changedJourneysShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.changedJourneys, "changed_journeys", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.contact)) {
            request.contactShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contact, "contact", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changePassengerListShrink)) {
            body["change_passenger_list"] = request.changePassengerListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changedJourneysShrink)) {
            body["changed_journeys"] = request.changedJourneysShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactShrink)) {
            body["contact"] = request.contactShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderNum)) {
            body["order_num"] = request.orderNum!;
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            body["remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeApply",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/change/action-apply",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeApplyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeApply(_ request: ChangeApplyRequest) async throws -> ChangeApplyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ChangeApplyHeaders = ChangeApplyHeaders([:])
        return try await changeApplyWithOptions(request as! ChangeApplyRequest, headers as! ChangeApplyHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeCancelWithOptions(_ request: ChangeCancelRequest, _ headers: ChangeCancelHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeCancelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changeOrderNum)) {
            body["change_order_num"] = request.changeOrderNum!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeCancel",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/change/action-cancel",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeCancelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeCancel(_ request: ChangeCancelRequest) async throws -> ChangeCancelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ChangeCancelHeaders = ChangeCancelHeaders([:])
        return try await changeCancelWithOptions(request as! ChangeCancelRequest, headers as! ChangeCancelHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeConfirmWithOptions(_ request: ChangeConfirmRequest, _ headers: ChangeConfirmHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeConfirmResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changeOrderNum)) {
            body["change_order_num"] = request.changeOrderNum!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeConfirm",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/change/action-confirm",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeConfirmResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeConfirm(_ request: ChangeConfirmRequest) async throws -> ChangeConfirmResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ChangeConfirmHeaders = ChangeConfirmHeaders([:])
        return try await changeConfirmWithOptions(request as! ChangeConfirmRequest, headers as! ChangeConfirmHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeDetailWithOptions(_ request: ChangeDetailRequest, _ headers: ChangeDetailHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.changeOrderNum)) {
            query["change_order_num"] = request.changeOrderNum!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeDetail",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/change/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeDetail(_ request: ChangeDetailRequest) async throws -> ChangeDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ChangeDetailHeaders = ChangeDetailHeaders([:])
        return try await changeDetailWithOptions(request as! ChangeDetailRequest, headers as! ChangeDetailHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeDetailListOfBuyerWithOptions(_ request: ChangeDetailListOfBuyerRequest, _ headers: ChangeDetailListOfBuyerHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeDetailListOfBuyerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["page_index"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.utcCreateBegin)) {
            query["utc_create_begin"] = request.utcCreateBegin!;
        }
        if (!TeaUtils.Client.isUnset(request.utcCreateEnd)) {
            query["utc_create_end"] = request.utcCreateEnd!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeDetailListOfBuyer",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/change/buyer/detail-list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeDetailListOfBuyerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeDetailListOfBuyer(_ request: ChangeDetailListOfBuyerRequest) async throws -> ChangeDetailListOfBuyerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ChangeDetailListOfBuyerHeaders = ChangeDetailListOfBuyerHeaders([:])
        return try await changeDetailListOfBuyerWithOptions(request as! ChangeDetailListOfBuyerRequest, headers as! ChangeDetailListOfBuyerHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeDetailListOfOrderNumWithOptions(_ request: ChangeDetailListOfOrderNumRequest, _ headers: ChangeDetailListOfOrderNumHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeDetailListOfOrderNumResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderNum)) {
            query["order_num"] = request.orderNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["page_index"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeDetailListOfOrderNum",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/change/order-num/detail-list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeDetailListOfOrderNumResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeDetailListOfOrderNum(_ request: ChangeDetailListOfOrderNumRequest) async throws -> ChangeDetailListOfOrderNumResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: ChangeDetailListOfOrderNumHeaders = ChangeDetailListOfOrderNumHeaders([:])
        return try await changeDetailListOfOrderNumWithOptions(request as! ChangeDetailListOfOrderNumRequest, headers as! ChangeDetailListOfOrderNumHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func collectFlightLowestPriceWithOptions(_ tmpReq: CollectFlightLowestPriceRequest, _ headers: CollectFlightLowestPriceHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CollectFlightLowestPriceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CollectFlightLowestPriceShrinkRequest = CollectFlightLowestPriceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.lowestPriceFlightInfoList)) {
            request.lowestPriceFlightInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.lowestPriceFlightInfoList, "lowest_price_flight_info_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.lowestPriceFlightInfoListShrink)) {
            body["lowest_price_flight_info_list"] = request.lowestPriceFlightInfoListShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CollectFlightLowestPrice",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/data-collect/flight-lowest-price",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CollectFlightLowestPriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func collectFlightLowestPrice(_ request: CollectFlightLowestPriceRequest) async throws -> CollectFlightLowestPriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CollectFlightLowestPriceHeaders = CollectFlightLowestPriceHeaders([:])
        return try await collectFlightLowestPriceWithOptions(request as! CollectFlightLowestPriceRequest, headers as! CollectFlightLowestPriceHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enrichWithOptions(_ tmpReq: EnrichRequest, _ headers: EnrichHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnrichResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: EnrichShrinkRequest = EnrichShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.journeyParamList)) {
            request.journeyParamListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.journeyParamList, "journey_param_list", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adults)) {
            body["adults"] = request.adults!;
        }
        if (!TeaUtils.Client.isUnset(request.cabinClass)) {
            body["cabin_class"] = request.cabinClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.children)) {
            body["children"] = request.children!;
        }
        if (!TeaUtils.Client.isUnset(request.infants)) {
            body["infants"] = request.infants!;
        }
        if (!TeaUtils.Client.isUnset(request.journeyParamListShrink)) {
            body["journey_param_list"] = request.journeyParamListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.solutionId)) {
            body["solution_id"] = request.solutionId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Enrich",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/trade/action-enrich",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnrichResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enrich(_ request: EnrichRequest) async throws -> EnrichResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: EnrichHeaders = EnrichHeaders([:])
        return try await enrichWithOptions(request as! EnrichRequest, headers as! EnrichHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func fileUploadWithOptions(_ request: FileUploadRequest, _ headers: FileUploadHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FileUploadResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileContent)) {
            body["file_content"] = request.fileContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderNum)) {
            body["order_num"] = request.orderNum!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FileUpload",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/attachment/action-upload",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FileUploadResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func fileUpload(_ request: FileUploadRequest) async throws -> FileUploadResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FileUploadHeaders = FileUploadHeaders([:])
        return try await fileUploadWithOptions(request as! FileUploadRequest, headers as! FileUploadHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightChangeOfOrderWithOptions(_ request: FlightChangeOfOrderRequest, _ headers: FlightChangeOfOrderHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> FlightChangeOfOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderNum)) {
            query["order_num"] = request.orderNum!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FlightChangeOfOrder",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/flightchange/of-order",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FlightChangeOfOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func flightChangeOfOrder(_ request: FlightChangeOfOrderRequest) async throws -> FlightChangeOfOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: FlightChangeOfOrderHeaders = FlightChangeOfOrderHeaders([:])
        return try await flightChangeOfOrderWithOptions(request as! FlightChangeOfOrderRequest, headers as! FlightChangeOfOrderHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTokenWithOptions(_ request: GetTokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTokenResponse {
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
            "action": "GetToken",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/token",
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
    public func luggageDirectWithOptions(_ tmpReq: LuggageDirectRequest, _ headers: LuggageDirectHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> LuggageDirectResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: LuggageDirectShrinkRequest = LuggageDirectShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.flightSegmentParamList)) {
            request.flightSegmentParamListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.flightSegmentParamList, "flight_segment_param_list", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.flightSegmentParamListShrink)) {
            query["flight_segment_param_list"] = request.flightSegmentParamListShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LuggageDirect",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/flight-data/luggage-direct",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LuggageDirectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func luggageDirect(_ request: LuggageDirectRequest) async throws -> LuggageDirectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: LuggageDirectHeaders = LuggageDirectHeaders([:])
        return try await luggageDirectWithOptions(request as! LuggageDirectRequest, headers as! LuggageDirectHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func orderDetailWithOptions(_ request: OrderDetailRequest, _ headers: OrderDetailHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> OrderDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderNum)) {
            query["order_num"] = request.orderNum!;
        }
        if (!TeaUtils.Client.isUnset(request.outOrderNum)) {
            query["out_order_num"] = request.outOrderNum ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OrderDetail",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/trade/order-detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OrderDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func orderDetail(_ request: OrderDetailRequest) async throws -> OrderDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: OrderDetailHeaders = OrderDetailHeaders([:])
        return try await orderDetailWithOptions(request as! OrderDetailRequest, headers as! OrderDetailHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func orderListWithOptions(_ request: OrderListRequest, _ headers: OrderListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> OrderListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bookTimeEnd)) {
            query["book_time_end"] = request.bookTimeEnd!;
        }
        if (!TeaUtils.Client.isUnset(request.bookTimeStart)) {
            query["book_time_start"] = request.bookTimeStart!;
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["page_index"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["status"] = request.status!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OrderList",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/trade/order-list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OrderListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func orderList(_ request: OrderListRequest) async throws -> OrderListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: OrderListHeaders = OrderListHeaders([:])
        return try await orderListWithOptions(request as! OrderListRequest, headers as! OrderListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pricingWithOptions(_ request: PricingRequest, _ headers: PricingHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> PricingResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.solutionId)) {
            body["solution_id"] = request.solutionId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Pricing",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/trade/action-pricing",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PricingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pricing(_ request: PricingRequest) async throws -> PricingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: PricingHeaders = PricingHeaders([:])
        return try await pricingWithOptions(request as! PricingRequest, headers as! PricingHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refundApplyWithOptions(_ tmpReq: RefundApplyRequest, _ headers: RefundApplyHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefundApplyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RefundApplyShrinkRequest = RefundApplyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.refundJourneys)) {
            request.refundJourneysShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.refundJourneys, "refund_journeys", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.refundPassengerList)) {
            request.refundPassengerListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.refundPassengerList, "refund_passenger_list", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.refundType)) {
            request.refundTypeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.refundType, "refund_type", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderNum)) {
            body["order_num"] = request.orderNum!;
        }
        if (!TeaUtils.Client.isUnset(request.refundJourneysShrink)) {
            body["refund_journeys"] = request.refundJourneysShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refundPassengerListShrink)) {
            body["refund_passenger_list"] = request.refundPassengerListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refundTypeShrink)) {
            body["refund_type"] = request.refundTypeShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefundApply",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/refund/action-apply",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefundApplyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refundApply(_ request: RefundApplyRequest) async throws -> RefundApplyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: RefundApplyHeaders = RefundApplyHeaders([:])
        return try await refundApplyWithOptions(request as! RefundApplyRequest, headers as! RefundApplyHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refundDetailWithOptions(_ request: RefundDetailRequest, _ headers: RefundDetailHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefundDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.refundOrderNum)) {
            query["refund_order_num"] = request.refundOrderNum!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefundDetail",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/refund/detail",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefundDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refundDetail(_ request: RefundDetailRequest) async throws -> RefundDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: RefundDetailHeaders = RefundDetailHeaders([:])
        return try await refundDetailWithOptions(request as! RefundDetailRequest, headers as! RefundDetailHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refundDetailListWithOptions(_ request: RefundDetailListRequest, _ headers: RefundDetailListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefundDetailListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderNum)) {
            query["order_num"] = request.orderNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["page_index"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["page_size"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.refundCreateBeginTime)) {
            query["refund_create_begin_time"] = request.refundCreateBeginTime!;
        }
        if (!TeaUtils.Client.isUnset(request.refundCreateEndTime)) {
            query["refund_create_end_time"] = request.refundCreateEndTime!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefundDetailList",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/refund/detail-list",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefundDetailListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refundDetailList(_ request: RefundDetailListRequest) async throws -> RefundDetailListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: RefundDetailListHeaders = RefundDetailListHeaders([:])
        return try await refundDetailListWithOptions(request as! RefundDetailListRequest, headers as! RefundDetailListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchWithOptions(_ tmpReq: SearchRequest, _ headers: SearchHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SearchShrinkRequest = SearchShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.airLegs)) {
            request.airLegsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.airLegs, "air_legs", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.searchControlOptions)) {
            request.searchControlOptionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.searchControlOptions, "search_control_options", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adults)) {
            body["adults"] = request.adults!;
        }
        if (!TeaUtils.Client.isUnset(request.airLegsShrink)) {
            body["air_legs"] = request.airLegsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cabinClass)) {
            body["cabin_class"] = request.cabinClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.children)) {
            body["children"] = request.children!;
        }
        if (!TeaUtils.Client.isUnset(request.infants)) {
            body["infants"] = request.infants!;
        }
        if (!TeaUtils.Client.isUnset(request.searchControlOptionsShrink)) {
            body["search_control_options"] = request.searchControlOptionsShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Search",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/trade/action-search",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func search(_ request: SearchRequest) async throws -> SearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SearchHeaders = SearchHeaders([:])
        return try await searchWithOptions(request as! SearchRequest, headers as! SearchHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func standardSearchWithOptions(_ tmpReq: StandardSearchRequest, _ headers: StandardSearchHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> StandardSearchResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: StandardSearchShrinkRequest = StandardSearchShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.airLegs)) {
            request.airLegsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.airLegs, "air_legs", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.searchControlOptions)) {
            request.searchControlOptionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.searchControlOptions, "search_control_options", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adults)) {
            body["adults"] = request.adults!;
        }
        if (!TeaUtils.Client.isUnset(request.airLegsShrink)) {
            body["air_legs"] = request.airLegsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cabinClass)) {
            body["cabin_class"] = request.cabinClass ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.children)) {
            body["children"] = request.children!;
        }
        if (!TeaUtils.Client.isUnset(request.infants)) {
            body["infants"] = request.infants!;
        }
        if (!TeaUtils.Client.isUnset(request.searchControlOptionsShrink)) {
            body["search_control_options"] = request.searchControlOptionsShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StandardSearch",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/trade/action-standardsearch",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StandardSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func standardSearch(_ request: StandardSearchRequest) async throws -> StandardSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: StandardSearchHeaders = StandardSearchHeaders([:])
        return try await standardSearchWithOptions(request as! StandardSearchRequest, headers as! StandardSearchHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketingWithOptions(_ request: TicketingRequest, _ headers: TicketingHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TicketingResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderNum)) {
            body["order_num"] = request.orderNum!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Ticketing",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/trade/action-ticketing",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TicketingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketing(_ request: TicketingRequest) async throws -> TicketingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TicketingHeaders = TicketingHeaders([:])
        return try await ticketingWithOptions(request as! TicketingRequest, headers as! TicketingHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketingCheckWithOptions(_ request: TicketingCheckRequest, _ headers: TicketingCheckHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TicketingCheckResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderNum)) {
            body["order_num"] = request.orderNum!;
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TicketingCheck",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/trade/action-ticketing-check",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TicketingCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ticketingCheck(_ request: TicketingCheckRequest) async throws -> TicketingCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TicketingCheckHeaders = TicketingCheckHeaders([:])
        return try await ticketingCheckWithOptions(request as! TicketingCheckRequest, headers as! TicketingCheckHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transitVisaWithOptions(_ tmpReq: TransitVisaRequest, _ headers: TransitVisaHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> TransitVisaResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TransitVisaShrinkRequest = TransitVisaShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.flightSegmentParamList)) {
            request.flightSegmentParamListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.flightSegmentParamList, "flight_segment_param_list", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.flightSegmentParamListShrink)) {
            query["flight_segment_param_list"] = request.flightSegmentParamListShrink ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketAccessToken)) {
            realHeaders["x-acs-airticket-access-token"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketAccessToken);
        }
        if (!TeaUtils.Client.isUnset(headers.xAcsAirticketLanguage)) {
            realHeaders["x-acs-airticket-language"] = TeaUtils.Client.toJSONString(headers.xAcsAirticketLanguage);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TransitVisa",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/airticket/v1/flight-data/transit-visa",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TransitVisaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transitVisa(_ request: TransitVisaRequest) async throws -> TransitVisaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: TransitVisaHeaders = TransitVisaHeaders([:])
        return try await transitVisaWithOptions(request as! TransitVisaRequest, headers as! TransitVisaHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyRefundWithOptions(_ request: ApplyRefundRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyRefundResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.orderNo)) {
            body["OrderNo"] = request.orderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refundReason)) {
            body["RefundReason"] = request.refundReason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "applyRefund",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/applyRefund",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyRefundResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyRefund(_ request: ApplyRefundRequest) async throws -> ApplyRefundResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await applyRefundWithOptions(request as! ApplyRefundRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetHotelDetailWithOptions(_ tmpReq: BatchGetHotelDetailRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchGetHotelDetailResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchGetHotelDetailShrinkRequest = BatchGetHotelDetailShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.standardHotelIds)) {
            request.standardHotelIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.standardHotelIds, "StandardHotelIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.standardHotelIdsShrink)) {
            body["StandardHotelIds"] = request.standardHotelIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "batchGetHotelDetail",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/batchGetHotelDetail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchGetHotelDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchGetHotelDetail(_ request: BatchGetHotelDetailRequest) async throws -> BatchGetHotelDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await batchGetHotelDetailWithOptions(request as! BatchGetHotelDetailRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelOrRefundWithOptions(_ request: CancelOrRefundRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelOrRefundResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.orderNo)) {
            body["OrderNo"] = request.orderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "cancelOrRefund",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/cancelOrRefund",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelOrRefundResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelOrRefund(_ request: CancelOrRefundRequest) async throws -> CancelOrRefundResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cancelOrRefundWithOptions(request as! CancelOrRefundRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelOrderWithOptions(_ request: CancelOrderRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.orderNo)) {
            body["OrderNo"] = request.orderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "cancelOrder",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/cancelOrder",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelOrder(_ request: CancelOrderRequest) async throws -> CancelOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cancelOrderWithOptions(request as! CancelOrderRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAndPayWithOptions(_ tmpReq: CreateAndPayRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAndPayResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateAndPayShrinkRequest = CreateAndPayShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.contact)) {
            request.contactShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contact, "Contact", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.guests)) {
            request.guestsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.guests, "Guests", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.contactShrink)) {
            body["Contact"] = request.contactShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalOrderNo)) {
            body["ExternalOrderNo"] = request.externalOrderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.guestsShrink)) {
            body["Guests"] = request.guestsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemOfferId)) {
            body["ItemOfferId"] = request.itemOfferId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomCount)) {
            body["RoomCount"] = request.roomCount!;
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "createAndPay",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/createAndPay",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAndPayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAndPay(_ request: CreateAndPayRequest) async throws -> CreateAndPayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createAndPayWithOptions(request as! CreateAndPayRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrderWithOptions(_ tmpReq: CreateOrderRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateOrderShrinkRequest = CreateOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.contact)) {
            request.contactShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contact, "Contact", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.guests)) {
            request.guestsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.guests, "Guests", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.contactShrink)) {
            body["Contact"] = request.contactShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalOrderNo)) {
            body["ExternalOrderNo"] = request.externalOrderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.guestsShrink)) {
            body["Guests"] = request.guestsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemOfferId)) {
            body["ItemOfferId"] = request.itemOfferId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomCount)) {
            body["RoomCount"] = request.roomCount!;
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "createOrder",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/createOrder",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrder(_ request: CreateOrderRequest) async throws -> CreateOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createOrderWithOptions(request as! CreateOrderRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelApplyRefundWithOptions(_ request: GlobalHotelApplyRefundRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GlobalHotelApplyRefundResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.orderNo)) {
            body["OrderNo"] = request.orderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refundReason)) {
            body["RefundReason"] = request.refundReason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "globalHotelApplyRefund",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/globalHotelApplyRefund",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GlobalHotelApplyRefundResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelApplyRefund(_ request: GlobalHotelApplyRefundRequest) async throws -> GlobalHotelApplyRefundResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await globalHotelApplyRefundWithOptions(request as! GlobalHotelApplyRefundRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelBatchGetHotelDetailWithOptions(_ tmpReq: GlobalHotelBatchGetHotelDetailRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GlobalHotelBatchGetHotelDetailResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GlobalHotelBatchGetHotelDetailShrinkRequest = GlobalHotelBatchGetHotelDetailShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.standardHotelIds)) {
            request.standardHotelIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.standardHotelIds, "StandardHotelIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.standardHotelIdsShrink)) {
            body["StandardHotelIds"] = request.standardHotelIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "globalHotelBatchGetHotelDetail",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/globalHotelBatchGetHotelDetail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GlobalHotelBatchGetHotelDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelBatchGetHotelDetail(_ request: GlobalHotelBatchGetHotelDetailRequest) async throws -> GlobalHotelBatchGetHotelDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await globalHotelBatchGetHotelDetailWithOptions(request as! GlobalHotelBatchGetHotelDetailRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelCancelOrRefundWithOptions(_ request: GlobalHotelCancelOrRefundRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GlobalHotelCancelOrRefundResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.orderNo)) {
            body["OrderNo"] = request.orderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "globalHotelCancelOrRefund",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/globalHotelCancelOrRefund",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GlobalHotelCancelOrRefundResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelCancelOrRefund(_ request: GlobalHotelCancelOrRefundRequest) async throws -> GlobalHotelCancelOrRefundResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await globalHotelCancelOrRefundWithOptions(request as! GlobalHotelCancelOrRefundRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelCancelOrderWithOptions(_ request: GlobalHotelCancelOrderRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GlobalHotelCancelOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.orderNo)) {
            body["OrderNo"] = request.orderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "globalHotelCancelOrder",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/globalHotelCancelOrder",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GlobalHotelCancelOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelCancelOrder(_ request: GlobalHotelCancelOrderRequest) async throws -> GlobalHotelCancelOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await globalHotelCancelOrderWithOptions(request as! GlobalHotelCancelOrderRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelCreateAndPayWithOptions(_ tmpReq: GlobalHotelCreateAndPayRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GlobalHotelCreateAndPayResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GlobalHotelCreateAndPayShrinkRequest = GlobalHotelCreateAndPayShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.contact)) {
            request.contactShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contact, "Contact", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.guests)) {
            request.guestsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.guests, "Guests", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.contactShrink)) {
            body["Contact"] = request.contactShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalOrderNo)) {
            body["ExternalOrderNo"] = request.externalOrderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.guestsShrink)) {
            body["Guests"] = request.guestsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemOfferId)) {
            body["ItemOfferId"] = request.itemOfferId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomCount)) {
            body["RoomCount"] = request.roomCount!;
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "globalHotelCreateAndPay",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/globalHotelCreateAndPay",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GlobalHotelCreateAndPayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelCreateAndPay(_ request: GlobalHotelCreateAndPayRequest) async throws -> GlobalHotelCreateAndPayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await globalHotelCreateAndPayWithOptions(request as! GlobalHotelCreateAndPayRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelCreateOrderWithOptions(_ tmpReq: GlobalHotelCreateOrderRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GlobalHotelCreateOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GlobalHotelCreateOrderShrinkRequest = GlobalHotelCreateOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.contact)) {
            request.contactShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contact, "Contact", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.guests)) {
            request.guestsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.guests, "Guests", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.contactShrink)) {
            body["Contact"] = request.contactShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalOrderNo)) {
            body["ExternalOrderNo"] = request.externalOrderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.guestsShrink)) {
            body["Guests"] = request.guestsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemOfferId)) {
            body["ItemOfferId"] = request.itemOfferId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomCount)) {
            body["RoomCount"] = request.roomCount!;
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "globalHotelCreateOrder",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/globalHotelCreateOrder",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GlobalHotelCreateOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelCreateOrder(_ request: GlobalHotelCreateOrderRequest) async throws -> GlobalHotelCreateOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await globalHotelCreateOrderWithOptions(request as! GlobalHotelCreateOrderRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelPayWithOptions(_ request: GlobalHotelPayRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GlobalHotelPayResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.orderNo)) {
            body["OrderNo"] = request.orderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "globalHotelPay",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/globalHotelPay",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GlobalHotelPayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelPay(_ request: GlobalHotelPayRequest) async throws -> GlobalHotelPayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await globalHotelPayWithOptions(request as! GlobalHotelPayRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelQueryAvailabilityWithOptions(_ tmpReq: GlobalHotelQueryAvailabilityRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GlobalHotelQueryAvailabilityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GlobalHotelQueryAvailabilityShrinkRequest = GlobalHotelQueryAvailabilityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.childrenAges)) {
            request.childrenAgesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.childrenAges, "ChildrenAges", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.standardHotelIds)) {
            request.standardHotelIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.standardHotelIds, "StandardHotelIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.adultCount)) {
            body["AdultCount"] = request.adultCount!;
        }
        if (!TeaUtils.Client.isUnset(request.checkInDate)) {
            body["CheckInDate"] = request.checkInDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkOutDate)) {
            body["CheckOutDate"] = request.checkOutDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.childCount)) {
            body["ChildCount"] = request.childCount!;
        }
        if (!TeaUtils.Client.isUnset(request.childrenAgesShrink)) {
            body["ChildrenAges"] = request.childrenAgesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomCount)) {
            body["RoomCount"] = request.roomCount!;
        }
        if (!TeaUtils.Client.isUnset(request.standardHotelIdsShrink)) {
            body["StandardHotelIds"] = request.standardHotelIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "globalHotelQueryAvailability",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/globalHotelQueryAvailability",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GlobalHotelQueryAvailabilityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelQueryAvailability(_ request: GlobalHotelQueryAvailabilityRequest) async throws -> GlobalHotelQueryAvailabilityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await globalHotelQueryAvailabilityWithOptions(request as! GlobalHotelQueryAvailabilityRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelQueryCalendarAvailabilityWithOptions(_ tmpReq: GlobalHotelQueryCalendarAvailabilityRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GlobalHotelQueryCalendarAvailabilityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GlobalHotelQueryCalendarAvailabilityShrinkRequest = GlobalHotelQueryCalendarAvailabilityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.childrenAges)) {
            request.childrenAgesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.childrenAges, "ChildrenAges", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.standardHotelIds)) {
            request.standardHotelIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.standardHotelIds, "StandardHotelIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.adultCount)) {
            body["AdultCount"] = request.adultCount!;
        }
        if (!TeaUtils.Client.isUnset(request.checkInDateEnd)) {
            body["CheckInDateEnd"] = request.checkInDateEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkInDateStart)) {
            body["CheckInDateStart"] = request.checkInDateStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.childCount)) {
            body["ChildCount"] = request.childCount!;
        }
        if (!TeaUtils.Client.isUnset(request.childrenAgesShrink)) {
            body["ChildrenAges"] = request.childrenAgesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomCount)) {
            body["RoomCount"] = request.roomCount!;
        }
        if (!TeaUtils.Client.isUnset(request.standardHotelIdsShrink)) {
            body["StandardHotelIds"] = request.standardHotelIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "globalHotelQueryCalendarAvailability",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/globalHotelQueryCalendarAvailability",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GlobalHotelQueryCalendarAvailabilityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelQueryCalendarAvailability(_ request: GlobalHotelQueryCalendarAvailabilityRequest) async throws -> GlobalHotelQueryCalendarAvailabilityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await globalHotelQueryCalendarAvailabilityWithOptions(request as! GlobalHotelQueryCalendarAvailabilityRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelQueryOrderWithOptions(_ request: GlobalHotelQueryOrderRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GlobalHotelQueryOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.externalOrderNo)) {
            body["ExternalOrderNo"] = request.externalOrderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderNo)) {
            body["OrderNo"] = request.orderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "globalHotelQueryOrder",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/globalHotelQueryOrder",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GlobalHotelQueryOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelQueryOrder(_ request: GlobalHotelQueryOrderRequest) async throws -> GlobalHotelQueryOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await globalHotelQueryOrderWithOptions(request as! GlobalHotelQueryOrderRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelSearchCityPageWithOptions(_ request: GlobalHotelSearchCityPageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GlobalHotelSearchCityPageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.count)) {
            body["Count"] = request.count!;
        }
        if (!TeaUtils.Client.isUnset(request.countryCode)) {
            body["CountryCode"] = request.countryCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            body["Start"] = request.start!;
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "globalHotelSearchCityPage",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/globalHotelSearchCityPage",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GlobalHotelSearchCityPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelSearchCityPage(_ request: GlobalHotelSearchCityPageRequest) async throws -> GlobalHotelSearchCityPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await globalHotelSearchCityPageWithOptions(request as! GlobalHotelSearchCityPageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelSearchHotelListWithOptions(_ request: GlobalHotelSearchHotelListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GlobalHotelSearchHotelListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.cityCode)) {
            body["CityCode"] = request.cityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            body["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "globalHotelSearchHotelList",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/globalHotelSearchHotelList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GlobalHotelSearchHotelListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelSearchHotelList(_ request: GlobalHotelSearchHotelListRequest) async throws -> GlobalHotelSearchHotelListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await globalHotelSearchHotelListWithOptions(request as! GlobalHotelSearchHotelListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelValidatePriceWithOptions(_ tmpReq: GlobalHotelValidatePriceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GlobalHotelValidatePriceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GlobalHotelValidatePriceShrinkRequest = GlobalHotelValidatePriceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.childrenAges)) {
            request.childrenAgesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.childrenAges, "ChildrenAges", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.adults)) {
            body["Adults"] = request.adults!;
        }
        if (!TeaUtils.Client.isUnset(request.children)) {
            body["Children"] = request.children!;
        }
        if (!TeaUtils.Client.isUnset(request.childrenAgesShrink)) {
            body["ChildrenAges"] = request.childrenAgesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemOfferKey)) {
            body["ItemOfferKey"] = request.itemOfferKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomCount)) {
            body["RoomCount"] = request.roomCount!;
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "globalHotelValidatePrice",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/globalHotelValidatePrice",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GlobalHotelValidatePriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func globalHotelValidatePrice(_ request: GlobalHotelValidatePriceRequest) async throws -> GlobalHotelValidatePriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await globalHotelValidatePriceWithOptions(request as! GlobalHotelValidatePriceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func payWithOptions(_ request: PayRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PayResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.orderNo)) {
            body["OrderNo"] = request.orderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "pay",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/pay",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pay(_ request: PayRequest) async throws -> PayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await payWithOptions(request as! PayRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAvailabilityWithOptions(_ tmpReq: QueryAvailabilityRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAvailabilityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryAvailabilityShrinkRequest = QueryAvailabilityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.childrenAges)) {
            request.childrenAgesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.childrenAges, "ChildrenAges", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.standardHotelIds)) {
            request.standardHotelIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.standardHotelIds, "StandardHotelIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.adultCount)) {
            body["AdultCount"] = request.adultCount!;
        }
        if (!TeaUtils.Client.isUnset(request.checkInDate)) {
            body["CheckInDate"] = request.checkInDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkOutDate)) {
            body["CheckOutDate"] = request.checkOutDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.childCount)) {
            body["ChildCount"] = request.childCount!;
        }
        if (!TeaUtils.Client.isUnset(request.childrenAgesShrink)) {
            body["ChildrenAges"] = request.childrenAgesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomCount)) {
            body["RoomCount"] = request.roomCount!;
        }
        if (!TeaUtils.Client.isUnset(request.standardHotelIdsShrink)) {
            body["StandardHotelIds"] = request.standardHotelIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "queryAvailability",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/queryAvailability",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAvailabilityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAvailability(_ request: QueryAvailabilityRequest) async throws -> QueryAvailabilityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryAvailabilityWithOptions(request as! QueryAvailabilityRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCalendarAvailabilityWithOptions(_ tmpReq: QueryCalendarAvailabilityRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCalendarAvailabilityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryCalendarAvailabilityShrinkRequest = QueryCalendarAvailabilityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.childrenAges)) {
            request.childrenAgesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.childrenAges, "ChildrenAges", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.standardHotelIds)) {
            request.standardHotelIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.standardHotelIds, "StandardHotelIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.adultCount)) {
            body["AdultCount"] = request.adultCount!;
        }
        if (!TeaUtils.Client.isUnset(request.checkInDateEnd)) {
            body["CheckInDateEnd"] = request.checkInDateEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkInDateStart)) {
            body["CheckInDateStart"] = request.checkInDateStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.childCount)) {
            body["ChildCount"] = request.childCount!;
        }
        if (!TeaUtils.Client.isUnset(request.childrenAgesShrink)) {
            body["ChildrenAges"] = request.childrenAgesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomCount)) {
            body["RoomCount"] = request.roomCount!;
        }
        if (!TeaUtils.Client.isUnset(request.standardHotelIdsShrink)) {
            body["StandardHotelIds"] = request.standardHotelIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "queryCalendarAvailability",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/queryCalendarAvailability",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCalendarAvailabilityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCalendarAvailability(_ request: QueryCalendarAvailabilityRequest) async throws -> QueryCalendarAvailabilityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryCalendarAvailabilityWithOptions(request as! QueryCalendarAvailabilityRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderWithOptions(_ request: QueryOrderRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.externalOrderNo)) {
            body["ExternalOrderNo"] = request.externalOrderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderNo)) {
            body["OrderNo"] = request.orderNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "queryOrder",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/queryOrder",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrder(_ request: QueryOrderRequest) async throws -> QueryOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryOrderWithOptions(request as! QueryOrderRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchCityPageWithOptions(_ request: SearchCityPageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchCityPageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.count)) {
            body["Count"] = request.count!;
        }
        if (!TeaUtils.Client.isUnset(request.countryCode)) {
            body["CountryCode"] = request.countryCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            body["Start"] = request.start!;
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "searchCityPage",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/searchCityPage",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchCityPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchCityPage(_ request: SearchCityPageRequest) async throws -> SearchCityPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await searchCityPageWithOptions(request as! SearchCityPageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchHotelListWithOptions(_ request: SearchHotelListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchHotelListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.cityCode)) {
            body["CityCode"] = request.cityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            body["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "searchHotelList",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/globalHotel/searchHotelList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchHotelListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchHotelList(_ request: SearchHotelListRequest) async throws -> SearchHotelListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await searchHotelListWithOptions(request as! SearchHotelListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validatePriceWithOptions(_ tmpReq: ValidatePriceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ValidatePriceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ValidatePriceShrinkRequest = ValidatePriceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.childrenAges)) {
            request.childrenAgesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.childrenAges, "ChildrenAges", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo!;
        }
        if (!TeaUtils.Client.isUnset(request.adults)) {
            body["Adults"] = request.adults!;
        }
        if (!TeaUtils.Client.isUnset(request.children)) {
            body["Children"] = request.children!;
        }
        if (!TeaUtils.Client.isUnset(request.childrenAgesShrink)) {
            body["ChildrenAges"] = request.childrenAgesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemOfferKey)) {
            body["ItemOfferKey"] = request.itemOfferKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomCount)) {
            body["RoomCount"] = request.roomCount!;
        }
        if (!TeaUtils.Client.isUnset(request.tracerId)) {
            body["TracerId"] = request.tracerId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "validatePrice",
            "version": "2023-01-17",
            "protocol": "HTTPS",
            "pathname": "/validatePrice",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ValidatePriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validatePrice(_ request: ValidatePriceRequest) async throws -> ValidatePriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await validatePriceWithOptions(request as! ValidatePriceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
