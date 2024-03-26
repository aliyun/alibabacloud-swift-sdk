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
            "ap-northeast-1": "resellertrade.aliyuncs.com",
            "ap-northeast-2-pop": "resellertrade.aliyuncs.com",
            "ap-south-1": "resellertrade.aliyuncs.com",
            "ap-southeast-1": "resellertrade.aliyuncs.com",
            "ap-southeast-2": "resellertrade.aliyuncs.com",
            "ap-southeast-3": "resellertrade.aliyuncs.com",
            "ap-southeast-5": "resellertrade.aliyuncs.com",
            "cn-beijing": "resellertrade.aliyuncs.com",
            "cn-beijing-finance-1": "resellertrade.aliyuncs.com",
            "cn-beijing-finance-pop": "resellertrade.aliyuncs.com",
            "cn-beijing-gov-1": "resellertrade.aliyuncs.com",
            "cn-beijing-nu16-b01": "resellertrade.aliyuncs.com",
            "cn-chengdu": "resellertrade.aliyuncs.com",
            "cn-edge-1": "resellertrade.aliyuncs.com",
            "cn-fujian": "resellertrade.aliyuncs.com",
            "cn-haidian-cm12-c01": "resellertrade.aliyuncs.com",
            "cn-hangzhou": "resellertrade.aliyuncs.com",
            "cn-hangzhou-bj-b01": "resellertrade.aliyuncs.com",
            "cn-hangzhou-finance": "resellertrade.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "resellertrade.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "resellertrade.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "resellertrade.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "resellertrade.aliyuncs.com",
            "cn-hangzhou-test-306": "resellertrade.aliyuncs.com",
            "cn-hongkong": "resellertrade.aliyuncs.com",
            "cn-hongkong-finance-pop": "resellertrade.aliyuncs.com",
            "cn-huhehaote": "resellertrade.aliyuncs.com",
            "cn-north-2-gov-1": "resellertrade.aliyuncs.com",
            "cn-qingdao": "resellertrade.aliyuncs.com",
            "cn-qingdao-nebula": "resellertrade.aliyuncs.com",
            "cn-shanghai": "resellertrade.aliyuncs.com",
            "cn-shanghai-et15-b01": "resellertrade.aliyuncs.com",
            "cn-shanghai-et2-b01": "resellertrade.aliyuncs.com",
            "cn-shanghai-finance-1": "resellertrade.aliyuncs.com",
            "cn-shanghai-inner": "resellertrade.aliyuncs.com",
            "cn-shanghai-internal-test-1": "resellertrade.aliyuncs.com",
            "cn-shenzhen": "resellertrade.aliyuncs.com",
            "cn-shenzhen-finance-1": "resellertrade.aliyuncs.com",
            "cn-shenzhen-inner": "resellertrade.aliyuncs.com",
            "cn-shenzhen-st4-d01": "resellertrade.aliyuncs.com",
            "cn-shenzhen-su18-b01": "resellertrade.aliyuncs.com",
            "cn-wuhan": "resellertrade.aliyuncs.com",
            "cn-yushanfang": "resellertrade.aliyuncs.com",
            "cn-zhangbei-na61-b01": "resellertrade.aliyuncs.com",
            "cn-zhangjiakou": "resellertrade.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "resellertrade.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "resellertrade.aliyuncs.com",
            "eu-central-1": "resellertrade.aliyuncs.com",
            "eu-west-1": "resellertrade.aliyuncs.com",
            "eu-west-1-oxs": "resellertrade.aliyuncs.com",
            "me-east-1": "resellertrade.aliyuncs.com",
            "rus-west-1-pop": "resellertrade.aliyuncs.com",
            "us-east-1": "resellertrade.aliyuncs.com",
            "us-west-1": "resellertrade.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("resellertrade", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createCouponTemplateWithOptions(_ request: CreateCouponTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCouponTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activitySite)) {
            body["ActivitySite"] = request.activitySite!;
        }
        if (!TeaUtils.Client.isUnset(request.bid)) {
            body["Bid"] = request.bid!;
        }
        if (!TeaUtils.Client.isUnset(request.certainMoney)) {
            body["CertainMoney"] = request.certainMoney!;
        }
        if (!TeaUtils.Client.isUnset(request.clientType)) {
            body["ClientType"] = request.clientType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.commodityType)) {
            body["CommodityType"] = request.commodityType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.controlType)) {
            body["ControlType"] = request.controlType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.couponAmount)) {
            body["CouponAmount"] = request.couponAmount!;
        }
        if (!TeaUtils.Client.isUnset(request.couponEndTime)) {
            body["CouponEndTime"] = request.couponEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.couponFixedType)) {
            body["CouponFixedType"] = request.couponFixedType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.couponStartTime)) {
            body["CouponStartTime"] = request.couponStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.couponType)) {
            body["CouponType"] = request.couponType ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currency)) {
            bodyFlat["Currency"] = request.currency!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.discountRate)) {
            body["DiscountRate"] = request.discountRate!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extendsMap)) {
            bodyFlat["ExtendsMap"] = request.extendsMap ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.fromApp)) {
            body["FromApp"] = request.fromApp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemCodeSet)) {
            body["ItemCodeSet"] = request.itemCodeSet ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.market)) {
            body["Market"] = request.market ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.marketType)) {
            body["MarketType"] = request.marketType!;
        }
        if (!TeaUtils.Client.isUnset(request.maxRelease)) {
            body["MaxRelease"] = request.maxRelease!;
        }
        if (!TeaUtils.Client.isUnset(request.messageId)) {
            body["MessageId"] = request.messageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operator_)) {
            body["Operator"] = request.operator_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderTypeSet)) {
            body["OrderTypeSet"] = request.orderTypeSet ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.perLimitNum)) {
            body["PerLimitNum"] = request.perLimitNum!;
        }
        if (!TeaUtils.Client.isUnset(request.promotionId)) {
            body["PromotionId"] = request.promotionId!;
        }
        if (!TeaUtils.Client.isUnset(request.reason)) {
            body["Reason"] = request.reason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relativeSecond)) {
            body["RelativeSecond"] = request.relativeSecond!;
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            body["RequestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.selectionIdSet)) {
            body["SelectionIdSet"] = request.selectionIdSet ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.sellerId)) {
            body["SellerId"] = request.sellerId!;
        }
        if (!TeaUtils.Client.isUnset(request.site)) {
            body["Site"] = request.site ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.spId)) {
            body["SpId"] = request.spId!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.universalType)) {
            body["UniversalType"] = request.universalType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.upperLimit)) {
            body["UpperLimit"] = request.upperLimit!;
        }
        if (!TeaUtils.Client.isUnset(request.usageCount)) {
            body["UsageCount"] = request.usageCount!;
        }
        if (!TeaUtils.Client.isUnset(request.useScene)) {
            body["UseScene"] = request.useScene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userPkAmount)) {
            body["UserPkAmount"] = request.userPkAmount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.validityType)) {
            body["ValidityType"] = request.validityType ?? "";
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCouponTemplate",
            "version": "2019-12-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCouponTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCouponTemplate(_ request: CreateCouponTemplateRequest) async throws -> CreateCouponTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCouponTemplateWithOptions(request as! CreateCouponTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func discardCouponListWithOptions(_ request: DiscardCouponListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DiscardCouponListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.couponList)) {
            body["CouponList"] = request.couponList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DiscardCouponList",
            "version": "2019-12-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DiscardCouponListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func discardCouponList(_ request: DiscardCouponListRequest) async throws -> DiscardCouponListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await discardCouponListWithOptions(request as! DiscardCouponListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCouponPageWithOptions(_ request: GetCouponPageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCouponPageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCouponPage",
            "version": "2019-12-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCouponPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCouponPage(_ request: GetCouponPageRequest) async throws -> GetCouponPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCouponPageWithOptions(request as! GetCouponPageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomerListWithOptions(_ request: GetCustomerListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCustomerListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCustomerList",
            "version": "2019-12-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCustomerListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomerList(_ request: GetCustomerListRequest) async throws -> GetCustomerListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCustomerListWithOptions(request as! GetCustomerListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRelationWithOptions(_ request: GetRelationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRelationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRelation",
            "version": "2019-12-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRelationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRelation(_ request: GetRelationRequest) async throws -> GetRelationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRelationWithOptions(request as! GetRelationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResellerPayOrderWithOptions(_ request: GetResellerPayOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResellerPayOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["Uid"] = request.uid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResellerPayOrder",
            "version": "2019-12-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResellerPayOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResellerPayOrder(_ request: GetResellerPayOrderRequest) async throws -> GetResellerPayOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResellerPayOrderWithOptions(request as! GetResellerPayOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func labelPartnerUserWithOptions(_ request: LabelPartnerUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> LabelPartnerUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userPK)) {
            body["UserPK"] = request.userPK!;
        }
        if (!TeaUtils.Client.isUnset(request.userTag)) {
            body["UserTag"] = request.userTag ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LabelPartnerUser",
            "version": "2019-12-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LabelPartnerUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func labelPartnerUser(_ request: LabelPartnerUserRequest) async throws -> LabelPartnerUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await labelPartnerUserWithOptions(request as! LabelPartnerUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func migrateResourceWithOptions(_ request: MigrateResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MigrateResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionCode)) {
            body["ActionCode"] = request.actionCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MigrateResource",
            "version": "2019-12-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MigrateResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func migrateResource(_ request: MigrateResourceRequest) async throws -> MigrateResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await migrateResourceWithOptions(request as! MigrateResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineActivityWithOptions(_ request: OfflineActivityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OfflineActivityResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activityList)) {
            body["ActivityList"] = request.activityList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            body["Token"] = request.token ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OfflineActivity",
            "version": "2019-12-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OfflineActivityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func offlineActivity(_ request: OfflineActivityRequest) async throws -> OfflineActivityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await offlineActivityWithOptions(request as! OfflineActivityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func payResultCallbackWithOptions(_ request: PayResultCallbackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PayResultCallbackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payStatus)) {
            query["PayStatus"] = request.payStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payTime)) {
            query["PayTime"] = request.payTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["Uid"] = request.uid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PayResultCallback",
            "version": "2019-12-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PayResultCallbackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func payResultCallback(_ request: PayResultCallbackRequest) async throws -> PayResultCallbackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await payResultCallbackWithOptions(request as! PayResultCallbackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publicActivityWithOptions(_ request: PublicActivityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PublicActivityResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activityList)) {
            body["ActivityList"] = request.activityList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapType)) {
            body["SnapType"] = request.snapType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            body["Token"] = request.token ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PublicActivity",
            "version": "2019-12-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PublicActivityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publicActivity(_ request: PublicActivityRequest) async throws -> PublicActivityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await publicActivityWithOptions(request as! PublicActivityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryActivityWithOptions(_ request: QueryActivityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryActivityResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activityId)) {
            body["ActivityId"] = request.activityId!;
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapType)) {
            body["SnapType"] = request.snapType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryActivity",
            "version": "2019-12-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryActivityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryActivity(_ request: QueryActivityRequest) async throws -> QueryActivityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryActivityWithOptions(request as! QueryActivityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEcoRelationWithOptions(_ request: QueryEcoRelationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryEcoRelationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.relationTime)) {
            body["RelationTime"] = request.relationTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            body["Uid"] = request.uid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryEcoRelation",
            "version": "2019-12-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryEcoRelationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEcoRelation(_ request: QueryEcoRelationRequest) async throws -> QueryEcoRelationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryEcoRelationWithOptions(request as! QueryEcoRelationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveActivityWithOptions(_ tmpReq: SaveActivityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveActivityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SaveActivityShrinkRequest = SaveActivityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extendMap)) {
            request.extendMapShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extendMap, "ExtendMap", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.activityName)) {
            body["ActivityName"] = request.activityName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.blackUidList)) {
            body["BlackUidList"] = request.blackUidList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extendMapShrink)) {
            body["ExtendMap"] = request.extendMapShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fusionPromotionParamList)) {
            body["FusionPromotionParamList"] = request.fusionPromotionParamList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.publishTag)) {
            body["PublishTag"] = request.publishTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.testAccountUidList)) {
            body["TestAccountUidList"] = request.testAccountUidList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            body["Token"] = request.token ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whiteUidList)) {
            body["WhiteUidList"] = request.whiteUidList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveActivity",
            "version": "2019-12-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveActivityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveActivity(_ request: SaveActivityRequest) async throws -> SaveActivityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveActivityWithOptions(request as! SaveActivityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendCouponWithOptions(_ request: SendCouponRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SendCouponResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bid)) {
            body["Bid"] = request.bid!;
        }
        if (!TeaUtils.Client.isUnset(request.fromApp)) {
            body["FromApp"] = request.fromApp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operator_)) {
            body["Operator"] = request.operator_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            body["RequestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sellerId)) {
            body["SellerId"] = request.sellerId!;
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            body["TemplateId"] = request.templateId!;
        }
        if (!TeaUtils.Client.isUnset(request.userAmountModelList)) {
            body["UserAmountModelList"] = request.userAmountModelList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendCoupon",
            "version": "2019-12-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendCouponResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendCoupon(_ request: SendCouponRequest) async throws -> SendCouponResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sendCouponWithOptions(request as! SendCouponRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferResourceWithOptions(_ request: TransferResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TransferResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionCode)) {
            body["ActionCode"] = request.actionCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["Content"] = request.content ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TransferResource",
            "version": "2019-12-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TransferResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func transferResource(_ request: TransferResourceRequest) async throws -> TransferResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await transferResourceWithOptions(request as! TransferResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
