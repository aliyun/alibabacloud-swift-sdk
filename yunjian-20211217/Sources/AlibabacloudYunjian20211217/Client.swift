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
        self._endpoint = try getEndpoint("yunjian", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createDemandPlanWithOptions(_ request: CreateDemandPlanRequest, _ headers: CreateDemandPlanHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDemandPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["userId"] = request.userId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            body["accountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.demandType)) {
            body["demandType"] = request.demandType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            body["period"] = request.period ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            body["source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetCid)) {
            body["targetCid"] = request.targetCid!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.yunUserId)) {
            realHeaders["Yun-User-Id"] = TeaUtils.Client.toJSONString(headers.yunUserId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDemandPlan",
            "version": "2021-12-17",
            "protocol": "HTTPS",
            "pathname": "/api/demand/urgent/saveUrgentDemandPlanItem",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDemandPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDemandPlan(_ request: CreateDemandPlanRequest) async throws -> CreateDemandPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateDemandPlanHeaders = CreateDemandPlanHeaders([:])
        return try await createDemandPlanWithOptions(request as! CreateDemandPlanRequest, headers as! CreateDemandPlanHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDemandPlanV2WithOptions(_ request: CreateDemandPlanV2Request, _ headers: CreateDemandPlanV2Headers, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDemandPlanV2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["userId"] = request.userId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            body["accountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.demandType)) {
            body["demandType"] = request.demandType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            body["productType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetCid)) {
            body["targetCid"] = request.targetCid!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.yunUserId)) {
            realHeaders["Yun-User-Id"] = TeaUtils.Client.toJSONString(headers.yunUserId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDemandPlanV2",
            "version": "2021-12-17",
            "protocol": "HTTPS",
            "pathname": "/api/demand/urgent/saveDemandPlan",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDemandPlanV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDemandPlanV2(_ request: CreateDemandPlanV2Request) async throws -> CreateDemandPlanV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateDemandPlanV2Headers = CreateDemandPlanV2Headers([:])
        return try await createDemandPlanV2WithOptions(request as! CreateDemandPlanV2Request, headers as! CreateDemandPlanV2Headers, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUrgentDemandItemWithOptions(_ request: DeleteUrgentDemandItemRequest, _ headers: DeleteUrgentDemandItemHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUrgentDemandItemResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.modifier)) {
            query["modifier"] = request.modifier ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.yunUserId)) {
            realHeaders["Yun-User-Id"] = TeaUtils.Client.toJSONString(headers.yunUserId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUrgentDemandItem",
            "version": "2021-12-17",
            "protocol": "HTTPS",
            "pathname": "/api/demand/urgent/deleteUrgentDemandItem",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUrgentDemandItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUrgentDemandItem(_ request: DeleteUrgentDemandItemRequest) async throws -> DeleteUrgentDemandItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteUrgentDemandItemHeaders = DeleteUrgentDemandItemHeaders([:])
        return try await deleteUrgentDemandItemWithOptions(request as! DeleteUrgentDemandItemRequest, headers as! DeleteUrgentDemandItemHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUrgentDemandPlanWithOptions(_ request: DeleteUrgentDemandPlanRequest, _ headers: DeleteUrgentDemandPlanHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUrgentDemandPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.modifier)) {
            query["modifier"] = request.modifier ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.yunUserId)) {
            realHeaders["Yun-User-Id"] = TeaUtils.Client.toJSONString(headers.yunUserId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUrgentDemandPlan",
            "version": "2021-12-17",
            "protocol": "HTTPS",
            "pathname": "/api/demand/urgent/deleteUrgentDemandPlan",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUrgentDemandPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUrgentDemandPlan(_ request: DeleteUrgentDemandPlanRequest) async throws -> DeleteUrgentDemandPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeleteUrgentDemandPlanHeaders = DeleteUrgentDemandPlanHeaders([:])
        return try await deleteUrgentDemandPlanWithOptions(request as! DeleteUrgentDemandPlanRequest, headers as! DeleteUrgentDemandPlanHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deliveryItemDetailSynWithOptions(_ request: DeliveryItemDetailSynRequest, _ headers: DeliveryItemDetailSynHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeliveryItemDetailSynResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channel)) {
            body["channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryItemDetailDTOS)) {
            body["deliveryItemDetailDTOS"] = request.deliveryItemDetailDTOS ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.deliveryItemId)) {
            body["deliveryItemId"] = request.deliveryItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryPlanId)) {
            body["deliveryPlanId"] = request.deliveryPlanId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.yunUserId)) {
            realHeaders["Yun-User-Id"] = TeaUtils.Client.toJSONString(headers.yunUserId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeliveryItemDetailSyn",
            "version": "2021-12-17",
            "protocol": "HTTPS",
            "pathname": "/api/supply/deliveryItemDataSync",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeliveryItemDetailSynResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deliveryItemDetailSyn(_ request: DeliveryItemDetailSynRequest) async throws -> DeliveryItemDetailSynResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: DeliveryItemDetailSynHeaders = DeliveryItemDetailSynHeaders([:])
        return try await deliveryItemDetailSynWithOptions(request as! DeliveryItemDetailSynRequest, headers as! DeliveryItemDetailSynHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUrgentDemandItemListWithOptions(_ request: GetUrgentDemandItemListRequest, _ headers: GetUrgentDemandItemListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUrgentDemandItemListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            body["commodityCode"] = request.commodityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commodityTypeCode)) {
            body["commodityTypeCode"] = request.commodityTypeCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.planId)) {
            body["planId"] = request.planId!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            body["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.zone)) {
            body["zone"] = request.zone ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.yunUserId)) {
            realHeaders["Yun-User-Id"] = TeaUtils.Client.toJSONString(headers.yunUserId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUrgentDemandItemList",
            "version": "2021-12-17",
            "protocol": "HTTPS",
            "pathname": "/api/demand/urgent/getUrgentDemandItemList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUrgentDemandItemListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUrgentDemandItemList(_ request: GetUrgentDemandItemListRequest) async throws -> GetUrgentDemandItemListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetUrgentDemandItemListHeaders = GetUrgentDemandItemListHeaders([:])
        return try await getUrgentDemandItemListWithOptions(request as! GetUrgentDemandItemListRequest, headers as! GetUrgentDemandItemListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUrgentDemandPlanDetailWithOptions(_ request: GetUrgentDemandPlanDetailRequest, _ headers: GetUrgentDemandPlanDetailHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUrgentDemandPlanDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.planId)) {
            body["planId"] = request.planId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.yunUserId)) {
            realHeaders["Yun-User-Id"] = TeaUtils.Client.toJSONString(headers.yunUserId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUrgentDemandPlanDetail",
            "version": "2021-12-17",
            "protocol": "HTTPS",
            "pathname": "/api/demand/urgent/getUrgentDemandPlanDetail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUrgentDemandPlanDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUrgentDemandPlanDetail(_ request: GetUrgentDemandPlanDetailRequest) async throws -> GetUrgentDemandPlanDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetUrgentDemandPlanDetailHeaders = GetUrgentDemandPlanDetailHeaders([:])
        return try await getUrgentDemandPlanDetailWithOptions(request as! GetUrgentDemandPlanDetailRequest, headers as! GetUrgentDemandPlanDetailHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUrgentDemandPlanListWithOptions(_ request: GetUrgentDemandPlanListRequest, _ headers: GetUrgentDemandPlanListHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUrgentDemandPlanListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.current)) {
            body["current"] = request.current!;
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            body["period"] = request.period ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planType)) {
            body["planType"] = request.planType!;
        }
        if (!TeaUtils.Client.isUnset(request.size)) {
            body["size"] = request.size!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.yunUserId)) {
            realHeaders["Yun-User-Id"] = TeaUtils.Client.toJSONString(headers.yunUserId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUrgentDemandPlanList",
            "version": "2021-12-17",
            "protocol": "HTTPS",
            "pathname": "/api/demand/urgent/getUrgentDemandPlanList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUrgentDemandPlanListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUrgentDemandPlanList(_ request: GetUrgentDemandPlanListRequest) async throws -> GetUrgentDemandPlanListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: GetUrgentDemandPlanListHeaders = GetUrgentDemandPlanListHeaders([:])
        return try await getUrgentDemandPlanListWithOptions(request as! GetUrgentDemandPlanListRequest, headers as! GetUrgentDemandPlanListHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pageDemandPlanWithDemandInfoWithOptions(_ request: PageDemandPlanWithDemandInfoRequest, _ headers: PageDemandPlanWithDemandInfoHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> PageDemandPlanWithDemandInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.approvalStatus)) {
            body["approvalStatus"] = request.approvalStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTimeEnd)) {
            body["createTimeEnd"] = request.createTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTimeStart)) {
            body["createTimeStart"] = request.createTimeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.creatorStaffId)) {
            body["creatorStaffId"] = request.creatorStaffId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.demandDeliveryStatus)) {
            body["demandDeliveryStatus"] = request.demandDeliveryStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.demandId)) {
            body["demandId"] = request.demandId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.demandPlanId)) {
            body["demandPlanId"] = request.demandPlanId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.demandPlanStatus)) {
            body["demandPlanStatus"] = request.demandPlanStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operator_)) {
            body["operator"] = request.operator_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.roCode)) {
            body["roCode"] = request.roCode ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.yunUserId)) {
            realHeaders["Yun-User-Id"] = TeaUtils.Client.toJSONString(headers.yunUserId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PageDemandPlanWithDemandInfo",
            "version": "2021-12-17",
            "protocol": "HTTPS",
            "pathname": "/api/demand/getDemandPlanList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PageDemandPlanWithDemandInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pageDemandPlanWithDemandInfo(_ request: PageDemandPlanWithDemandInfoRequest) async throws -> PageDemandPlanWithDemandInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: PageDemandPlanWithDemandInfoHeaders = PageDemandPlanWithDemandInfoHeaders([:])
        return try await pageDemandPlanWithDemandInfoWithOptions(request as! PageDemandPlanWithDemandInfoRequest, headers as! PageDemandPlanWithDemandInfoHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushResourcePlanWithOptions(_ request: PushResourcePlanRequest, _ headers: PushResourcePlanHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> PushResourcePlanResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bufferCnt)) {
            body["bufferCnt"] = request.bufferCnt!;
        }
        if (!TeaUtils.Client.isUnset(request.demandCount)) {
            body["demandCount"] = request.demandCount!;
        }
        if (!TeaUtils.Client.isUnset(request.demandId)) {
            body["demandId"] = request.demandId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.methodList)) {
            body["methodList"] = request.methodList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            body["requestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requireCnt)) {
            body["requireCnt"] = request.requireCnt!;
        }
        if (!TeaUtils.Client.isUnset(request.subDemandId)) {
            body["subDemandId"] = request.subDemandId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.yunUserId)) {
            realHeaders["Yun-User-Id"] = TeaUtils.Client.toJSONString(headers.yunUserId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushResourcePlan",
            "version": "2021-12-17",
            "protocol": "HTTPS",
            "pathname": "/api/supply/resourcePlan/push",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushResourcePlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushResourcePlan(_ request: PushResourcePlanRequest) async throws -> PushResourcePlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: PushResourcePlanHeaders = PushResourcePlanHeaders([:])
        return try await pushResourcePlanWithOptions(request as! PushResourcePlanRequest, headers as! PushResourcePlanHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDeliveredSupplyItemsWithOptions(_ request: QueryDeliveredSupplyItemsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDeliveredSupplyItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["accountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commodityTypeCode)) {
            query["commodityTypeCode"] = request.commodityTypeCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDeliveredSupplyItems",
            "version": "2021-12-17",
            "protocol": "HTTPS",
            "pathname": "/api/supply/queryDeliveredSupplyItems",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "array"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDeliveredSupplyItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDeliveredSupplyItems(_ request: QueryDeliveredSupplyItemsRequest) async throws -> QueryDeliveredSupplyItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryDeliveredSupplyItemsWithOptions(request as! QueryDeliveredSupplyItemsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPeriodBudgetBillWithOptions(_ request: QueryPeriodBudgetBillRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPeriodBudgetBillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.objectIds)) {
            query["objectIds"] = request.objectIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectType)) {
            query["objectType"] = request.objectType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["period"] = request.period ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryPeriodBudgetBill",
            "version": "2021-12-17",
            "protocol": "HTTPS",
            "pathname": "/api/annual/budget/queryPeriodBudgetBill",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPeriodBudgetBillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPeriodBudgetBill(_ request: QueryPeriodBudgetBillRequest) async throws -> QueryPeriodBudgetBillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryPeriodBudgetBillWithOptions(request as! QueryPeriodBudgetBillRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveUrgentDemandItemWithOptions(_ request: SaveUrgentDemandItemRequest, _ headers: SaveUrgentDemandItemHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveUrgentDemandItemResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            body["accountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.creator)) {
            body["creator"] = request.creator ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectTime)) {
            body["effectTime"] = request.effectTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifier)) {
            body["modifier"] = request.modifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkType)) {
            body["networkType"] = request.networkType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payDuration)) {
            body["payDuration"] = request.payDuration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payDurationUnit)) {
            body["payDurationUnit"] = request.payDurationUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            body["payType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.planId)) {
            body["planId"] = request.planId!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            body["region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.urgentDemandEbsRequest)) {
            body["urgentDemandEbsRequest"] = request.urgentDemandEbsRequest!;
        }
        if (!TeaUtils.Client.isUnset(request.urgentDemandEcsRequest)) {
            body["urgentDemandEcsRequest"] = request.urgentDemandEcsRequest!;
        }
        if (!TeaUtils.Client.isUnset(request.zone)) {
            body["zone"] = request.zone ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.yunUserId)) {
            realHeaders["Yun-User-Id"] = TeaUtils.Client.toJSONString(headers.yunUserId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveUrgentDemandItem",
            "version": "2021-12-17",
            "protocol": "HTTPS",
            "pathname": "/api/demand/urgent/saveUrgentDemandItem",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveUrgentDemandItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveUrgentDemandItem(_ request: SaveUrgentDemandItemRequest) async throws -> SaveUrgentDemandItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SaveUrgentDemandItemHeaders = SaveUrgentDemandItemHeaders([:])
        return try await saveUrgentDemandItemWithOptions(request as! SaveUrgentDemandItemRequest, headers as! SaveUrgentDemandItemHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitUrgentDemandPlanWithOptions(_ request: SubmitUrgentDemandPlanRequest, _ headers: SubmitUrgentDemandPlanHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitUrgentDemandPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.planId)) {
            query["planId"] = request.planId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["userId"] = request.userId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.yunUserId)) {
            realHeaders["Yun-User-Id"] = TeaUtils.Client.toJSONString(headers.yunUserId);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitUrgentDemandPlan",
            "version": "2021-12-17",
            "protocol": "HTTPS",
            "pathname": "/api/demand/urgent/submitUrgentDemandPlan",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitUrgentDemandPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitUrgentDemandPlan(_ request: SubmitUrgentDemandPlanRequest) async throws -> SubmitUrgentDemandPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: SubmitUrgentDemandPlanHeaders = SubmitUrgentDemandPlanHeaders([:])
        return try await submitUrgentDemandPlanWithOptions(request as! SubmitUrgentDemandPlanRequest, headers as! SubmitUrgentDemandPlanHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func acceptFulfillmentDecisionWithOptions(_ request: AcceptFulfillmentDecisionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AcceptFulfillmentDecisionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.decisionConclusion)) {
            body["DecisionConclusion"] = request.decisionConclusion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.decisionType)) {
            body["DecisionType"] = request.decisionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["OrderId"] = request.orderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "acceptFulfillmentDecision",
            "version": "2021-12-17",
            "protocol": "HTTPS",
            "pathname": "/acceptFulfillmentDecision",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AcceptFulfillmentDecisionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func acceptFulfillmentDecision(_ request: AcceptFulfillmentDecisionRequest) async throws -> AcceptFulfillmentDecisionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await acceptFulfillmentDecisionWithOptions(request as! AcceptFulfillmentDecisionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
