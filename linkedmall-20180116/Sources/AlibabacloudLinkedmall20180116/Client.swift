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
    public func addAddressWithOptions(_ request: AddAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addressInfo)) {
            body["AddressInfo"] = request.addressInfo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddAddress",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addAddress(_ request: AddAddressRequest) async throws -> AddAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addAddressWithOptions(request as! AddAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addItemLimitRuleWithOptions(_ request: AddItemLimitRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddItemLimitRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginTime)) {
            query["BeginTime"] = request.beginTime!;
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.itemId)) {
            query["ItemId"] = request.itemId!;
        }
        if (!TeaUtils.Client.isUnset(request.lmActivityId)) {
            query["LmActivityId"] = request.lmActivityId!;
        }
        if (!TeaUtils.Client.isUnset(request.lmItemId)) {
            query["LmItemId"] = request.lmItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType!;
        }
        if (!TeaUtils.Client.isUnset(request.subBizCode)) {
            query["SubBizCode"] = request.subBizCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.upperNum)) {
            query["UpperNum"] = request.upperNum!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddItemLimitRule",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddItemLimitRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addItemLimitRule(_ request: AddItemLimitRuleRequest) async throws -> AddItemLimitRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addItemLimitRuleWithOptions(request as! AddItemLimitRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addItemToSubBizsWithOptions(_ tmpReq: AddItemToSubBizsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddItemToSubBizsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddItemToSubBizsShrinkRequest = AddItemToSubBizsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.subBizIds)) {
            request.subBizIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.subBizIds, "SubBizIds", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemId)) {
            body["ItemId"] = request.itemId!;
        }
        if (!TeaUtils.Client.isUnset(request.lmItemId)) {
            body["LmItemId"] = request.lmItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subBizIdsShrink)) {
            body["SubBizIds"] = request.subBizIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddItemToSubBizs",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddItemToSubBizsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addItemToSubBizs(_ request: AddItemToSubBizsRequest) async throws -> AddItemToSubBizsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addItemToSubBizsWithOptions(request as! AddItemToSubBizsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addSupplierNewItemsWithOptions(_ request: AddSupplierNewItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddSupplierNewItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemList)) {
            query["ItemList"] = request.itemList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddSupplierNewItems",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddSupplierNewItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addSupplierNewItems(_ request: AddSupplierNewItemsRequest) async throws -> AddSupplierNewItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addSupplierNewItemsWithOptions(request as! AddSupplierNewItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyRefundWithOptions(_ request: ApplyRefundRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyRefundResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applyReasonTextId)) {
            query["ApplyReasonTextId"] = request.applyReasonTextId!;
        }
        if (!TeaUtils.Client.isUnset(request.applyRefundCount)) {
            query["ApplyRefundCount"] = request.applyRefundCount!;
        }
        if (!TeaUtils.Client.isUnset(request.applyRefundFee)) {
            query["ApplyRefundFee"] = request.applyRefundFee!;
        }
        if (!TeaUtils.Client.isUnset(request.bizClaimType)) {
            query["BizClaimType"] = request.bizClaimType!;
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.goodsStatus)) {
            query["GoodsStatus"] = request.goodsStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.subLmOrderId)) {
            query["SubLmOrderId"] = request.subLmOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.leaveMessage)) {
            body["LeaveMessage"] = request.leaveMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.leavePictureList)) {
            body["LeavePictureList"] = request.leavePictureList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyRefund",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyRefundResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyRefund(_ request: ApplyRefundRequest) async throws -> ApplyRefundResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await applyRefundWithOptions(request as! ApplyRefundRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchRegistAnonymousTbAccountWithOptions(_ request: BatchRegistAnonymousTbAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchRegistAnonymousTbAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idJsonList)) {
            query["IdJsonList"] = request.idJsonList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchRegistAnonymousTbAccount",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchRegistAnonymousTbAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchRegistAnonymousTbAccount(_ request: BatchRegistAnonymousTbAccountRequest) async throws -> BatchRegistAnonymousTbAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchRegistAnonymousTbAccountWithOptions(request as! BatchRegistAnonymousTbAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelOrderWithOptions(_ request: CancelOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmOrderId)) {
            query["LmOrderId"] = request.lmOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelOrder",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelOrder(_ request: CancelOrderRequest) async throws -> CancelOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelOrderWithOptions(request as! CancelOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelRefundWithOptions(_ request: CancelRefundRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelRefundResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disputeId)) {
            query["DisputeId"] = request.disputeId!;
        }
        if (!TeaUtils.Client.isUnset(request.subLmOrderId)) {
            query["SubLmOrderId"] = request.subLmOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelRefund",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelRefundResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelRefund(_ request: CancelRefundRequest) async throws -> CancelRefundResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelRefundWithOptions(request as! CancelRefundRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmDisburseWithOptions(_ request: ConfirmDisburseRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfirmDisburseResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmOrderId)) {
            query["LmOrderId"] = request.lmOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfirmDisburse",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfirmDisburseResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmDisburse(_ request: ConfirmDisburseRequest) async throws -> ConfirmDisburseResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await confirmDisburseWithOptions(request as! ConfirmDisburseRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMovieTicketOrderWithOptions(_ request: CreateMovieTicketOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMovieTicketOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMovieTicketOrder",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMovieTicketOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMovieTicketOrder(_ request: CreateMovieTicketOrderRequest) async throws -> CreateMovieTicketOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMovieTicketOrderWithOptions(request as! CreateMovieTicketOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrderWithOptions(_ request: CreateOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buyerMessageMap)) {
            query["BuyerMessageMap"] = request.buyerMessageMap ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryAddress)) {
            query["DeliveryAddress"] = request.deliveryAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extJson)) {
            query["ExtJson"] = request.extJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemId)) {
            query["ItemId"] = request.itemId!;
        }
        if (!TeaUtils.Client.isUnset(request.itemList)) {
            query["ItemList"] = request.itemList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lmItemId)) {
            query["LmItemId"] = request.lmItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderExpireTime)) {
            query["OrderExpireTime"] = request.orderExpireTime!;
        }
        if (!TeaUtils.Client.isUnset(request.outTradeId)) {
            query["OutTradeId"] = request.outTradeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quantity)) {
            query["Quantity"] = request.quantity!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalAmount)) {
            query["TotalAmount"] = request.totalAmount!;
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOrder",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrder(_ request: CreateOrderRequest) async throws -> CreateOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createOrderWithOptions(request as! CreateOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrderPayUrlForOutDiscountWithOptions(_ request: CreateOrderPayUrlForOutDiscountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOrderPayUrlForOutDiscountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.buyInfo)) {
            body["BuyInfo"] = request.buyInfo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOrderPayUrlForOutDiscount",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOrderPayUrlForOutDiscountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrderPayUrlForOutDiscount(_ request: CreateOrderPayUrlForOutDiscountRequest) async throws -> CreateOrderPayUrlForOutDiscountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createOrderPayUrlForOutDiscountWithOptions(request as! CreateOrderPayUrlForOutDiscountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrderTransactionDetailFileWithOptions(_ request: CreateOrderTransactionDetailFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOrderTransactionDetailFileResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelName)) {
            body["ChannelName"] = request.channelName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createEndTime)) {
            body["CreateEndTime"] = request.createEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createStartTime)) {
            body["CreateStartTime"] = request.createStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemId)) {
            body["ItemId"] = request.itemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmShopId)) {
            body["LmShopId"] = request.lmShopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderStatus)) {
            body["OrderStatus"] = request.orderStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payStatus)) {
            body["PayStatus"] = request.payStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paymentEndTime)) {
            body["PaymentEndTime"] = request.paymentEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paymentStartTime)) {
            body["PaymentStartTime"] = request.paymentStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poCode)) {
            body["PoCode"] = request.poCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refundEndTime)) {
            body["RefundEndTime"] = request.refundEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refundStartTime)) {
            body["RefundStartTime"] = request.refundStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sellerId)) {
            body["SellerId"] = request.sellerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sellerName)) {
            body["SellerName"] = request.sellerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.settlementNode)) {
            body["SettlementNode"] = request.settlementNode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.shopName)) {
            body["ShopName"] = request.shopName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tbMainOrderId)) {
            body["TbMainOrderId"] = request.tbMainOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantName)) {
            body["TenantName"] = request.tenantName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOrderTransactionDetailFile",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOrderTransactionDetailFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrderTransactionDetailFile(_ request: CreateOrderTransactionDetailFileRequest) async throws -> CreateOrderTransactionDetailFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createOrderTransactionDetailFileWithOptions(request as! CreateOrderTransactionDetailFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrderV2WithOptions(_ request: CreateOrderV2Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOrderV2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buyerMessageMap)) {
            query["BuyerMessageMap"] = request.buyerMessageMap ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryAddress)) {
            query["DeliveryAddress"] = request.deliveryAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extJson)) {
            query["ExtJson"] = request.extJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemId)) {
            query["ItemId"] = request.itemId!;
        }
        if (!TeaUtils.Client.isUnset(request.itemList)) {
            query["ItemList"] = request.itemList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lmItemId)) {
            query["LmItemId"] = request.lmItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderExpireTime)) {
            query["OrderExpireTime"] = request.orderExpireTime!;
        }
        if (!TeaUtils.Client.isUnset(request.outTradeId)) {
            query["OutTradeId"] = request.outTradeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quantity)) {
            query["Quantity"] = request.quantity!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalAmount)) {
            query["TotalAmount"] = request.totalAmount!;
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOrderV2",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOrderV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOrderV2(_ request: CreateOrderV2Request) async throws -> CreateOrderV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createOrderV2WithOptions(request as! CreateOrderV2Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPayUrlWithOptions(_ request: CreatePayUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePayUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.buyInfo)) {
            body["BuyInfo"] = request.buyInfo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePayUrl",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePayUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPayUrl(_ request: CreatePayUrlRequest) async throws -> CreatePayUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPayUrlWithOptions(request as! CreatePayUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSettleConfirmWithOptions(_ request: CreateSettleConfirmRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSettleConfirmResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extInfo)) {
            body["ExtInfo"] = request.extInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantId)) {
            body["MerchantId"] = request.merchantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outRequestNo)) {
            body["OutRequestNo"] = request.outRequestNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outTradeNo)) {
            body["OutTradeNo"] = request.outTradeNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.settleInfo)) {
            body["SettleInfo"] = request.settleInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tradeNo)) {
            body["TradeNo"] = request.tradeNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSettleConfirm",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSettleConfirmResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSettleConfirm(_ request: CreateSettleConfirmRequest) async throws -> CreateSettleConfirmResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSettleConfirmWithOptions(request as! CreateSettleConfirmRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVirtualProductOrderWithOptions(_ request: CreateVirtualProductOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVirtualProductOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryAddress)) {
            query["DeliveryAddress"] = request.deliveryAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extJson)) {
            query["ExtJson"] = request.extJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemId)) {
            query["ItemId"] = request.itemId!;
        }
        if (!TeaUtils.Client.isUnset(request.itemList)) {
            query["ItemList"] = request.itemList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lmItemId)) {
            query["LmItemId"] = request.lmItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderExpireTime)) {
            query["OrderExpireTime"] = request.orderExpireTime!;
        }
        if (!TeaUtils.Client.isUnset(request.outTradeId)) {
            query["OutTradeId"] = request.outTradeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quantity)) {
            query["Quantity"] = request.quantity!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalAmount)) {
            query["TotalAmount"] = request.totalAmount!;
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVirtualProductOrder",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVirtualProductOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVirtualProductOrder(_ request: CreateVirtualProductOrderRequest) async throws -> CreateVirtualProductOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createVirtualProductOrderWithOptions(request as! CreateVirtualProductOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWithholdTradeWithOptions(_ request: CreateWithholdTradeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWithholdTradeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agreementNo)) {
            body["AgreementNo"] = request.agreementNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.body)) {
            body["Body"] = request.body ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buyerId)) {
            body["BuyerId"] = request.buyerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extInfo)) {
            body["ExtInfo"] = request.extInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.goodsDetail)) {
            body["GoodsDetail"] = request.goodsDetail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantId)) {
            body["MerchantId"] = request.merchantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outRequestNo)) {
            body["OutRequestNo"] = request.outRequestNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outTradeNo)) {
            body["OutTradeNo"] = request.outTradeNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.settleMode)) {
            body["SettleMode"] = request.settleMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subject)) {
            body["Subject"] = request.subject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalAmount)) {
            body["TotalAmount"] = request.totalAmount ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWithholdTrade",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWithholdTradeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWithholdTrade(_ request: CreateWithholdTradeRequest) async throws -> CreateWithholdTradeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createWithholdTradeWithOptions(request as! CreateWithholdTradeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deductUserPointWithOptions(_ tmpReq: DeductUserPointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeductUserPointResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeductUserPointShrinkRequest = DeductUserPointShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extInfo)) {
            request.extInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extInfo, "ExtInfo", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount!;
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idempotentId)) {
            query["IdempotentId"] = request.idempotentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.message)) {
            query["Message"] = request.message ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["Title"] = request.title ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extInfoShrink)) {
            body["ExtInfo"] = request.extInfoShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeductUserPoint",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeductUserPointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deductUserPoint(_ request: DeductUserPointRequest) async throws -> DeductUserPointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deductUserPointWithOptions(request as! DeductUserPointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBizItemsWithOptions(_ request: DeleteBizItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBizItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemIdList)) {
            query["ItemIdList"] = request.itemIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.subBizId)) {
            query["SubBizId"] = request.subBizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBizItems",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBizItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBizItems(_ request: DeleteBizItemsRequest) async throws -> DeleteBizItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteBizItemsWithOptions(request as! DeleteBizItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteItemLimitRuleWithOptions(_ request: DeleteItemLimitRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteItemLimitRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemId)) {
            query["ItemId"] = request.itemId!;
        }
        if (!TeaUtils.Client.isUnset(request.lmActivityId)) {
            query["LmActivityId"] = request.lmActivityId!;
        }
        if (!TeaUtils.Client.isUnset(request.lmItemId)) {
            query["LmItemId"] = request.lmItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId!;
        }
        if (!TeaUtils.Client.isUnset(request.subBizCode)) {
            query["SubBizCode"] = request.subBizCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteItemLimitRule",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteItemLimitRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteItemLimitRule(_ request: DeleteItemLimitRuleRequest) async throws -> DeleteItemLimitRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteItemLimitRuleWithOptions(request as! DeleteItemLimitRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func downloadCpsBillFileWithOptions(_ request: DownloadCpsBillFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DownloadCpsBillFileResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billId)) {
            body["BillId"] = request.billId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DownloadCpsBillFile",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DownloadCpsBillFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func downloadCpsBillFile(_ request: DownloadCpsBillFileRequest) async throws -> DownloadCpsBillFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await downloadCpsBillFileWithOptions(request as! DownloadCpsBillFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func downloadItemBillFileWithOptions(_ request: DownloadItemBillFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DownloadItemBillFileResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billId)) {
            body["BillId"] = request.billId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DownloadItemBillFile",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DownloadItemBillFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func downloadItemBillFile(_ request: DownloadItemBillFileRequest) async throws -> DownloadItemBillFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await downloadItemBillFileWithOptions(request as! DownloadItemBillFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func downloadOrderTransactionDetailFileWithOptions(_ request: DownloadOrderTransactionDetailFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DownloadOrderTransactionDetailFileResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordId)) {
            body["RecordId"] = request.recordId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DownloadOrderTransactionDetailFile",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DownloadOrderTransactionDetailFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func downloadOrderTransactionDetailFile(_ request: DownloadOrderTransactionDetailFileRequest) async throws -> DownloadOrderTransactionDetailFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await downloadOrderTransactionDetailFileWithOptions(request as! DownloadOrderTransactionDetailFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableOrderWithOptions(_ request: EnableOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extJson)) {
            query["ExtJson"] = request.extJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmOrderId)) {
            query["LmOrderId"] = request.lmOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outTradeId)) {
            query["OutTradeId"] = request.outTradeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableOrder",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableOrder(_ request: EnableOrderRequest) async throws -> EnableOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableOrderWithOptions(request as! EnableOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeNodeWithOptions(_ request: ExecuteNodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteNodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeId)) {
            query["NodeId"] = request.nodeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeInstanceId)) {
            query["NodeInstanceId"] = request.nodeInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processId)) {
            query["ProcessId"] = request.processId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processInstanceId)) {
            query["ProcessInstanceId"] = request.processInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestData)) {
            query["RequestData"] = request.requestData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteNode",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteNodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeNode(_ request: ExecuteNodeRequest) async throws -> ExecuteNodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await executeNodeWithOptions(request as! ExecuteNodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func freezeUserPointWithOptions(_ tmpReq: FreezeUserPointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FreezeUserPointResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: FreezeUserPointShrinkRequest = FreezeUserPointShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extInfo)) {
            request.extInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extInfo, "ExtInfo", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount!;
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idempotentId)) {
            query["IdempotentId"] = request.idempotentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.message)) {
            query["Message"] = request.message ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["Title"] = request.title ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extInfoShrink)) {
            body["ExtInfo"] = request.extInfoShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FreezeUserPoint",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FreezeUserPointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func freezeUserPoint(_ request: FreezeUserPointRequest) async throws -> FreezeUserPointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await freezeUserPointWithOptions(request as! FreezeUserPointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getActivityGameInfoWithOptions(_ tmpReq: GetActivityGameInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetActivityGameInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetActivityGameInfoShrinkRequest = GetActivityGameInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extInfo)) {
            request.extInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extInfo, "ExtInfo", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.activityId)) {
            query["ActivityId"] = request.activityId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gameId)) {
            query["GameId"] = request.gameId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extInfoShrink)) {
            body["ExtInfo"] = request.extInfoShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetActivityGameInfo",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetActivityGameInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getActivityGameInfo(_ request: GetActivityGameInfoRequest) async throws -> GetActivityGameInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getActivityGameInfoWithOptions(request as! GetActivityGameInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCategoryChainWithOptions(_ request: GetCategoryChainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCategoryChainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.categoryId)) {
            query["CategoryId"] = request.categoryId!;
        }
        if (!TeaUtils.Client.isUnset(request.itemId)) {
            query["ItemId"] = request.itemId!;
        }
        if (!TeaUtils.Client.isUnset(request.lmItemId)) {
            query["LmItemId"] = request.lmItemId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCategoryChain",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCategoryChainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCategoryChain(_ request: GetCategoryChainRequest) async throws -> GetCategoryChainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCategoryChainWithOptions(request as! GetCategoryChainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCategoryListWithOptions(_ request: GetCategoryListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCategoryListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.categoryId)) {
            query["CategoryId"] = request.categoryId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCategoryList",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCategoryListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCategoryList(_ request: GetCategoryListRequest) async throws -> GetCategoryListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCategoryListWithOptions(request as! GetCategoryListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomServiceUrlWithOptions(_ request: GetCustomServiceUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCustomServiceUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cuid)) {
            query["Cuid"] = request.cuid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nick)) {
            query["Nick"] = request.nick ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sellerId)) {
            query["SellerId"] = request.sellerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCustomServiceUrl",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCustomServiceUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomServiceUrl(_ request: GetCustomServiceUrlRequest) async throws -> GetCustomServiceUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCustomServiceUrlWithOptions(request as! GetCustomServiceUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGuidePageWithOptions(_ request: GetGuidePageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetGuidePageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetGuidePage",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetGuidePageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getGuidePage(_ request: GetGuidePageRequest) async throws -> GetGuidePageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getGuidePageWithOptions(request as! GetGuidePageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getItemPromotionWithOptions(_ request: GetItemPromotionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetItemPromotionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemId)) {
            query["ItemId"] = request.itemId!;
        }
        if (!TeaUtils.Client.isUnset(request.lmItemId)) {
            query["LmItemId"] = request.lmItemId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetItemPromotion",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetItemPromotionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getItemPromotion(_ request: GetItemPromotionRequest) async throws -> GetItemPromotionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getItemPromotionWithOptions(request as! GetItemPromotionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLoginPageWithOptions(_ request: GetLoginPageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLoginPageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.failUrl)) {
            body["FailUrl"] = request.failUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetUrl)) {
            body["TargetUrl"] = request.targetUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLoginPage",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLoginPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLoginPage(_ request: GetLoginPageRequest) async throws -> GetLoginPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLoginPageWithOptions(request as! GetLoginPageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSwitchUrlWithOptions(_ request: GetSwitchUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSwitchUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSwitchUrl",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSwitchUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSwitchUrl(_ request: GetSwitchUrlRequest) async throws -> GetSwitchUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSwitchUrlWithOptions(request as! GetSwitchUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserInfoWithOptions(_ request: GetUserInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appName)) {
            query["AppName"] = request.appName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userFlag)) {
            query["UserFlag"] = request.userFlag ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.queryJson)) {
            body["QueryJson"] = request.queryJson ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserInfo",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserInfo(_ request: GetUserInfoRequest) async throws -> GetUserInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserInfoWithOptions(request as! GetUserInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserTokenPageWithOptions(_ request: GetUserTokenPageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserTokenPageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserTokenPage",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserTokenPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserTokenPage(_ request: GetUserTokenPageRequest) async throws -> GetUserTokenPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUserTokenPageWithOptions(request as! GetUserTokenPageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWithholdSignPageUrlWithOptions(_ request: GetWithholdSignPageUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWithholdSignPageUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceType)) {
            body["DeviceType"] = request.deviceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extInfo)) {
            body["ExtInfo"] = request.extInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalAgreementNo)) {
            body["ExternalAgreementNo"] = request.externalAgreementNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.identityParameters)) {
            body["IdentityParameters"] = request.identityParameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantId)) {
            body["MerchantId"] = request.merchantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantServiceDescription)) {
            body["MerchantServiceDescription"] = request.merchantServiceDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantServiceName)) {
            body["MerchantServiceName"] = request.merchantServiceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyUrl)) {
            body["NotifyUrl"] = request.notifyUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outRequestNo)) {
            body["OutRequestNo"] = request.outRequestNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.returnUrl)) {
            body["ReturnUrl"] = request.returnUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWithholdSignPageUrl",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWithholdSignPageUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWithholdSignPageUrl(_ request: GetWithholdSignPageUrlRequest) async throws -> GetWithholdSignPageUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWithholdSignPageUrlWithOptions(request as! GetWithholdSignPageUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func giveUserPointWithOptions(_ tmpReq: GiveUserPointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GiveUserPointResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GiveUserPointShrinkRequest = GiveUserPointShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extInfo)) {
            request.extInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extInfo, "ExtInfo", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount!;
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idempotentId)) {
            query["IdempotentId"] = request.idempotentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.message)) {
            query["Message"] = request.message ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetBizUid)) {
            query["TargetBizUid"] = request.targetBizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["Title"] = request.title ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extInfoShrink)) {
            body["ExtInfo"] = request.extInfoShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GiveUserPoint",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GiveUserPointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func giveUserPoint(_ request: GiveUserPointRequest) async throws -> GiveUserPointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await giveUserPointWithOptions(request as! GiveUserPointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantPromotionToUserWithOptions(_ tmpReq: GrantPromotionToUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GrantPromotionToUserResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GrantPromotionToUserShrinkRequest = GrantPromotionToUserShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.body)) {
            request.bodyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.body, "body", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expireSeconds)) {
            query["ExpireSeconds"] = request.expireSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.grantMode)) {
            query["GrantMode"] = request.grantMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.grantWay)) {
            query["GrantWay"] = request.grantWay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idempotentId)) {
            query["IdempotentId"] = request.idempotentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionId)) {
            query["PromotionId"] = request.promotionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityCode)) {
            query["SecurityCode"] = request.securityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bodyShrink)) {
            body["body"] = request.bodyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GrantPromotionToUser",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GrantPromotionToUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantPromotionToUser(_ request: GrantPromotionToUserRequest) async throws -> GrantPromotionToUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await grantPromotionToUserWithOptions(request as! GrantPromotionToUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantUserPointWithOptions(_ tmpReq: GrantUserPointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GrantUserPointResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GrantUserPointShrinkRequest = GrantUserPointShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extInfo)) {
            request.extInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extInfo, "ExtInfo", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount!;
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idempotentId)) {
            query["IdempotentId"] = request.idempotentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.message)) {
            query["Message"] = request.message ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["Title"] = request.title ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extInfoShrink)) {
            body["ExtInfo"] = request.extInfoShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GrantUserPoint",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GrantUserPointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func grantUserPoint(_ request: GrantUserPointRequest) async throws -> GrantUserPointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await grantUserPointWithOptions(request as! GrantUserPointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initApplyRefundWithOptions(_ request: InitApplyRefundRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InitApplyRefundResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizClaimType)) {
            query["BizClaimType"] = request.bizClaimType!;
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.goodsStatus)) {
            query["GoodsStatus"] = request.goodsStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.subLmOrderId)) {
            query["SubLmOrderId"] = request.subLmOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InitApplyRefund",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InitApplyRefundResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initApplyRefund(_ request: InitApplyRefundRequest) async throws -> InitApplyRefundResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await initApplyRefundWithOptions(request as! InitApplyRefundRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initModifyRefundWithOptions(_ request: InitModifyRefundRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InitModifyRefundResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizClaimType)) {
            query["BizClaimType"] = request.bizClaimType!;
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disputeId)) {
            query["DisputeId"] = request.disputeId!;
        }
        if (!TeaUtils.Client.isUnset(request.goodsStatus)) {
            query["GoodsStatus"] = request.goodsStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.subLmOrderId)) {
            query["SubLmOrderId"] = request.subLmOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InitModifyRefund",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InitModifyRefundResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func initModifyRefund(_ request: InitModifyRefundRequest) async throws -> InitModifyRefundResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await initModifyRefundWithOptions(request as! InitModifyRefundRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listActivityAtmosphereWithOptions(_ request: ListActivityAtmosphereRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListActivityAtmosphereResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListActivityAtmosphere",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListActivityAtmosphereResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listActivityAtmosphere(_ request: ListActivityAtmosphereRequest) async throws -> ListActivityAtmosphereResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listActivityAtmosphereWithOptions(request as! ListActivityAtmosphereRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listActivityGameInfoWithOptions(_ request: ListActivityGameInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListActivityGameInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListActivityGameInfo",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListActivityGameInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listActivityGameInfo(_ request: ListActivityGameInfoRequest) async throws -> ListActivityGameInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listActivityGameInfoWithOptions(request as! ListActivityGameInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listItemActivitiesWithOptions(_ tmpReq: ListItemActivitiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListItemActivitiesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListItemActivitiesShrinkRequest = ListItemActivitiesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.itemIds)) {
            request.itemIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.itemIds, "ItemIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.lmItemIds)) {
            request.lmItemIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.lmItemIds, "LmItemIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemIdsShrink)) {
            query["ItemIds"] = request.itemIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmItemIdsShrink)) {
            query["LmItemIds"] = request.lmItemIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListItemActivities",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListItemActivitiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listItemActivities(_ request: ListItemActivitiesRequest) async throws -> ListItemActivitiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listItemActivitiesWithOptions(request as! ListItemActivitiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserGameProcessWithOptions(_ request: ListUserGameProcessRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserGameProcessResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserGameProcess",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserGameProcessResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserGameProcess(_ request: ListUserGameProcessRequest) async throws -> ListUserGameProcessResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUserGameProcessWithOptions(request as! ListUserGameProcessRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserPointRecordsWithOptions(_ request: ListUserPointRecordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserPointRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserPointRecords",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserPointRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserPointRecords(_ request: ListUserPointRecordsRequest) async throws -> ListUserPointRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUserPointRecordsWithOptions(request as! ListUserPointRecordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBasicAndBizItemsWithOptions(_ request: ModifyBasicAndBizItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyBasicAndBizItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subBizId)) {
            query["SubBizId"] = request.subBizId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.itemList)) {
            body["ItemList"] = request.itemList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyBasicAndBizItems",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyBasicAndBizItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBasicAndBizItems(_ request: ModifyBasicAndBizItemsRequest) async throws -> ModifyBasicAndBizItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyBasicAndBizItemsWithOptions(request as! ModifyBasicAndBizItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBizItemsWithOptions(_ request: ModifyBizItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyBizItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subBizId)) {
            query["SubBizId"] = request.subBizId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.itemList)) {
            body["ItemList"] = request.itemList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyBizItems",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyBizItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBizItems(_ request: ModifyBizItemsRequest) async throws -> ModifyBizItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyBizItemsWithOptions(request as! ModifyBizItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyItemLimitRuleWithOptions(_ request: ModifyItemLimitRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyItemLimitRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginTime)) {
            query["BeginTime"] = request.beginTime!;
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.itemId)) {
            query["ItemId"] = request.itemId!;
        }
        if (!TeaUtils.Client.isUnset(request.lmActivityId)) {
            query["LmActivityId"] = request.lmActivityId!;
        }
        if (!TeaUtils.Client.isUnset(request.lmItemId)) {
            query["LmItemId"] = request.lmItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType!;
        }
        if (!TeaUtils.Client.isUnset(request.subBizCode)) {
            query["SubBizCode"] = request.subBizCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.upperNum)) {
            query["UpperNum"] = request.upperNum!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyItemLimitRule",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyItemLimitRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyItemLimitRule(_ request: ModifyItemLimitRuleRequest) async throws -> ModifyItemLimitRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyItemLimitRuleWithOptions(request as! ModifyItemLimitRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyOrderDeliveryAddressWithOptions(_ request: ModifyOrderDeliveryAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyOrderDeliveryAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryAddress)) {
            query["DeliveryAddress"] = request.deliveryAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extJson)) {
            query["ExtJson"] = request.extJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmOrderId)) {
            query["LmOrderId"] = request.lmOrderId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyOrderDeliveryAddress",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyOrderDeliveryAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyOrderDeliveryAddress(_ request: ModifyOrderDeliveryAddressRequest) async throws -> ModifyOrderDeliveryAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyOrderDeliveryAddressWithOptions(request as! ModifyOrderDeliveryAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyRefundWithOptions(_ request: ModifyRefundRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyRefundResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.applyReasonTextId)) {
            query["ApplyReasonTextId"] = request.applyReasonTextId!;
        }
        if (!TeaUtils.Client.isUnset(request.applyRefundCount)) {
            query["ApplyRefundCount"] = request.applyRefundCount!;
        }
        if (!TeaUtils.Client.isUnset(request.applyRefundFee)) {
            query["ApplyRefundFee"] = request.applyRefundFee!;
        }
        if (!TeaUtils.Client.isUnset(request.bizClaimType)) {
            query["BizClaimType"] = request.bizClaimType!;
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disputeId)) {
            query["DisputeId"] = request.disputeId!;
        }
        if (!TeaUtils.Client.isUnset(request.goodsStatus)) {
            query["GoodsStatus"] = request.goodsStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.subLmOrderId)) {
            query["SubLmOrderId"] = request.subLmOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.leaveMessage)) {
            body["LeaveMessage"] = request.leaveMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.leavePictureList)) {
            body["LeavePictureList"] = request.leavePictureList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyRefund",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyRefundResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyRefund(_ request: ModifyRefundRequest) async throws -> ModifyRefundResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyRefundWithOptions(request as! ModifyRefundRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySettleAccountWithOptions(_ request: ModifySettleAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifySettleAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountChannel)) {
            body["AccountChannel"] = request.accountChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            body["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            body["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountPayType)) {
            body["AccountPayType"] = request.accountPayType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            body["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.countryOrAreaCode)) {
            body["CountryOrAreaCode"] = request.countryOrAreaCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currency)) {
            body["Currency"] = request.currency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extInfo)) {
            body["ExtInfo"] = request.extInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idempotentId)) {
            body["IdempotentId"] = request.idempotentId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifySettleAccount",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifySettleAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySettleAccount(_ request: ModifySettleAccountRequest) async throws -> ModifySettleAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifySettleAccountWithOptions(request as! ModifySettleAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySupplierPriceAndPriceCentWithOptions(_ request: ModifySupplierPriceAndPriceCentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifySupplierPriceAndPriceCentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmItemId)) {
            query["LmItemId"] = request.lmItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmShopId)) {
            query["LmShopId"] = request.lmShopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.priceCent)) {
            query["PriceCent"] = request.priceCent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skuId)) {
            query["SkuId"] = request.skuId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supplierPrice)) {
            query["SupplierPrice"] = request.supplierPrice ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifySupplierPriceAndPriceCent",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifySupplierPriceAndPriceCentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifySupplierPriceAndPriceCent(_ request: ModifySupplierPriceAndPriceCentRequest) async throws -> ModifySupplierPriceAndPriceCentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifySupplierPriceAndPriceCentWithOptions(request as! ModifySupplierPriceAndPriceCentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func notifyPayOrderStatusWithOptions(_ request: NotifyPayOrderStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> NotifyPayOrderStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount!;
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationDate)) {
            query["OperationDate"] = request.operationDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payTypes)) {
            query["PayTypes"] = request.payTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "NotifyPayOrderStatus",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(NotifyPayOrderStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func notifyPayOrderStatus(_ request: NotifyPayOrderStatusRequest) async throws -> NotifyPayOrderStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await notifyPayOrderStatusWithOptions(request as! NotifyPayOrderStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func notifyWithholdFundWithOptions(_ request: NotifyWithholdFundRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> NotifyWithholdFundResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount!;
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationDate)) {
            query["OperationDate"] = request.operationDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payTypes)) {
            query["PayTypes"] = request.payTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantOrderId)) {
            query["TenantOrderId"] = request.tenantOrderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "NotifyWithholdFund",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(NotifyWithholdFundResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func notifyWithholdFund(_ request: NotifyWithholdFundRequest) async throws -> NotifyWithholdFundResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await notifyWithholdFundWithOptions(request as! NotifyWithholdFundRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushUserGameProcessWithOptions(_ tmpReq: PushUserGameProcessRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PushUserGameProcessResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: PushUserGameProcessShrinkRequest = PushUserGameProcessShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extInfo)) {
            request.extInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extInfo, "ExtInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.body)) {
            request.bodyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.body, "body", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentStepId)) {
            query["CurrentStepId"] = request.currentStepId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processId)) {
            query["ProcessId"] = request.processId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extInfoShrink)) {
            body["ExtInfo"] = request.extInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bodyShrink)) {
            body["body"] = request.bodyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushUserGameProcess",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushUserGameProcessResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushUserGameProcess(_ request: PushUserGameProcessRequest) async throws -> PushUserGameProcessResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pushUserGameProcessWithOptions(request as! PushUserGameProcessRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryActivityItemsWithOptions(_ request: QueryActivityItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryActivityItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmActivityId)) {
            query["LmActivityId"] = request.lmActivityId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryActivityItems",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryActivityItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryActivityItems(_ request: QueryActivityItemsRequest) async throws -> QueryActivityItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryActivityItemsWithOptions(request as! QueryActivityItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAddressWithOptions(_ request: QueryAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.divisionCode)) {
            query["DivisionCode"] = request.divisionCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAddress",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAddress(_ request: QueryAddressRequest) async throws -> QueryAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAddressWithOptions(request as! QueryAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAddressDetailWithOptions(_ request: QueryAddressDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAddressDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addressInfo)) {
            query["AddressInfo"] = request.addressInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAddressDetail",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAddressDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAddressDetail(_ request: QueryAddressDetailRequest) async throws -> QueryAddressDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAddressDetailWithOptions(request as! QueryAddressDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAddressListWithOptions(_ request: QueryAddressListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAddressListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAddressList",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAddressListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAddressList(_ request: QueryAddressListRequest) async throws -> QueryAddressListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAddressListWithOptions(request as! QueryAddressListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAdvertisementSettleInfoWithOptions(_ request: QueryAdvertisementSettleInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAdvertisementSettleInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extInfo)) {
            query["ExtInfo"] = request.extInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mediaSettleDetailId)) {
            query["MediaSettleDetailId"] = request.mediaSettleDetailId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.settleNo)) {
            query["SettleNo"] = request.settleNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAdvertisementSettleInfo",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAdvertisementSettleInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAdvertisementSettleInfo(_ request: QueryAdvertisementSettleInfoRequest) async throws -> QueryAdvertisementSettleInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAdvertisementSettleInfoWithOptions(request as! QueryAdvertisementSettleInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAgreementWithOptions(_ request: QueryAgreementRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAgreementResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agreementNo)) {
            body["AgreementNo"] = request.agreementNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalAgreementNo)) {
            body["ExternalAgreementNo"] = request.externalAgreementNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantId)) {
            body["MerchantId"] = request.merchantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAgreement",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAgreementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAgreement(_ request: QueryAgreementRequest) async throws -> QueryAgreementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAgreementWithOptions(request as! QueryAgreementRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAllCinemasWithOptions(_ request: QueryAllCinemasRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAllCinemasResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cityCode)) {
            query["CityCode"] = request.cityCode!;
        }
        if (!TeaUtils.Client.isUnset(request.extJson)) {
            query["ExtJson"] = request.extJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAllCinemas",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAllCinemasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAllCinemas(_ request: QueryAllCinemasRequest) async throws -> QueryAllCinemasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAllCinemasWithOptions(request as! QueryAllCinemasRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAllCitiesWithOptions(_ tmpReq: QueryAllCitiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAllCitiesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryAllCitiesShrinkRequest = QueryAllCitiesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extJson)) {
            request.extJsonShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extJson, "ExtJson", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extJsonShrink)) {
            query["ExtJson"] = request.extJsonShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAllCities",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAllCitiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAllCities(_ request: QueryAllCitiesRequest) async throws -> QueryAllCitiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAllCitiesWithOptions(request as! QueryAllCitiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBatchRegistAnonymousTbAccountResultWithOptions(_ request: QueryBatchRegistAnonymousTbAccountResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryBatchRegistAnonymousTbAccountResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.batchId)) {
            query["BatchId"] = request.batchId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryBatchRegistAnonymousTbAccountResult",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryBatchRegistAnonymousTbAccountResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBatchRegistAnonymousTbAccountResult(_ request: QueryBatchRegistAnonymousTbAccountResultRequest) async throws -> QueryBatchRegistAnonymousTbAccountResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryBatchRegistAnonymousTbAccountResultWithOptions(request as! QueryBatchRegistAnonymousTbAccountResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBestSession4ItemsWithOptions(_ tmpReq: QueryBestSession4ItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryBestSession4ItemsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryBestSession4ItemsShrinkRequest = QueryBestSession4ItemsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.itemIds)) {
            request.itemIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.itemIds, "ItemIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.lmItemIds)) {
            request.lmItemIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.lmItemIds, "LmItemIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemIdsShrink)) {
            query["ItemIds"] = request.itemIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmItemIdsShrink)) {
            query["LmItemIds"] = request.lmItemIdsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryBestSession4Items",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryBestSession4ItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBestSession4Items(_ request: QueryBestSession4ItemsRequest) async throws -> QueryBestSession4ItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryBestSession4ItemsWithOptions(request as! QueryBestSession4ItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBizItemListWithOptions(_ tmpReq: QueryBizItemListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryBizItemListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryBizItemListShrinkRequest = QueryBizItemListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.itemIds)) {
            request.itemIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.itemIds, "ItemIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.lmItemIds)) {
            request.lmItemIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.lmItemIds, "LmItemIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.categoryId)) {
            query["CategoryId"] = request.categoryId!;
        }
        if (!TeaUtils.Client.isUnset(request.itemIdsShrink)) {
            query["ItemIds"] = request.itemIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmItemIdsShrink)) {
            query["LmItemIds"] = request.lmItemIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.subBizId)) {
            query["SubBizId"] = request.subBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryBizItemList",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryBizItemListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBizItemList(_ request: QueryBizItemListRequest) async throws -> QueryBizItemListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryBizItemListWithOptions(request as! QueryBizItemListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBizItemListV2WithOptions(_ tmpReq: QueryBizItemListV2Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryBizItemListV2Response {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryBizItemListV2ShrinkRequest = QueryBizItemListV2ShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.itemIds)) {
            request.itemIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.itemIds, "ItemIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.lmItemIds)) {
            request.lmItemIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.lmItemIds, "LmItemIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.categoryId)) {
            query["CategoryId"] = request.categoryId!;
        }
        if (!TeaUtils.Client.isUnset(request.itemIdsShrink)) {
            query["ItemIds"] = request.itemIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmItemIdsShrink)) {
            query["LmItemIds"] = request.lmItemIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.subBizId)) {
            query["SubBizId"] = request.subBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryBizItemListV2",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryBizItemListV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBizItemListV2(_ request: QueryBizItemListV2Request) async throws -> QueryBizItemListV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryBizItemListV2WithOptions(request as! QueryBizItemListV2Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBizItemListWithCacheWithOptions(_ tmpReq: QueryBizItemListWithCacheRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryBizItemListWithCacheResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryBizItemListWithCacheShrinkRequest = QueryBizItemListWithCacheShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.itemIds)) {
            request.itemIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.itemIds, "ItemIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.lmItemIds)) {
            request.lmItemIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.lmItemIds, "LmItemIds", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryBizItemListWithCache",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryBizItemListWithCacheResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBizItemListWithCache(_ request: QueryBizItemListWithCacheRequest) async throws -> QueryBizItemListWithCacheResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryBizItemListWithCacheWithOptions(request as! QueryBizItemListWithCacheRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBizItemsWithOptions(_ request: QueryBizItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryBizItemsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.subBizId)) {
            query["SubBizId"] = request.subBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryBizItems",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryBizItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBizItems(_ request: QueryBizItemsRequest) async throws -> QueryBizItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryBizItemsWithOptions(request as! QueryBizItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBizItemsWithActivityWithOptions(_ tmpReq: QueryBizItemsWithActivityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryBizItemsWithActivityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryBizItemsWithActivityShrinkRequest = QueryBizItemsWithActivityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.itemIds)) {
            request.itemIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.itemIds, "ItemIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.lmItemIds)) {
            request.lmItemIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.lmItemIds, "LmItemIds", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryBizItemsWithActivity",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryBizItemsWithActivityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBizItemsWithActivity(_ request: QueryBizItemsWithActivityRequest) async throws -> QueryBizItemsWithActivityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryBizItemsWithActivityWithOptions(request as! QueryBizItemsWithActivityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBudgetTicketItemListByBizIdWithOptions(_ request: QueryBudgetTicketItemListByBizIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryBudgetTicketItemListByBizIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.budgetTicketNo)) {
            query["BudgetTicketNo"] = request.budgetTicketNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryBudgetTicketItemListByBizId",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryBudgetTicketItemListByBizIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBudgetTicketItemListByBizId(_ request: QueryBudgetTicketItemListByBizIdRequest) async throws -> QueryBudgetTicketItemListByBizIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryBudgetTicketItemListByBizIdWithOptions(request as! QueryBudgetTicketItemListByBizIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryGuideItemGroupWithOptions(_ request: QueryGuideItemGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryGuideItemGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemState)) {
            query["ItemState"] = request.itemState ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryGuideItemGroup",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryGuideItemGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryGuideItemGroup(_ request: QueryGuideItemGroupRequest) async throws -> QueryGuideItemGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryGuideItemGroupWithOptions(request as! QueryGuideItemGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryGuideItemGroupForCrowdOperationWithOptions(_ request: QueryGuideItemGroupForCrowdOperationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryGuideItemGroupForCrowdOperationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemState)) {
            query["ItemState"] = request.itemState ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.userFlag)) {
            query["UserFlag"] = request.userFlag ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryGuideItemGroupForCrowdOperation",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryGuideItemGroupForCrowdOperationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryGuideItemGroupForCrowdOperation(_ request: QueryGuideItemGroupForCrowdOperationRequest) async throws -> QueryGuideItemGroupForCrowdOperationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryGuideItemGroupForCrowdOperationWithOptions(request as! QueryGuideItemGroupForCrowdOperationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryGuideItemGroupWithOutInventoryWithOptions(_ request: QueryGuideItemGroupWithOutInventoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryGuideItemGroupWithOutInventoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryGuideItemGroupWithOutInventory",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryGuideItemGroupWithOutInventoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryGuideItemGroupWithOutInventory(_ request: QueryGuideItemGroupWithOutInventoryRequest) async throws -> QueryGuideItemGroupWithOutInventoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryGuideItemGroupWithOutInventoryWithOptions(request as! QueryGuideItemGroupWithOutInventoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryHotMoviesWithOptions(_ request: QueryHotMoviesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryHotMoviesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cityCode)) {
            query["CityCode"] = request.cityCode!;
        }
        if (!TeaUtils.Client.isUnset(request.extJson)) {
            query["ExtJson"] = request.extJson ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryHotMovies",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryHotMoviesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryHotMovies(_ request: QueryHotMoviesRequest) async throws -> QueryHotMoviesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryHotMoviesWithOptions(request as! QueryHotMoviesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryInventoryOfItemsInBizItemGroupWithOptions(_ tmpReq: QueryInventoryOfItemsInBizItemGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryInventoryOfItemsInBizItemGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryInventoryOfItemsInBizItemGroupShrinkRequest = QueryInventoryOfItemsInBizItemGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.itemIds)) {
            request.itemIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.itemIds, "ItemIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.lmItemIds)) {
            request.lmItemIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.lmItemIds, "LmItemIds", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryInventoryOfItemsInBizItemGroup",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryInventoryOfItemsInBizItemGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryInventoryOfItemsInBizItemGroup(_ request: QueryInventoryOfItemsInBizItemGroupRequest) async throws -> QueryInventoryOfItemsInBizItemGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryInventoryOfItemsInBizItemGroupWithOptions(request as! QueryInventoryOfItemsInBizItemGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryItemDetailWithOptions(_ request: QueryItemDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryItemDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemId)) {
            query["ItemId"] = request.itemId!;
        }
        if (!TeaUtils.Client.isUnset(request.lmItemId)) {
            query["LmItemId"] = request.lmItemId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryItemDetail",
            "version": "2018-01-16",
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
    public func queryItemDetailInnerWithOptions(_ request: QueryItemDetailInnerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryItemDetailInnerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.divisionCode)) {
            query["DivisionCode"] = request.divisionCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemId)) {
            query["ItemId"] = request.itemId!;
        }
        if (!TeaUtils.Client.isUnset(request.lmItemId)) {
            query["LmItemId"] = request.lmItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryItemDetailInner",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryItemDetailInnerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryItemDetailInner(_ request: QueryItemDetailInnerRequest) async throws -> QueryItemDetailInnerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryItemDetailInnerWithOptions(request as! QueryItemDetailInnerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryItemDetailTeaWithOptions(_ request: QueryItemDetailTeaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryItemDetailTeaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemId)) {
            query["ItemId"] = request.itemId!;
        }
        if (!TeaUtils.Client.isUnset(request.lmItemId)) {
            query["LmItemId"] = request.lmItemId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryItemDetailTea",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryItemDetailTeaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryItemDetailTea(_ request: QueryItemDetailTeaRequest) async throws -> QueryItemDetailTeaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryItemDetailTeaWithOptions(request as! QueryItemDetailTeaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryItemInSubBizsWithOptions(_ tmpReq: QueryItemInSubBizsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryItemInSubBizsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryItemInSubBizsShrinkRequest = QueryItemInSubBizsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.subBizIds)) {
            request.subBizIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.subBizIds, "SubBizIds", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryItemInSubBizs",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryItemInSubBizsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryItemInSubBizs(_ request: QueryItemInSubBizsRequest) async throws -> QueryItemInSubBizsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryItemInSubBizsWithOptions(request as! QueryItemInSubBizsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryItemInventoryWithOptions(_ request: QueryItemInventoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryItemInventoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.divisionCode)) {
            query["DivisionCode"] = request.divisionCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemList)) {
            query["ItemList"] = request.itemList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryItemInventory",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryItemInventoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryItemInventory(_ request: QueryItemInventoryRequest) async throws -> QueryItemInventoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryItemInventoryWithOptions(request as! QueryItemInventoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryItemInventoryV2WithOptions(_ request: QueryItemInventoryV2Request, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryItemInventoryV2Response {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.divisionCode)) {
            query["DivisionCode"] = request.divisionCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemList)) {
            query["ItemList"] = request.itemList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryItemInventoryV2",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryItemInventoryV2Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryItemInventoryV2(_ request: QueryItemInventoryV2Request) async throws -> QueryItemInventoryV2Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryItemInventoryV2WithOptions(request as! QueryItemInventoryV2Request, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLogisticsWithOptions(_ request: QueryLogisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryLogisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmOrderId)) {
            query["LmOrderId"] = request.lmOrderId!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryLogistics",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryLogisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryLogistics(_ request: QueryLogisticsRequest) async throws -> QueryLogisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryLogisticsWithOptions(request as! QueryLogisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMediaSettleInfoWithOptions(_ request: QueryMediaSettleInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMediaSettleInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extInfo)) {
            query["ExtInfo"] = request.extInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mediaName)) {
            query["MediaName"] = request.mediaName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.settleNo)) {
            query["SettleNo"] = request.settleNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMediaSettleInfo",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMediaSettleInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMediaSettleInfo(_ request: QueryMediaSettleInfoRequest) async throws -> QueryMediaSettleInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMediaSettleInfoWithOptions(request as! QueryMediaSettleInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMessagesWithOptions(_ request: QueryMessagesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMessagesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extJson)) {
            query["ExtJson"] = request.extJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topic)) {
            query["Topic"] = request.topic ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMessages",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMessagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMessages(_ request: QueryMessagesRequest) async throws -> QueryMessagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMessagesWithOptions(request as! QueryMessagesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMovieCommentsWithOptions(_ request: QueryMovieCommentsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMovieCommentsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extJson)) {
            query["ExtJson"] = request.extJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.movieId)) {
            query["MovieId"] = request.movieId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMovieComments",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMovieCommentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMovieComments(_ request: QueryMovieCommentsRequest) async throws -> QueryMovieCommentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMovieCommentsWithOptions(request as! QueryMovieCommentsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMovieSchedulesWithOptions(_ request: QueryMovieSchedulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMovieSchedulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cinemaId)) {
            query["CinemaId"] = request.cinemaId!;
        }
        if (!TeaUtils.Client.isUnset(request.extJson)) {
            query["ExtJson"] = request.extJson ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMovieSchedules",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMovieSchedulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMovieSchedules(_ request: QueryMovieSchedulesRequest) async throws -> QueryMovieSchedulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMovieSchedulesWithOptions(request as! QueryMovieSchedulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMovieSeatsWithOptions(_ request: QueryMovieSeatsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMovieSeatsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extJson)) {
            query["ExtJson"] = request.extJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleId)) {
            query["ScheduleId"] = request.scheduleId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMovieSeats",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMovieSeatsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMovieSeats(_ request: QueryMovieSeatsRequest) async throws -> QueryMovieSeatsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMovieSeatsWithOptions(request as! QueryMovieSeatsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMovieTicketsWithOptions(_ request: QueryMovieTicketsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMovieTicketsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMovieTickets",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMovieTicketsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMovieTickets(_ request: QueryMovieTicketsRequest) async throws -> QueryMovieTicketsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMovieTicketsWithOptions(request as! QueryMovieTicketsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderAndPaymentListWithOptions(_ request: QueryOrderAndPaymentListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOrderAndPaymentListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterOption)) {
            query["FilterOption"] = request.filterOption ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryOrderAndPaymentList",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOrderAndPaymentListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderAndPaymentList(_ request: QueryOrderAndPaymentListRequest) async throws -> QueryOrderAndPaymentListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryOrderAndPaymentListWithOptions(request as! QueryOrderAndPaymentListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderCommissionRateWithOptions(_ request: QueryOrderCommissionRateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOrderCommissionRateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmOrderId)) {
            query["LmOrderId"] = request.lmOrderId!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryOrderCommissionRate",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOrderCommissionRateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderCommissionRate(_ request: QueryOrderCommissionRateRequest) async throws -> QueryOrderCommissionRateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryOrderCommissionRateWithOptions(request as! QueryOrderCommissionRateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderDetailInnerWithOptions(_ request: QueryOrderDetailInnerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOrderDetailInnerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterOption)) {
            query["FilterOption"] = request.filterOption ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryOrderDetailInner",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOrderDetailInnerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderDetailInner(_ request: QueryOrderDetailInnerRequest) async throws -> QueryOrderDetailInnerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryOrderDetailInnerWithOptions(request as! QueryOrderDetailInnerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderIdByPayIdWithOptions(_ request: QueryOrderIdByPayIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOrderIdByPayIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paymentId)) {
            query["PaymentId"] = request.paymentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryOrderIdByPayId",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOrderIdByPayIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderIdByPayId(_ request: QueryOrderIdByPayIdRequest) async throws -> QueryOrderIdByPayIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryOrderIdByPayIdWithOptions(request as! QueryOrderIdByPayIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderInfoAfterSaleWithOptions(_ request: QueryOrderInfoAfterSaleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOrderInfoAfterSaleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryOrderInfoAfterSale",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOrderInfoAfterSaleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderInfoAfterSale(_ request: QueryOrderInfoAfterSaleRequest) async throws -> QueryOrderInfoAfterSaleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryOrderInfoAfterSaleWithOptions(request as! QueryOrderInfoAfterSaleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderItemInfoByPaymentIdForAiZhanYouWithOptions(_ request: QueryOrderItemInfoByPaymentIdForAiZhanYouRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOrderItemInfoByPaymentIdForAiZhanYouResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.paymentId)) {
            query["PaymentId"] = request.paymentId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryOrderItemInfoByPaymentIdForAiZhanYou",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOrderItemInfoByPaymentIdForAiZhanYouResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderItemInfoByPaymentIdForAiZhanYou(_ request: QueryOrderItemInfoByPaymentIdForAiZhanYouRequest) async throws -> QueryOrderItemInfoByPaymentIdForAiZhanYouResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryOrderItemInfoByPaymentIdForAiZhanYouWithOptions(request as! QueryOrderItemInfoByPaymentIdForAiZhanYouRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderListWithOptions(_ request: QueryOrderListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOrderListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterOption)) {
            query["FilterOption"] = request.filterOption ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryOrderList",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOrderListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderList(_ request: QueryOrderListRequest) async throws -> QueryOrderListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryOrderListWithOptions(request as! QueryOrderListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderLogisticsWithOptions(_ request: QueryOrderLogisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOrderLogisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmOrderId)) {
            query["LmOrderId"] = request.lmOrderId!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryOrderLogistics",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOrderLogisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrderLogistics(_ request: QueryOrderLogisticsRequest) async throws -> QueryOrderLogisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryOrderLogisticsWithOptions(request as! QueryOrderLogisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRefundApplicationDetailWithOptions(_ request: QueryRefundApplicationDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRefundApplicationDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subLmOrderId)) {
            query["SubLmOrderId"] = request.subLmOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRefundApplicationDetail",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRefundApplicationDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRefundApplicationDetail(_ request: QueryRefundApplicationDetailRequest) async throws -> QueryRefundApplicationDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRefundApplicationDetailWithOptions(request as! QueryRefundApplicationDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryStatementsWithOptions(_ request: QueryStatementsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryStatementsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currency)) {
            query["Currency"] = request.currency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extInfo)) {
            query["ExtInfo"] = request.extInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.payeeIds)) {
            query["PayeeIds"] = request.payeeIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.settleNoes)) {
            query["SettleNoes"] = request.settleNoes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.settleStatus)) {
            query["SettleStatus"] = request.settleStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.settleType)) {
            query["SettleType"] = request.settleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            query["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryStatements",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryStatementsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryStatements(_ request: QueryStatementsRequest) async throws -> QueryStatementsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryStatementsWithOptions(request as! QueryStatementsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUnfinishedActivitiesWithOptions(_ request: QueryUnfinishedActivitiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUnfinishedActivitiesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUnfinishedActivities",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUnfinishedActivitiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUnfinishedActivities(_ request: QueryUnfinishedActivitiesRequest) async throws -> QueryUnfinishedActivitiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryUnfinishedActivitiesWithOptions(request as! QueryUnfinishedActivitiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUnfinishedSessionsWithOptions(_ request: QueryUnfinishedSessionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUnfinishedSessionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.queryTime)) {
            query["QueryTime"] = request.queryTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUnfinishedSessions",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUnfinishedSessionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUnfinishedSessions(_ request: QueryUnfinishedSessionsRequest) async throws -> QueryUnfinishedSessionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryUnfinishedSessionsWithOptions(request as! QueryUnfinishedSessionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUnfinishedSessions4ItemsWithOptions(_ tmpReq: QueryUnfinishedSessions4ItemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUnfinishedSessions4ItemsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryUnfinishedSessions4ItemsShrinkRequest = QueryUnfinishedSessions4ItemsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.itemIds)) {
            request.itemIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.itemIds, "ItemIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.lmItemIds)) {
            request.lmItemIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.lmItemIds, "LmItemIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemIdsShrink)) {
            query["ItemIds"] = request.itemIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmItemIdsShrink)) {
            query["LmItemIds"] = request.lmItemIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryTime)) {
            query["QueryTime"] = request.queryTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUnfinishedSessions4Items",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUnfinishedSessions4ItemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUnfinishedSessions4Items(_ request: QueryUnfinishedSessions4ItemsRequest) async throws -> QueryUnfinishedSessions4ItemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryUnfinishedSessions4ItemsWithOptions(request as! QueryUnfinishedSessions4ItemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUpcomingMoviesWithOptions(_ tmpReq: QueryUpcomingMoviesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUpcomingMoviesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryUpcomingMoviesShrinkRequest = QueryUpcomingMoviesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extJson)) {
            request.extJsonShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extJson, "ExtJson", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cityCode)) {
            query["CityCode"] = request.cityCode!;
        }
        if (!TeaUtils.Client.isUnset(request.extJsonShrink)) {
            query["ExtJson"] = request.extJsonShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUpcomingMovies",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUpcomingMoviesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUpcomingMovies(_ request: QueryUpcomingMoviesRequest) async throws -> QueryUpcomingMoviesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryUpcomingMoviesWithOptions(request as! QueryUpcomingMoviesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserGameProcessWithOptions(_ tmpReq: QueryUserGameProcessRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUserGameProcessResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryUserGameProcessShrinkRequest = QueryUserGameProcessShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extInfo)) {
            request.extInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extInfo, "ExtInfo", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processId)) {
            query["ProcessId"] = request.processId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extInfoShrink)) {
            body["ExtInfo"] = request.extInfoShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUserGameProcess",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUserGameProcessResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserGameProcess(_ request: QueryUserGameProcessRequest) async throws -> QueryUserGameProcessResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryUserGameProcessWithOptions(request as! QueryUserGameProcessRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserPointWithOptions(_ tmpReq: QueryUserPointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUserPointResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryUserPointShrinkRequest = QueryUserPointShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extInfo)) {
            request.extInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extInfo, "ExtInfo", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUserPoint",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUserPointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserPoint(_ request: QueryUserPointRequest) async throws -> QueryUserPointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryUserPointWithOptions(request as! QueryUserPointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryWithholdTradeWithOptions(_ request: QueryWithholdTradeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryWithholdTradeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.merchantId)) {
            body["MerchantId"] = request.merchantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outTradeNo)) {
            body["OutTradeNo"] = request.outTradeNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tradeNo)) {
            body["TradeNo"] = request.tradeNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryWithholdTrade",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryWithholdTradeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryWithholdTrade(_ request: QueryWithholdTradeRequest) async throws -> QueryWithholdTradeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryWithholdTradeWithOptions(request as! QueryWithholdTradeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshSettlementOrderAccountWithOptions(_ request: RefreshSettlementOrderAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefreshSettlementOrderAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            body["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extInfo)) {
            body["ExtInfo"] = request.extInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["TenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefreshSettlementOrderAccount",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefreshSettlementOrderAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshSettlementOrderAccount(_ request: RefreshSettlementOrderAccountRequest) async throws -> RefreshSettlementOrderAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await refreshSettlementOrderAccountWithOptions(request as! RefreshSettlementOrderAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refundOrderWithOptions(_ request: RefundOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefundOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extInfo)) {
            body["ExtInfo"] = request.extInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantId)) {
            body["MerchantId"] = request.merchantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outRequestNo)) {
            body["OutRequestNo"] = request.outRequestNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outTradeNo)) {
            body["OutTradeNo"] = request.outTradeNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refundAmount)) {
            body["RefundAmount"] = request.refundAmount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refundReason)) {
            body["RefundReason"] = request.refundReason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refundRoyaltyParameters)) {
            body["RefundRoyaltyParameters"] = request.refundRoyaltyParameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tradeNo)) {
            body["TradeNo"] = request.tradeNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefundOrder",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefundOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refundOrder(_ request: RefundOrderRequest) async throws -> RefundOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await refundOrderWithOptions(request as! RefundOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refundPointWithOptions(_ request: RefundPointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefundPointResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmOrderId)) {
            query["LmOrderId"] = request.lmOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reason)) {
            query["Reason"] = request.reason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sellerId)) {
            query["SellerId"] = request.sellerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefundPoint",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefundPointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refundPoint(_ request: RefundPointRequest) async throws -> RefundPointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await refundPointWithOptions(request as! RefundPointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refundUserPointWithOptions(_ tmpReq: RefundUserPointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefundUserPointResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RefundUserPointShrinkRequest = RefundUserPointShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extInfo)) {
            request.extInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extInfo, "ExtInfo", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount!;
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idempotentId)) {
            query["IdempotentId"] = request.idempotentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.message)) {
            query["Message"] = request.message ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originRecordId)) {
            query["OriginRecordId"] = request.originRecordId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["Title"] = request.title ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extInfoShrink)) {
            body["ExtInfo"] = request.extInfoShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefundUserPoint",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefundUserPointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refundUserPoint(_ request: RefundUserPointRequest) async throws -> RefundUserPointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await refundUserPointWithOptions(request as! RefundUserPointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refuseMerchantSyncTaskWithOptions(_ request: RefuseMerchantSyncTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefuseMerchantSyncTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sellerNick)) {
            query["SellerNick"] = request.sellerNick ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeStamp)) {
            query["TimeStamp"] = request.timeStamp!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefuseMerchantSyncTask",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefuseMerchantSyncTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refuseMerchantSyncTask(_ request: RefuseMerchantSyncTaskRequest) async throws -> RefuseMerchantSyncTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await refuseMerchantSyncTaskWithOptions(request as! RefuseMerchantSyncTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registAnonymousTbAccountWithOptions(_ request: RegistAnonymousTbAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RegistAnonymousTbAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RegistAnonymousTbAccount",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RegistAnonymousTbAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registAnonymousTbAccount(_ request: RegistAnonymousTbAccountRequest) async throws -> RegistAnonymousTbAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await registAnonymousTbAccountWithOptions(request as! RegistAnonymousTbAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerSettleAccountWithOptions(_ request: RegisterSettleAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RegisterSettleAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountChannel)) {
            body["AccountChannel"] = request.accountChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountName)) {
            body["AccountName"] = request.accountName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountNo)) {
            body["AccountNo"] = request.accountNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountPayType)) {
            body["AccountPayType"] = request.accountPayType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            body["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            body["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.countryOrAreaCode)) {
            body["CountryOrAreaCode"] = request.countryOrAreaCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currency)) {
            body["Currency"] = request.currency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extInfo)) {
            body["ExtInfo"] = request.extInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idempotentId)) {
            body["IdempotentId"] = request.idempotentId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RegisterSettleAccount",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RegisterSettleAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerSettleAccount(_ request: RegisterSettleAccountRequest) async throws -> RegisterSettleAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await registerSettleAccountWithOptions(request as! RegisterSettleAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseMovieSeatWithOptions(_ request: ReleaseMovieSeatRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseMovieSeatResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extJson)) {
            query["ExtJson"] = request.extJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lockSeatApplyKey)) {
            query["LockSeatApplyKey"] = request.lockSeatApplyKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseMovieSeat",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseMovieSeatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseMovieSeat(_ request: ReleaseMovieSeatRequest) async throws -> ReleaseMovieSeatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await releaseMovieSeatWithOptions(request as! ReleaseMovieSeatRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeAddressWithOptions(_ request: RemoveAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addressInfo)) {
            body["AddressInfo"] = request.addressInfo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveAddress",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeAddress(_ request: RemoveAddressRequest) async throws -> RemoveAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeAddressWithOptions(request as! RemoveAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeMessagesWithOptions(_ request: RemoveMessagesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveMessagesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extJson)) {
            query["ExtJson"] = request.extJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.messageIds)) {
            query["MessageIds"] = request.messageIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveMessages",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveMessagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeMessages(_ request: RemoveMessagesRequest) async throws -> RemoveMessagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeMessagesWithOptions(request as! RemoveMessagesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renderH5OrderWithOptions(_ request: RenderH5OrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenderH5OrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buyOrderRequestModel)) {
            query["BuyOrderRequestModel"] = request.buyOrderRequestModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenderH5Order",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenderH5OrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renderH5Order(_ request: RenderH5OrderRequest) async throws -> RenderH5OrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renderH5OrderWithOptions(request as! RenderH5OrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renderOrderWithOptions(_ request: RenderOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenderOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryAddress)) {
            query["DeliveryAddress"] = request.deliveryAddress ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extJson)) {
            query["ExtJson"] = request.extJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemList)) {
            query["ItemList"] = request.itemList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.lmItemId)) {
            query["LmItemId"] = request.lmItemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenderOrder",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenderOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renderOrder(_ request: RenderOrderRequest) async throws -> RenderOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renderOrderWithOptions(request as! RenderOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func repayForPayUrlWithOptions(_ request: RepayForPayUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RepayForPayUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmOrderId)) {
            query["LmOrderId"] = request.lmOrderId!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RepayForPayUrl",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RepayForPayUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func repayForPayUrl(_ request: RepayForPayUrlRequest) async throws -> RepayForPayUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await repayForPayUrlWithOptions(request as! RepayForPayUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func repayOrderWithOptions(_ request: RepayOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RepayOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lmOrderId)) {
            query["LmOrderId"] = request.lmOrderId!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RepayOrder",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RepayOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func repayOrder(_ request: RepayOrderRequest) async throws -> RepayOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await repayOrderWithOptions(request as! RepayOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reserveMovieSeatWithOptions(_ request: ReserveMovieSeatRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReserveMovieSeatResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extJson)) {
            query["ExtJson"] = request.extJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobile)) {
            query["Mobile"] = request.mobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleId)) {
            query["ScheduleId"] = request.scheduleId!;
        }
        if (!TeaUtils.Client.isUnset(request.seatIds)) {
            query["SeatIds"] = request.seatIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.seatNames)) {
            query["SeatNames"] = request.seatNames ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReserveMovieSeat",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReserveMovieSeatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reserveMovieSeat(_ request: ReserveMovieSeatRequest) async throws -> ReserveMovieSeatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await reserveMovieSeatWithOptions(request as! ReserveMovieSeatRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func settleOrderWithOptions(_ request: SettleOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SettleOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extInfo)) {
            body["ExtInfo"] = request.extInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantId)) {
            body["MerchantId"] = request.merchantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outRequestNo)) {
            body["OutRequestNo"] = request.outRequestNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outTradeNo)) {
            body["OutTradeNo"] = request.outTradeNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.royaltyParameters)) {
            body["RoyaltyParameters"] = request.royaltyParameters ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tradeNo)) {
            body["TradeNo"] = request.tradeNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SettleOrder",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SettleOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func settleOrder(_ request: SettleOrderRequest) async throws -> SettleOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await settleOrderWithOptions(request as! SettleOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startUserGameWithOptions(_ tmpReq: StartUserGameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartUserGameResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: StartUserGameShrinkRequest = StartUserGameShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extInfo)) {
            request.extInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extInfo, "ExtInfo", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.activityId)) {
            query["ActivityId"] = request.activityId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gameId)) {
            query["GameId"] = request.gameId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeId)) {
            query["RouteId"] = request.routeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userApp)) {
            query["UserApp"] = request.userApp ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extInfoShrink)) {
            body["ExtInfo"] = request.extInfoShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartUserGame",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartUserGameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startUserGame(_ request: StartUserGameRequest) async throws -> StartUserGameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startUserGameWithOptions(request as! StartUserGameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitReturnGoodLogisticsWithOptions(_ request: SubmitReturnGoodLogisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitReturnGoodLogisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpCode)) {
            query["CpCode"] = request.cpCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disputeId)) {
            query["DisputeId"] = request.disputeId!;
        }
        if (!TeaUtils.Client.isUnset(request.logisticsNo)) {
            query["LogisticsNo"] = request.logisticsNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subLmOrderId)) {
            query["SubLmOrderId"] = request.subLmOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitReturnGoodLogistics",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitReturnGoodLogisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitReturnGoodLogistics(_ request: SubmitReturnGoodLogisticsRequest) async throws -> SubmitReturnGoodLogisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitReturnGoodLogisticsWithOptions(request as! SubmitReturnGoodLogisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncMerchantInfoWithOptions(_ request: SyncMerchantInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SyncMerchantInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sellerNick)) {
            query["SellerNick"] = request.sellerNick ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeStamp)) {
            query["TimeStamp"] = request.timeStamp!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.itemList)) {
            body["ItemList"] = request.itemList ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SyncMerchantInfo",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyncMerchantInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncMerchantInfo(_ request: SyncMerchantInfoRequest) async throws -> SyncMerchantInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await syncMerchantInfoWithOptions(request as! SyncMerchantInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unFreezeUserPointWithOptions(_ tmpReq: UnFreezeUserPointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnFreezeUserPointResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UnFreezeUserPointShrinkRequest = UnFreezeUserPointShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extInfo)) {
            request.extInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extInfo, "ExtInfo", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountType)) {
            query["AccountType"] = request.accountType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount!;
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idempotentId)) {
            query["IdempotentId"] = request.idempotentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.message)) {
            query["Message"] = request.message ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["Title"] = request.title ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extInfoShrink)) {
            body["ExtInfo"] = request.extInfoShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnFreezeUserPoint",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnFreezeUserPointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unFreezeUserPoint(_ request: UnFreezeUserPointRequest) async throws -> UnFreezeUserPointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unFreezeUserPointWithOptions(request as! UnFreezeUserPointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unsignWithholdAgreementWithOptions(_ request: UnsignWithholdAgreementRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnsignWithholdAgreementResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agreementNo)) {
            body["AgreementNo"] = request.agreementNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalAgreementNo)) {
            body["ExternalAgreementNo"] = request.externalAgreementNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.merchantId)) {
            body["MerchantId"] = request.merchantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outRequestNo)) {
            body["OutRequestNo"] = request.outRequestNo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnsignWithholdAgreement",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnsignWithholdAgreementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unsignWithholdAgreement(_ request: UnsignWithholdAgreementRequest) async throws -> UnsignWithholdAgreementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unsignWithholdAgreementWithOptions(request as! UnsignWithholdAgreementRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAddressWithOptions(_ request: UpdateAddressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAddressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.thirdPartyUserId)) {
            query["ThirdPartyUserId"] = request.thirdPartyUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.useAnonymousTbAccount)) {
            query["UseAnonymousTbAccount"] = request.useAnonymousTbAccount!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addressInfo)) {
            body["AddressInfo"] = request.addressInfo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAddress",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAddressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAddress(_ request: UpdateAddressRequest) async throws -> UpdateAddressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAddressWithOptions(request as! UpdateAddressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateTaobaoAccountWithOptions(_ request: ValidateTaobaoAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ValidateTaobaoAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizUid)) {
            query["BizUid"] = request.bizUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extJson)) {
            query["ExtJson"] = request.extJson ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobileNo)) {
            query["MobileNo"] = request.mobileNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tbUserNick)) {
            query["TbUserNick"] = request.tbUserNick ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ValidateTaobaoAccount",
            "version": "2018-01-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ValidateTaobaoAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func validateTaobaoAccount(_ request: ValidateTaobaoAccountRequest) async throws -> ValidateTaobaoAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await validateTaobaoAccountWithOptions(request as! ValidateTaobaoAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
