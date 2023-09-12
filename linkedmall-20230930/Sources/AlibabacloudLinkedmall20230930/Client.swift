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
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v1/refunds/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(disputeId) + "/commands/cancel",
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
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v1/orders/commands/confirmDisburse",
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
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v1/refunds/command/createGoodsShippingNotice",
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
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v1/purchaseOrders",
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
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v1/refunds",
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
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v1/orders/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(orderId),
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
    public func getProductWithOptions(_ productId: String, _ request: GetProductRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProductResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.distributorShopId)) {
            query["distributorShopId"] = request.distributorShopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.divisionCode)) {
            query["divisionCode"] = request.divisionCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProduct",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v1/products/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(productId),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProductResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProduct(_ productId: String, _ request: GetProductRequest) async throws -> GetProductResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProductWithOptions(productId as! String, request as! GetProductRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProductSaleInfoWithOptions(_ productId: String, _ request: GetProductSaleInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProductSaleInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.distributorShopId)) {
            query["distributorShopId"] = request.distributorShopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.divisionCode)) {
            query["divisionCode"] = request.divisionCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProductSaleInfo",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v1/products/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(productId) + "/saleInfo",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProductSaleInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProductSaleInfo(_ productId: String, _ request: GetProductSaleInfoRequest) async throws -> GetProductSaleInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProductSaleInfoWithOptions(productId as! String, request as! GetProductSaleInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v1/purchaseOrders/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(purchaseOrderId) + "/status",
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
    public func getRefundOrderWithOptions(_ disputeId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRefundOrderResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRefundOrder",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v1/refunds/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(disputeId),
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
    public func getShopWithOptions(_ shopId: String, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetShopResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetShop",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v1/shops/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(shopId),
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetShopResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getShop(_ shopId: String) async throws -> GetShopResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getShopWithOptions(shopId as! String, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v1/orders/" + AlibabaCloudOpenApiUtil.Client.getEncodeParam(orderId) + "/logisticsOrders",
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
    public func listProductGeneralBillsWithOptions(_ request: ListProductGeneralBillsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProductGeneralBillsResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProductGeneralBills",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v1/productGeneralBills",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProductGeneralBillsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductGeneralBills(_ request: ListProductGeneralBillsRequest) async throws -> ListProductGeneralBillsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProductGeneralBillsWithOptions(request as! ListProductGeneralBillsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductSaleInfosWithOptions(_ request: ListProductSaleInfosRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProductSaleInfosResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProductSaleInfos",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v1/products/saleInfo/commands/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProductSaleInfosResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductSaleInfos(_ request: ListProductSaleInfosRequest) async throws -> ListProductSaleInfosResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProductSaleInfosWithOptions(request as! ListProductSaleInfosRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductsWithOptions(_ request: ListProductsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProductsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.distributorShopId)) {
            query["distributorShopId"] = request.distributorShopId ?? "";
        }
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
            "action": "ListProducts",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v1/products",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProductsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProducts(_ request: ListProductsRequest) async throws -> ListProductsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProductsWithOptions(request as! ListProductsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listShopsWithOptions(_ request: ListShopsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListShopsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channelSupplierId)) {
            query["channelSupplierId"] = request.channelSupplierId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            query["endDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.shopId)) {
            query["shopId"] = request.shopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shopName)) {
            query["shopName"] = request.shopName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            query["startDate"] = request.startDate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListShops",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v1/shops",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListShopsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listShops(_ request: ListShopsRequest) async throws -> ListShopsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listShopsWithOptions(request as! ListShopsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSkuSaleInfosWithOptions(_ request: ListSkuSaleInfosRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSkuSaleInfosResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSkuSaleInfos",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v1/skus/saleInfo/commands/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSkuSaleInfosResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSkuSaleInfos(_ request: ListSkuSaleInfosRequest) async throws -> ListSkuSaleInfosResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSkuSaleInfosWithOptions(request as! ListSkuSaleInfosRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
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
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v1/division/commands/queryChildDivisionCode",
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
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v1/orders/commands/query",
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
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v1/purchaseOrders/commands/render",
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
            "pathname": "/opensaas-s2b/opensaas-s2b-biz-trade/v1/refunds/commands/render",
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
