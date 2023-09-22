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
            "cn-hangzhou": "linkedmall.aliyuncs.com",
            "cn-shanghai": "linkedmall.aliyuncs.com",
            "ap-northeast-1": "linkedmall.aliyuncs.com",
            "ap-northeast-2-pop": "linkedmall.aliyuncs.com",
            "ap-south-1": "linkedmall.aliyuncs.com",
            "ap-southeast-1": "linkedmall.aliyuncs.com",
            "ap-southeast-2": "linkedmall.aliyuncs.com",
            "ap-southeast-3": "linkedmall.aliyuncs.com",
            "ap-southeast-5": "linkedmall.aliyuncs.com",
            "cn-beijing": "linkedmall.aliyuncs.com",
            "cn-beijing-finance-1": "linkedmall.aliyuncs.com",
            "cn-beijing-finance-pop": "linkedmall.aliyuncs.com",
            "cn-beijing-gov-1": "linkedmall.aliyuncs.com",
            "cn-beijing-nu16-b01": "linkedmall.aliyuncs.com",
            "cn-chengdu": "linkedmall.aliyuncs.com",
            "cn-edge-1": "linkedmall.aliyuncs.com",
            "cn-fujian": "linkedmall.aliyuncs.com",
            "cn-haidian-cm12-c01": "linkedmall.aliyuncs.com",
            "cn-hangzhou-bj-b01": "linkedmall.aliyuncs.com",
            "cn-hangzhou-finance": "linkedmall.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "linkedmall.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "linkedmall.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "linkedmall.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "linkedmall.aliyuncs.com",
            "cn-hangzhou-test-306": "linkedmall.aliyuncs.com",
            "cn-hongkong": "linkedmall.aliyuncs.com",
            "cn-hongkong-finance-pop": "linkedmall.aliyuncs.com",
            "cn-huhehaote": "linkedmall.aliyuncs.com",
            "cn-north-2-gov-1": "linkedmall.aliyuncs.com",
            "cn-qingdao": "linkedmall.aliyuncs.com",
            "cn-qingdao-nebula": "linkedmall.aliyuncs.com",
            "cn-shanghai-et15-b01": "linkedmall.aliyuncs.com",
            "cn-shanghai-et2-b01": "linkedmall.aliyuncs.com",
            "cn-shanghai-finance-1": "linkedmall.aliyuncs.com",
            "cn-shanghai-inner": "linkedmall.aliyuncs.com",
            "cn-shanghai-internal-test-1": "linkedmall.aliyuncs.com",
            "cn-shenzhen": "linkedmall.aliyuncs.com",
            "cn-shenzhen-finance-1": "linkedmall.aliyuncs.com",
            "cn-shenzhen-inner": "linkedmall.aliyuncs.com",
            "cn-shenzhen-st4-d01": "linkedmall.aliyuncs.com",
            "cn-shenzhen-su18-b01": "linkedmall.aliyuncs.com",
            "cn-wuhan": "linkedmall.aliyuncs.com",
            "cn-yushanfang": "linkedmall.aliyuncs.com",
            "cn-zhangbei-na61-b01": "linkedmall.aliyuncs.com",
            "cn-zhangjiakou": "linkedmall.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "linkedmall.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "linkedmall.aliyuncs.com",
            "eu-central-1": "linkedmall.aliyuncs.com",
            "eu-west-1": "linkedmall.aliyuncs.com",
            "eu-west-1-oxs": "linkedmall.aliyuncs.com",
            "me-east-1": "linkedmall.aliyuncs.com",
            "rus-west-1-pop": "linkedmall.aliyuncs.com",
            "us-east-1": "linkedmall.aliyuncs.com",
            "us-west-1": "linkedmall.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("linkedmall", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func cancelRefundOrderWithOptions(_ disputeId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelRefundOrderResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelRefundOrder",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v2/refunds/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(disputeId) + "/commands/cancel",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelRefundOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelRefundOrder(_ disputeId: String) async throws -> CancelRefundOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cancelRefundOrderWithOptions(disputeId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmDisburseWithOptions(_ request: ConfirmDisburseRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfirmDisburseResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfirmDisburse",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v2/orders/commands/confirmDisburse",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfirmDisburseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmDisburse(_ request: ConfirmDisburseRequest) async throws -> ConfirmDisburseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await confirmDisburseWithOptions(request as! ConfirmDisburseRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGoodsShippingNoticeWithOptions(_ request: CreateGoodsShippingNoticeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGoodsShippingNoticeResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGoodsShippingNotice",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v2/refunds/command/createGoodsShippingNotice",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGoodsShippingNoticeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGoodsShippingNotice(_ request: CreateGoodsShippingNoticeRequest) async throws -> CreateGoodsShippingNoticeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createGoodsShippingNoticeWithOptions(request as! CreateGoodsShippingNoticeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPurchaseOrderWithOptions(_ request: CreatePurchaseOrderRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePurchaseOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePurchaseOrder",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v2/purchaseOrders",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePurchaseOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPurchaseOrder(_ request: CreatePurchaseOrderRequest) async throws -> CreatePurchaseOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createPurchaseOrderWithOptions(request as! CreatePurchaseOrderRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRefundOrderWithOptions(_ request: CreateRefundOrderRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRefundOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRefundOrder",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v2/refunds",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRefundOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRefundOrder(_ request: CreateRefundOrderRequest) async throws -> CreateRefundOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRefundOrderWithOptions(request as! CreateRefundOrderRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrderWithOptions(_ orderId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOrderResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOrder",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v2/orders/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(orderId),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrder(_ orderId: String) async throws -> GetOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getOrderWithOptions(orderId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPurchaseOrderStatusWithOptions(_ purchaseOrderId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPurchaseOrderStatusResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPurchaseOrderStatus",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v2/purchaseOrders/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(purchaseOrderId) + "/status",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPurchaseOrderStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPurchaseOrderStatus(_ purchaseOrderId: String) async throws -> GetPurchaseOrderStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPurchaseOrderStatusWithOptions(purchaseOrderId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPurchaserShopWithOptions(_ purchaserId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPurchaserShopResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPurchaserShop",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v2/purchaserShops/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(purchaserId),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPurchaserShopResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPurchaserShop(_ purchaserId: String) async throws -> GetPurchaserShopResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPurchaserShopWithOptions(purchaserId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRefundOrderWithOptions(_ disputeId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRefundOrderResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRefundOrder",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v2/refunds/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(disputeId),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRefundOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRefundOrder(_ disputeId: String) async throws -> GetRefundOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRefundOrderWithOptions(disputeId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSelectionProductWithOptions(_ productId: String, _ request: GetSelectionProductRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSelectionProductResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.divisionCode)) {
            query["divisionCode"] = request.divisionCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.purchaserId)) {
            query["purchaserId"] = request.purchaserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSelectionProduct",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v2/selectionPool/products/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(productId),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSelectionProductResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSelectionProduct(_ productId: String, _ request: GetSelectionProductRequest) async throws -> GetSelectionProductResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSelectionProductWithOptions(productId as! String, request as! GetSelectionProductRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSelectionProductSaleInfoWithOptions(_ productId: String, _ request: GetSelectionProductSaleInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSelectionProductSaleInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.divisionCode)) {
            query["divisionCode"] = request.divisionCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.purchaserId)) {
            query["purchaserId"] = request.purchaserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSelectionProductSaleInfo",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v2/selectionPool/products/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(productId) + "/saleInfo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSelectionProductSaleInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSelectionProductSaleInfo(_ productId: String, _ request: GetSelectionProductSaleInfoRequest) async throws -> GetSelectionProductSaleInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSelectionProductSaleInfoWithOptions(productId as! String, request as! GetSelectionProductSaleInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCategoriesWithOptions(_ request: ListCategoriesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCategoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCategories",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v2/categories/commands/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCategoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCategories(_ request: ListCategoriesRequest) async throws -> ListCategoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listCategoriesWithOptions(request as! ListCategoriesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogisticsOrdersWithOptions(_ orderId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListLogisticsOrdersResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListLogisticsOrders",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v2/orders/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(orderId) + "/logisticsOrders",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListLogisticsOrdersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listLogisticsOrders(_ orderId: String) async throws -> ListLogisticsOrdersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listLogisticsOrdersWithOptions(orderId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPurchaserShopsWithOptions(_ request: ListPurchaserShopsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPurchaserShopsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPurchaserShops",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v2/purchaserShops",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPurchaserShopsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPurchaserShops(_ request: ListPurchaserShopsRequest) async throws -> ListPurchaserShopsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listPurchaserShopsWithOptions(request as! ListPurchaserShopsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSelectionProductSaleInfosWithOptions(_ request: ListSelectionProductSaleInfosRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSelectionProductSaleInfosResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSelectionProductSaleInfos",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v2/selectionPool/products/saleInfo/commands/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSelectionProductSaleInfosResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSelectionProductSaleInfos(_ request: ListSelectionProductSaleInfosRequest) async throws -> ListSelectionProductSaleInfosResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSelectionProductSaleInfosWithOptions(request as! ListSelectionProductSaleInfosRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSelectionProductsWithOptions(_ request: ListSelectionProductsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSelectionProductsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.purchaserId)) {
            query["purchaserId"] = request.purchaserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSelectionProducts",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v2/selectionPool/products",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSelectionProductsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSelectionProducts(_ request: ListSelectionProductsRequest) async throws -> ListSelectionProductsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSelectionProductsWithOptions(request as! ListSelectionProductsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSelectionSkuSaleInfosWithOptions(_ request: ListSelectionSkuSaleInfosRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSelectionSkuSaleInfosResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSelectionSkuSaleInfos",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v2/selectionPool/skus/saleInfo/commands/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSelectionSkuSaleInfosResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSelectionSkuSaleInfos(_ request: ListSelectionSkuSaleInfosRequest) async throws -> ListSelectionSkuSaleInfosResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSelectionSkuSaleInfosWithOptions(request as! ListSelectionSkuSaleInfosRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryChildDivisionCodeWithOptions(_ request: QueryChildDivisionCodeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryChildDivisionCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryChildDivisionCode",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v2/division/commands/queryChildDivisionCode",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryChildDivisionCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryChildDivisionCode(_ request: QueryChildDivisionCodeRequest) async throws -> QueryChildDivisionCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryChildDivisionCodeWithOptions(request as! QueryChildDivisionCodeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrdersWithOptions(_ request: QueryOrdersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOrdersResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryOrders",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v2/orders/commands/query",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOrdersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrders(_ request: QueryOrdersRequest) async throws -> QueryOrdersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryOrdersWithOptions(request as! QueryOrdersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renderPurchaseOrderWithOptions(_ request: RenderPurchaseOrderRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RenderPurchaseOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenderPurchaseOrder",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v2/purchaseOrders/commands/render",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenderPurchaseOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renderPurchaseOrder(_ request: RenderPurchaseOrderRequest) async throws -> RenderPurchaseOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await renderPurchaseOrderWithOptions(request as! RenderPurchaseOrderRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renderRefundOrderWithOptions(_ request: RenderRefundOrderRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RenderRefundOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenderRefundOrder",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v2/refunds/commands/render",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenderRefundOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renderRefundOrder(_ request: RenderRefundOrderRequest) async throws -> RenderRefundOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await renderRefundOrderWithOptions(request as! RenderRefundOrderRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
