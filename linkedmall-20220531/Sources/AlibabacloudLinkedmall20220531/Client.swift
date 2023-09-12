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
    public func applyCreateDistributionOrderWithOptions(_ tmpReq: ApplyCreateDistributionOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyCreateDistributionOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ApplyCreateDistributionOrderShrinkRequest = ApplyCreateDistributionOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.itemInfoLists)) {
            request.itemInfoListsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.itemInfoLists, "ItemInfoLists", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.buyerId)) {
            body["BuyerId"] = request.buyerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryAddress)) {
            body["DeliveryAddress"] = request.deliveryAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributionOutTradeId)) {
            body["DistributionOutTradeId"] = request.distributionOutTradeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributionSupplierId)) {
            body["DistributionSupplierId"] = request.distributionSupplierId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extInfo)) {
            body["ExtInfo"] = request.extInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemInfoListsShrink)) {
            body["ItemInfoLists"] = request.itemInfoListsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyCreateDistributionOrder",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyCreateDistributionOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyCreateDistributionOrder(_ request: ApplyCreateDistributionOrderRequest) async throws -> ApplyCreateDistributionOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await applyCreateDistributionOrderWithOptions(request as! ApplyCreateDistributionOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyRefund4DistributionWithOptions(_ tmpReq: ApplyRefund4DistributionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyRefund4DistributionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ApplyRefund4DistributionShrinkRequest = ApplyRefund4DistributionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.leavePictureLists)) {
            request.leavePictureListsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.leavePictureLists, "LeavePictureLists", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyReasonTextId)) {
            body["ApplyReasonTextId"] = request.applyReasonTextId!;
        }
        if (!TeaUtils.Client.isUnset(request.applyRefundCount)) {
            body["ApplyRefundCount"] = request.applyRefundCount!;
        }
        if (!TeaUtils.Client.isUnset(request.applyRefundFee)) {
            body["ApplyRefundFee"] = request.applyRefundFee!;
        }
        if (!TeaUtils.Client.isUnset(request.bizClaimType)) {
            body["BizClaimType"] = request.bizClaimType!;
        }
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.goodsStatus)) {
            body["GoodsStatus"] = request.goodsStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.leaveMessage)) {
            body["LeaveMessage"] = request.leaveMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.leavePictureListsShrink)) {
            body["LeavePictureLists"] = request.leavePictureListsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subDistributionOrderId)) {
            body["SubDistributionOrderId"] = request.subDistributionOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyRefund4Distribution",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyRefund4DistributionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyRefund4Distribution(_ request: ApplyRefund4DistributionRequest) async throws -> ApplyRefund4DistributionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await applyRefund4DistributionWithOptions(request as! ApplyRefund4DistributionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelDistributionTradeWithOptions(_ request: CancelDistributionTradeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelDistributionTradeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.distributionTradeId)) {
            body["DistributionTradeId"] = request.distributionTradeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelDistributionTrade",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelDistributionTradeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelDistributionTrade(_ request: CancelDistributionTradeRequest) async throws -> CancelDistributionTradeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelDistributionTradeWithOptions(request as! CancelDistributionTradeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelRefund4DistributionWithOptions(_ request: CancelRefund4DistributionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelRefund4DistributionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.disputeId)) {
            body["DisputeId"] = request.disputeId!;
        }
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subDistributionOrderId)) {
            body["SubDistributionOrderId"] = request.subDistributionOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelRefund4Distribution",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelRefund4DistributionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelRefund4Distribution(_ request: CancelRefund4DistributionRequest) async throws -> CancelRefund4DistributionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelRefund4DistributionWithOptions(request as! CancelRefund4DistributionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmDisburse4DistributionWithOptions(_ request: ConfirmDisburse4DistributionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfirmDisburse4DistributionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.distributionTradeId)) {
            body["DistributionTradeId"] = request.distributionTradeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mainDistributionOrderId)) {
            body["MainDistributionOrderId"] = request.mainDistributionOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfirmDisburse4Distribution",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfirmDisburse4DistributionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmDisburse4Distribution(_ request: ConfirmDisburse4DistributionRequest) async throws -> ConfirmDisburse4DistributionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await confirmDisburse4DistributionWithOptions(request as! ConfirmDisburse4DistributionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initApplyRefund4DistributionWithOptions(_ request: InitApplyRefund4DistributionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InitApplyRefund4DistributionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizClaimType)) {
            body["BizClaimType"] = request.bizClaimType!;
        }
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.goodsStatus)) {
            body["GoodsStatus"] = request.goodsStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.subDistributionOrderId)) {
            body["SubDistributionOrderId"] = request.subDistributionOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InitApplyRefund4Distribution",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InitApplyRefund4DistributionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initApplyRefund4Distribution(_ request: InitApplyRefund4DistributionRequest) async throws -> InitApplyRefund4DistributionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await initApplyRefund4DistributionWithOptions(request as! InitApplyRefund4DistributionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initModifyRefund4DistributionWithOptions(_ request: InitModifyRefund4DistributionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InitModifyRefund4DistributionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizClaimType)) {
            body["BizClaimType"] = request.bizClaimType!;
        }
        if (!TeaUtils.Client.isUnset(request.disputeId)) {
            body["DisputeId"] = request.disputeId!;
        }
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subDistributionOrderId)) {
            body["SubDistributionOrderId"] = request.subDistributionOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InitModifyRefund4Distribution",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InitModifyRefund4DistributionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initModifyRefund4Distribution(_ request: InitModifyRefund4DistributionRequest) async throws -> InitModifyRefund4DistributionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await initModifyRefund4DistributionWithOptions(request as! InitModifyRefund4DistributionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDistributionItemWithOptions(_ request: ListDistributionItemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDistributionItemResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.distributionMallId)) {
            body["DistributionMallId"] = request.distributionMallId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemStatus)) {
            body["ItemStatus"] = request.itemStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.lmItemId)) {
            body["LmItemId"] = request.lmItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDistributionItem",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDistributionItemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDistributionItem(_ request: ListDistributionItemRequest) async throws -> ListDistributionItemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDistributionItemWithOptions(request as! ListDistributionItemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDistributionItemWithoutCacheWithOptions(_ request: ListDistributionItemWithoutCacheRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDistributionItemWithoutCacheResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.distributionMallId)) {
            body["DistributionMallId"] = request.distributionMallId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemStatus)) {
            body["ItemStatus"] = request.itemStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.lmItemId)) {
            body["LmItemId"] = request.lmItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDistributionItemWithoutCache",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDistributionItemWithoutCacheResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDistributionItemWithoutCache(_ request: ListDistributionItemWithoutCacheRequest) async throws -> ListDistributionItemWithoutCacheResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDistributionItemWithoutCacheWithOptions(request as! ListDistributionItemWithoutCacheRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDistributionMallWithOptions(_ request: ListDistributionMallRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDistributionMallResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channelSupplierId)) {
            body["ChannelSupplierId"] = request.channelSupplierId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributionMallId)) {
            body["DistributionMallId"] = request.distributionMallId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributionMallName)) {
            body["DistributionMallName"] = request.distributionMallName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            body["EndDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            body["StartDate"] = request.startDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDistributionMall",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDistributionMallResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDistributionMall(_ request: ListDistributionMallRequest) async throws -> ListDistributionMallResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDistributionMallWithOptions(request as! ListDistributionMallRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyRefund4DistributionWithOptions(_ tmpReq: ModifyRefund4DistributionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyRefund4DistributionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyRefund4DistributionShrinkRequest = ModifyRefund4DistributionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.leavePictureLists)) {
            request.leavePictureListsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.leavePictureLists, "LeavePictureLists", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyReasonTextId)) {
            body["ApplyReasonTextId"] = request.applyReasonTextId!;
        }
        if (!TeaUtils.Client.isUnset(request.applyRefundCount)) {
            body["ApplyRefundCount"] = request.applyRefundCount!;
        }
        if (!TeaUtils.Client.isUnset(request.applyRefundFee)) {
            body["ApplyRefundFee"] = request.applyRefundFee!;
        }
        if (!TeaUtils.Client.isUnset(request.bizClaimType)) {
            body["BizClaimType"] = request.bizClaimType!;
        }
        if (!TeaUtils.Client.isUnset(request.disputeId)) {
            body["DisputeId"] = request.disputeId!;
        }
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.goodsStatus)) {
            body["GoodsStatus"] = request.goodsStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.leaveMessage)) {
            body["LeaveMessage"] = request.leaveMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.leavePictureListsShrink)) {
            body["LeavePictureLists"] = request.leavePictureListsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subDistributionOrderId)) {
            body["SubDistributionOrderId"] = request.subDistributionOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyRefund4Distribution",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyRefund4DistributionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyRefund4Distribution(_ request: ModifyRefund4DistributionRequest) async throws -> ModifyRefund4DistributionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyRefund4DistributionWithOptions(request as! ModifyRefund4DistributionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryChildDivisionCodeByIdWithOptions(_ request: QueryChildDivisionCodeByIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryChildDivisionCodeByIdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.divisionCode)) {
            body["DivisionCode"] = request.divisionCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryChildDivisionCodeById",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryChildDivisionCodeByIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryChildDivisionCodeById(_ request: QueryChildDivisionCodeByIdRequest) async throws -> QueryChildDivisionCodeByIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryChildDivisionCodeByIdWithOptions(request as! QueryChildDivisionCodeByIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDistributionBillDetailWithOptions(_ request: QueryDistributionBillDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDistributionBillDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billId)) {
            body["BillId"] = request.billId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.billPeriod)) {
            body["BillPeriod"] = request.billPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.billStatus)) {
            body["BillStatus"] = request.billStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributionMallId)) {
            body["DistributionMallId"] = request.distributionMallId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributionMallName)) {
            body["DistributionMallName"] = request.distributionMallName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDistributionBillDetail",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDistributionBillDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDistributionBillDetail(_ request: QueryDistributionBillDetailRequest) async throws -> QueryDistributionBillDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDistributionBillDetailWithOptions(request as! QueryDistributionBillDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDistributionMallWithOptions(_ request: QueryDistributionMallRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDistributionMallResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.distributionMallId)) {
            body["DistributionMallId"] = request.distributionMallId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDistributionMall",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDistributionMallResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDistributionMall(_ request: QueryDistributionMallRequest) async throws -> QueryDistributionMallResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDistributionMallWithOptions(request as! QueryDistributionMallRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDistributionTradeStatusWithOptions(_ request: QueryDistributionTradeStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDistributionTradeStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.distributionSupplierId)) {
            body["DistributionSupplierId"] = request.distributionSupplierId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributionTradeId)) {
            body["DistributionTradeId"] = request.distributionTradeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDistributionTradeStatus",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDistributionTradeStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDistributionTradeStatus(_ request: QueryDistributionTradeStatusRequest) async throws -> QueryDistributionTradeStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDistributionTradeStatusWithOptions(request as! QueryDistributionTradeStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryItemDetailWithOptions(_ request: QueryItemDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryItemDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.distributionMallId)) {
            body["DistributionMallId"] = request.distributionMallId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmItemId)) {
            body["LmItemId"] = request.lmItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryItemDetail",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryItemDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryItemDetail(_ request: QueryItemDetailRequest) async throws -> QueryItemDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryItemDetailWithOptions(request as! QueryItemDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryItemDetailWithDivisionWithOptions(_ request: QueryItemDetailWithDivisionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryItemDetailWithDivisionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.distributionMallId)) {
            body["DistributionMallId"] = request.distributionMallId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.divisionCode)) {
            body["DivisionCode"] = request.divisionCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmItemId)) {
            body["LmItemId"] = request.lmItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryItemDetailWithDivision",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryItemDetailWithDivisionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryItemDetailWithDivision(_ request: QueryItemDetailWithDivisionRequest) async throws -> QueryItemDetailWithDivisionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryItemDetailWithDivisionWithOptions(request as! QueryItemDetailWithDivisionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryItemGuideRetailPriceWithOptions(_ tmpReq: QueryItemGuideRetailPriceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryItemGuideRetailPriceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryItemGuideRetailPriceShrinkRequest = QueryItemGuideRetailPriceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.lmItemIds)) {
            request.lmItemIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.lmItemIds, "LmItemIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.distributionMallId)) {
            body["DistributionMallId"] = request.distributionMallId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmItemIdsShrink)) {
            body["LmItemIds"] = request.lmItemIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryItemGuideRetailPrice",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryItemGuideRetailPriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryItemGuideRetailPrice(_ request: QueryItemGuideRetailPriceRequest) async throws -> QueryItemGuideRetailPriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryItemGuideRetailPriceWithOptions(request as! QueryItemGuideRetailPriceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLogistics4DistributionWithOptions(_ request: QueryLogistics4DistributionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryLogistics4DistributionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mainDistributionOrderId)) {
            body["MainDistributionOrderId"] = request.mainDistributionOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            body["RequestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryLogistics4Distribution",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryLogistics4DistributionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLogistics4Distribution(_ request: QueryLogistics4DistributionRequest) async throws -> QueryLogistics4DistributionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryLogistics4DistributionWithOptions(request as! QueryLogistics4DistributionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMallCategoryListWithOptions(_ request: QueryMallCategoryListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMallCategoryListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categoryId)) {
            body["CategoryId"] = request.categoryId!;
        }
        if (!TeaUtils.Client.isUnset(request.distributionMallId)) {
            body["DistributionMallId"] = request.distributionMallId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMallCategoryList",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMallCategoryListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMallCategoryList(_ request: QueryMallCategoryListRequest) async throws -> QueryMallCategoryListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMallCategoryListWithOptions(request as! QueryMallCategoryListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderDetail4DistributionWithOptions(_ request: QueryOrderDetail4DistributionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOrderDetail4DistributionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mainDistributionOrderId)) {
            body["MainDistributionOrderId"] = request.mainDistributionOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryOrderDetail4Distribution",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOrderDetail4DistributionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderDetail4Distribution(_ request: QueryOrderDetail4DistributionRequest) async throws -> QueryOrderDetail4DistributionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryOrderDetail4DistributionWithOptions(request as! QueryOrderDetail4DistributionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderList4DistributionWithOptions(_ request: QueryOrderList4DistributionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOrderList4DistributionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterOption)) {
            body["FilterOption"] = request.filterOption ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryOrderList4Distribution",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOrderList4DistributionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderList4Distribution(_ request: QueryOrderList4DistributionRequest) async throws -> QueryOrderList4DistributionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryOrderList4DistributionWithOptions(request as! QueryOrderList4DistributionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRefundApplicationDetail4DistributionWithOptions(_ request: QueryRefundApplicationDetail4DistributionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRefundApplicationDetail4DistributionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subDistributionOrderId)) {
            body["SubDistributionOrderId"] = request.subDistributionOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRefundApplicationDetail4Distribution",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRefundApplicationDetail4DistributionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRefundApplicationDetail4Distribution(_ request: QueryRefundApplicationDetail4DistributionRequest) async throws -> QueryRefundApplicationDetail4DistributionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRefundApplicationDetail4DistributionWithOptions(request as! QueryRefundApplicationDetail4DistributionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renderDistributionOrderWithOptions(_ tmpReq: RenderDistributionOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenderDistributionOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RenderDistributionOrderShrinkRequest = RenderDistributionOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.itemInfoLists)) {
            request.itemInfoListsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.itemInfoLists, "ItemInfoLists", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.buyerId)) {
            body["BuyerId"] = request.buyerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryAddress)) {
            body["DeliveryAddress"] = request.deliveryAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributionSupplierId)) {
            body["DistributionSupplierId"] = request.distributionSupplierId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extInfo)) {
            body["ExtInfo"] = request.extInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemInfoListsShrink)) {
            body["ItemInfoLists"] = request.itemInfoListsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenderDistributionOrder",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenderDistributionOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renderDistributionOrder(_ request: RenderDistributionOrderRequest) async throws -> RenderDistributionOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renderDistributionOrderWithOptions(request as! RenderDistributionOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitReturnGoodLogistics4DistributionWithOptions(_ request: SubmitReturnGoodLogistics4DistributionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitReturnGoodLogistics4DistributionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cpCode)) {
            body["CpCode"] = request.cpCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disputeId)) {
            body["DisputeId"] = request.disputeId!;
        }
        if (!TeaUtils.Client.isUnset(request.distributorId)) {
            body["DistributorId"] = request.distributorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logisticsNo)) {
            body["LogisticsNo"] = request.logisticsNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subDistributionOrderId)) {
            body["SubDistributionOrderId"] = request.subDistributionOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitReturnGoodLogistics4Distribution",
            "version": "2022-05-31",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitReturnGoodLogistics4DistributionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitReturnGoodLogistics4Distribution(_ request: SubmitReturnGoodLogistics4DistributionRequest) async throws -> SubmitReturnGoodLogistics4DistributionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitReturnGoodLogistics4DistributionWithOptions(request as! SubmitReturnGoodLogistics4DistributionRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
