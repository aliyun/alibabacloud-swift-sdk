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
            "cn-hangzhou": "business.aliyuncs.com",
            "cn-shanghai": "business.aliyuncs.com",
            "ap-southeast-1": "business.ap-southeast-1.aliyuncs.com",
            "ap-northeast-1": "business.ap-southeast-1.aliyuncs.com",
            "ap-northeast-2": "business.ap-southeast-1.aliyuncs.com",
            "ap-northeast-2-pop": "business.ap-southeast-1.aliyuncs.com",
            "ap-south-1": "business.ap-southeast-1.aliyuncs.com",
            "ap-southeast-2": "business.ap-southeast-1.aliyuncs.com",
            "ap-southeast-3": "business.ap-southeast-1.aliyuncs.com",
            "ap-southeast-5": "business.ap-southeast-1.aliyuncs.com",
            "cn-beijing": "business.aliyuncs.com",
            "cn-beijing-finance-1": "business.aliyuncs.com",
            "cn-beijing-finance-pop": "business.aliyuncs.com",
            "cn-beijing-gov-1": "business.aliyuncs.com",
            "cn-beijing-nu16-b01": "business.aliyuncs.com",
            "cn-chengdu": "business.aliyuncs.com",
            "cn-edge-1": "business.aliyuncs.com",
            "cn-fujian": "business.aliyuncs.com",
            "cn-haidian-cm12-c01": "business.aliyuncs.com",
            "cn-hangzhou-bj-b01": "business.aliyuncs.com",
            "cn-hangzhou-finance": "business.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "business.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "business.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "business.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "business.aliyuncs.com",
            "cn-hangzhou-test-306": "business.aliyuncs.com",
            "cn-hongkong": "business.aliyuncs.com",
            "cn-hongkong-finance-pop": "business.aliyuncs.com",
            "cn-huhehaote": "business.aliyuncs.com",
            "cn-huhehaote-nebula-1": "business.aliyuncs.com",
            "cn-north-2-gov-1": "business.aliyuncs.com",
            "cn-qingdao": "business.aliyuncs.com",
            "cn-qingdao-nebula": "business.aliyuncs.com",
            "cn-shanghai-et15-b01": "business.aliyuncs.com",
            "cn-shanghai-et2-b01": "business.aliyuncs.com",
            "cn-shanghai-finance-1": "business.aliyuncs.com",
            "cn-shanghai-inner": "business.aliyuncs.com",
            "cn-shanghai-internal-test-1": "business.aliyuncs.com",
            "cn-shenzhen": "business.aliyuncs.com",
            "cn-shenzhen-finance-1": "business.aliyuncs.com",
            "cn-shenzhen-inner": "business.aliyuncs.com",
            "cn-shenzhen-st4-d01": "business.aliyuncs.com",
            "cn-shenzhen-su18-b01": "business.aliyuncs.com",
            "cn-wuhan": "business.aliyuncs.com",
            "cn-wulanchabu": "business.aliyuncs.com",
            "cn-yushanfang": "business.aliyuncs.com",
            "cn-zhangbei": "business.aliyuncs.com",
            "cn-zhangbei-na61-b01": "business.aliyuncs.com",
            "cn-zhangjiakou": "business.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "business.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "business.aliyuncs.com",
            "eu-central-1": "business.ap-southeast-1.aliyuncs.com",
            "eu-west-1": "business.ap-southeast-1.aliyuncs.com",
            "eu-west-1-oxs": "business.ap-southeast-1.aliyuncs.com",
            "me-east-1": "business.ap-southeast-1.aliyuncs.com",
            "rus-west-1-pop": "business.ap-southeast-1.aliyuncs.com",
            "us-east-1": "business.ap-southeast-1.aliyuncs.com",
            "us-west-1": "business.ap-southeast-1.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("bssopenapi", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addCouponDeductTagWithOptions(_ tmpReq: AddCouponDeductTagRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddCouponDeductTagResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddCouponDeductTagShrinkRequest = AddCouponDeductTagShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ecIdAccountIds)) {
            request.ecIdAccountIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ecIdAccountIds, "EcIdAccountIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.couponId)) {
            query["CouponId"] = request.couponId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecIdAccountIdsShrink)) {
            query["EcIdAccountIds"] = request.ecIdAccountIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["Tags"] = request.tagsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddCouponDeductTag",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddCouponDeductTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addCouponDeductTag(_ request: AddCouponDeductTagRequest) async throws -> AddCouponDeductTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addCouponDeductTagWithOptions(request as! AddCouponDeductTagRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func allocateCostCenterResourceWithOptions(_ tmpReq: AllocateCostCenterResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AllocateCostCenterResourceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AllocateCostCenterResourceShrinkRequest = AllocateCostCenterResourceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.resourceInstanceList)) {
            request.resourceInstanceListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resourceInstanceList, "ResourceInstanceList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fromCostCenterId)) {
            body["FromCostCenterId"] = request.fromCostCenterId!;
        }
        if (!TeaUtils.Client.isUnset(request.fromOwnerAccountId)) {
            body["FromOwnerAccountId"] = request.fromOwnerAccountId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceInstanceListShrink)) {
            body["ResourceInstanceList"] = request.resourceInstanceListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toCostCenterId)) {
            body["ToCostCenterId"] = request.toCostCenterId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AllocateCostCenterResource",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AllocateCostCenterResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func allocateCostCenterResource(_ request: AllocateCostCenterResourceRequest) async throws -> AllocateCostCenterResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await allocateCostCenterResourceWithOptions(request as! AllocateCostCenterResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelFundAccountLowAvailableAmountAlarmWithOptions(_ request: CancelFundAccountLowAvailableAmountAlarmRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelFundAccountLowAvailableAmountAlarmResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fundAccountId)) {
            body["FundAccountId"] = request.fundAccountId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelFundAccountLowAvailableAmountAlarm",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelFundAccountLowAvailableAmountAlarmResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelFundAccountLowAvailableAmountAlarm(_ request: CancelFundAccountLowAvailableAmountAlarmRequest) async throws -> CancelFundAccountLowAvailableAmountAlarmResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelFundAccountLowAvailableAmountAlarmWithOptions(request as! CancelFundAccountLowAvailableAmountAlarmRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkAccountExistWithOptions(_ request: CheckAccountExistRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckAccountExistResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ecIdAccountIds)) {
            query["EcIdAccountIds"] = request.ecIdAccountIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.toUserType)) {
            body["ToUserType"] = request.toUserType!;
        }
        if (!TeaUtils.Client.isUnset(request.transferAccount)) {
            body["TransferAccount"] = request.transferAccount ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckAccountExist",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckAccountExistResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkAccountExist(_ request: CheckAccountExistRequest) async throws -> CheckAccountExistResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkAccountExistWithOptions(request as! CheckAccountExistRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCostCenterWithOptions(_ tmpReq: CreateCostCenterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCostCenterResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateCostCenterShrinkRequest = CreateCostCenterShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.costCenterEntityList)) {
            request.costCenterEntityListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.costCenterEntityList, "CostCenterEntityList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.costCenterEntityListShrink)) {
            query["CostCenterEntityList"] = request.costCenterEntityListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCostCenter",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCostCenterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCostCenter(_ request: CreateCostCenterRequest) async throws -> CreateCostCenterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCostCenterWithOptions(request as! CreateCostCenterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCostCenterRuleWithOptions(_ tmpReq: CreateCostCenterRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCostCenterRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateCostCenterRuleShrinkRequest = CreateCostCenterRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filterExpression)) {
            request.filterExpressionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filterExpression, "FilterExpression", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterExpressionShrink)) {
            query["FilterExpression"] = request.filterExpressionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.costCenterId)) {
            body["CostCenterId"] = request.costCenterId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCostCenterRule",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCostCenterRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCostCenterRule(_ request: CreateCostCenterRuleRequest) async throws -> CreateCostCenterRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCostCenterRuleWithOptions(request as! CreateCostCenterRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFundAccountPayRelationWithOptions(_ tmpReq: CreateFundAccountPayRelationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFundAccountPayRelationResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateFundAccountPayRelationShrinkRequest = CreateFundAccountPayRelationShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ecIdAccountIds)) {
            request.ecIdAccountIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ecIdAccountIds, "EcIdAccountIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ecIdAccountIdsShrink)) {
            query["EcIdAccountIds"] = request.ecIdAccountIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fundAccountId)) {
            body["FundAccountId"] = request.fundAccountId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFundAccountPayRelation",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFundAccountPayRelationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFundAccountPayRelation(_ request: CreateFundAccountPayRelationRequest) async throws -> CreateFundAccountPayRelationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createFundAccountPayRelationWithOptions(request as! CreateFundAccountPayRelationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFundAccountTransferWithOptions(_ request: CreateFundAccountTransferRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFundAccountTransferResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.amount)) {
            body["Amount"] = request.amount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currency)) {
            body["Currency"] = request.currency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.financeType)) {
            body["FinanceType"] = request.financeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fromFundAccountId)) {
            body["FromFundAccountId"] = request.fromFundAccountId!;
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            body["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.toFundAccountId)) {
            body["ToFundAccountId"] = request.toFundAccountId!;
        }
        if (!TeaUtils.Client.isUnset(request.transferType)) {
            body["TransferType"] = request.transferType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFundAccountTransfer",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFundAccountTransferResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFundAccountTransfer(_ request: CreateFundAccountTransferRequest) async throws -> CreateFundAccountTransferResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createFundAccountTransferWithOptions(request as! CreateFundAccountTransferRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInvoiceWithOptions(_ tmpReq: CreateInvoiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateInvoiceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateInvoiceShrinkRequest = CreateInvoiceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ecIdAccountIds)) {
            request.ecIdAccountIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ecIdAccountIds, "EcIdAccountIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.invoiceCandidateIds)) {
            request.invoiceCandidateIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.invoiceCandidateIds, "InvoiceCandidateIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.recipientEmails)) {
            request.recipientEmailsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.recipientEmails, "RecipientEmails", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecIdAccountIdsShrink)) {
            query["EcIdAccountIds"] = request.ecIdAccountIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.invoiceCandidateIdsShrink)) {
            query["InvoiceCandidateIds"] = request.invoiceCandidateIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.invoiceMode)) {
            query["InvoiceMode"] = request.invoiceMode!;
        }
        if (!TeaUtils.Client.isUnset(request.invoiceRemark)) {
            query["InvoiceRemark"] = request.invoiceRemark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.invoiceTitleId)) {
            query["InvoiceTitleId"] = request.invoiceTitleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.invoiceType)) {
            query["InvoiceType"] = request.invoiceType!;
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recipientEmailsShrink)) {
            query["RecipientEmails"] = request.recipientEmailsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateInvoice",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateInvoiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInvoice(_ request: CreateInvoiceRequest) async throws -> CreateInvoiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createInvoiceWithOptions(request as! CreateInvoiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createReportDefinitionWithOptions(_ request: CreateReportDefinitionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateReportDefinitionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginBillingCycle)) {
            query["BeginBillingCycle"] = request.beginBillingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includeMembers)) {
            query["IncludeMembers"] = request.includeMembers ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notSendOnNoData)) {
            query["NotSendOnNoData"] = request.notSendOnNoData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossBucketName)) {
            query["OssBucketName"] = request.ossBucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossBucketOwnerAccountId)) {
            query["OssBucketOwnerAccountId"] = request.ossBucketOwnerAccountId!;
        }
        if (!TeaUtils.Client.isUnset(request.ossBucketPath)) {
            query["OssBucketPath"] = request.ossBucketPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reportType)) {
            query["ReportType"] = request.reportType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sendWithAttach)) {
            query["SendWithAttach"] = request.sendWithAttach ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.splitFileOnUserId)) {
            query["SplitFileOnUserId"] = request.splitFileOnUserId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mcProject)) {
            body["McProject"] = request.mcProject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mcTableName)) {
            body["McTableName"] = request.mcTableName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reportSourceType)) {
            body["ReportSourceType"] = request.reportSourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateReportDefinition",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateReportDefinitionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createReportDefinition(_ request: CreateReportDefinitionRequest) async throws -> CreateReportDefinitionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createReportDefinitionWithOptions(request as! CreateReportDefinitionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCostCenterWithOptions(_ request: DeleteCostCenterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCostCenterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.costCenterId)) {
            query["CostCenterId"] = request.costCenterId!;
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccountId)) {
            query["OwnerAccountId"] = request.ownerAccountId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCostCenter",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCostCenterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCostCenter(_ request: DeleteCostCenterRequest) async throws -> DeleteCostCenterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCostCenterWithOptions(request as! DeleteCostCenterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCostCenterRuleWithOptions(_ tmpReq: DeleteCostCenterRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCostCenterRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteCostCenterRuleShrinkRequest = DeleteCostCenterRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filterExpression)) {
            request.filterExpressionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filterExpression, "FilterExpression", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterExpressionShrink)) {
            query["FilterExpression"] = request.filterExpressionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.costCenterId)) {
            body["CostCenterId"] = request.costCenterId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCostCenterRule",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCostCenterRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCostCenterRule(_ request: DeleteCostCenterRuleRequest) async throws -> DeleteCostCenterRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCostCenterRuleWithOptions(request as! DeleteCostCenterRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCouponDeductTagWithOptions(_ tmpReq: DeleteCouponDeductTagRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCouponDeductTagResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteCouponDeductTagShrinkRequest = DeleteCouponDeductTagShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ecIdAccountIds)) {
            request.ecIdAccountIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ecIdAccountIds, "EcIdAccountIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tagKeys)) {
            request.tagKeysShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tagKeys, "TagKeys", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.couponId)) {
            query["CouponId"] = request.couponId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecIdAccountIdsShrink)) {
            query["EcIdAccountIds"] = request.ecIdAccountIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKeysShrink)) {
            query["TagKeys"] = request.tagKeysShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCouponDeductTag",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCouponDeductTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCouponDeductTag(_ request: DeleteCouponDeductTagRequest) async throws -> DeleteCouponDeductTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCouponDeductTagWithOptions(request as! DeleteCouponDeductTagRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteReportDefinitionWithOptions(_ request: DeleteReportDefinitionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteReportDefinitionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reportTaskId)) {
            query["ReportTaskId"] = request.reportTaskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteReportDefinition",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteReportDefinitionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteReportDefinition(_ request: DeleteReportDefinitionRequest) async throws -> DeleteReportDefinitionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteReportDefinitionWithOptions(request as! DeleteReportDefinitionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCouponWithOptions(_ tmpReq: DescribeCouponRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCouponResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeCouponShrinkRequest = DescribeCouponShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ecIdAccountIds)) {
            request.ecIdAccountIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ecIdAccountIds, "EcIdAccountIds", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCoupon",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCouponResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCoupon(_ request: DescribeCouponRequest) async throws -> DescribeCouponResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCouponWithOptions(request as! DescribeCouponRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCouponItemListWithOptions(_ tmpReq: DescribeCouponItemListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCouponItemListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeCouponItemListShrinkRequest = DescribeCouponItemListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ecIdAccountIds)) {
            request.ecIdAccountIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ecIdAccountIds, "EcIdAccountIds", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCouponItemList",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCouponItemListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCouponItemList(_ request: DescribeCouponItemListRequest) async throws -> DescribeCouponItemListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCouponItemListWithOptions(request as! DescribeCouponItemListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserSpnSummaryInfoWithOptions(_ tmpReq: DescribeUserSpnSummaryInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserSpnSummaryInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeUserSpnSummaryInfoShrinkRequest = DescribeUserSpnSummaryInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ecIdAccountIds)) {
            request.ecIdAccountIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ecIdAccountIds, "EcIdAccountIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ecIdAccountIdsShrink)) {
            query["EcIdAccountIds"] = request.ecIdAccountIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUserSpnSummaryInfo",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUserSpnSummaryInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserSpnSummaryInfo(_ request: DescribeUserSpnSummaryInfoRequest) async throws -> DescribeUserSpnSummaryInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUserSpnSummaryInfoWithOptions(request as! DescribeUserSpnSummaryInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFundAccountAvailableAmountWithOptions(_ request: GetFundAccountAvailableAmountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFundAccountAvailableAmountResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fundAccountId)) {
            body["FundAccountId"] = request.fundAccountId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFundAccountAvailableAmount",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFundAccountAvailableAmountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFundAccountAvailableAmount(_ request: GetFundAccountAvailableAmountRequest) async throws -> GetFundAccountAvailableAmountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFundAccountAvailableAmountWithOptions(request as! GetFundAccountAvailableAmountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFundAccountCanAllocateCreditAmountWithOptions(_ request: GetFundAccountCanAllocateCreditAmountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFundAccountCanAllocateCreditAmountResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fundAccountId)) {
            body["FundAccountId"] = request.fundAccountId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFundAccountCanAllocateCreditAmount",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFundAccountCanAllocateCreditAmountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFundAccountCanAllocateCreditAmount(_ request: GetFundAccountCanAllocateCreditAmountRequest) async throws -> GetFundAccountCanAllocateCreditAmountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFundAccountCanAllocateCreditAmountWithOptions(request as! GetFundAccountCanAllocateCreditAmountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFundAccountCanRecycleAmountWithOptions(_ request: GetFundAccountCanRecycleAmountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFundAccountCanRecycleAmountResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currency)) {
            body["Currency"] = request.currency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recycleFromFundAccountId)) {
            body["RecycleFromFundAccountId"] = request.recycleFromFundAccountId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFundAccountCanRecycleAmount",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFundAccountCanRecycleAmountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFundAccountCanRecycleAmount(_ request: GetFundAccountCanRecycleAmountRequest) async throws -> GetFundAccountCanRecycleAmountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFundAccountCanRecycleAmountWithOptions(request as! GetFundAccountCanRecycleAmountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFundAccountCanTransferAmountWithOptions(_ request: GetFundAccountCanTransferAmountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFundAccountCanTransferAmountResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currency)) {
            body["Currency"] = request.currency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fundAccountId)) {
            body["FundAccountId"] = request.fundAccountId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFundAccountCanTransferAmount",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFundAccountCanTransferAmountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFundAccountCanTransferAmount(_ request: GetFundAccountCanTransferAmountRequest) async throws -> GetFundAccountCanTransferAmountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFundAccountCanTransferAmountWithOptions(request as! GetFundAccountCanTransferAmountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFundAccountCanWithdrawAmountWithOptions(_ request: GetFundAccountCanWithdrawAmountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFundAccountCanWithdrawAmountResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fundAccountId)) {
            body["FundAccountId"] = request.fundAccountId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFundAccountCanWithdrawAmount",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFundAccountCanWithdrawAmountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFundAccountCanWithdrawAmount(_ request: GetFundAccountCanWithdrawAmountRequest) async throws -> GetFundAccountCanWithdrawAmountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFundAccountCanWithdrawAmountWithOptions(request as! GetFundAccountCanWithdrawAmountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFundAccountLowAvailableAmountAlarmWithOptions(_ request: GetFundAccountLowAvailableAmountAlarmRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFundAccountLowAvailableAmountAlarmResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fundAccountId)) {
            body["FundAccountId"] = request.fundAccountId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFundAccountLowAvailableAmountAlarm",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFundAccountLowAvailableAmountAlarmResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFundAccountLowAvailableAmountAlarm(_ request: GetFundAccountLowAvailableAmountAlarmRequest) async throws -> GetFundAccountLowAvailableAmountAlarmResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFundAccountLowAvailableAmountAlarmWithOptions(request as! GetFundAccountLowAvailableAmountAlarmRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFundAccountTransactionDetailsWithOptions(_ tmpReq: GetFundAccountTransactionDetailsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFundAccountTransactionDetailsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetFundAccountTransactionDetailsShrinkRequest = GetFundAccountTransactionDetailsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.transactionChannelList)) {
            request.transactionChannelListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.transactionChannelList, "TransactionChannelList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.transactionTypeList)) {
            request.transactionTypeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.transactionTypeList, "TransactionTypeList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billNumber)) {
            body["BillNumber"] = request.billNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelTransactionNumber)) {
            body["ChannelTransactionNumber"] = request.channelTransactionNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.fundAccountId)) {
            body["FundAccountId"] = request.fundAccountId!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.transactionChannelListShrink)) {
            body["TransactionChannelList"] = request.transactionChannelListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionDirection)) {
            body["TransactionDirection"] = request.transactionDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionNumber)) {
            body["TransactionNumber"] = request.transactionNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.transactionType)) {
            body["TransactionType"] = request.transactionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionTypeListShrink)) {
            body["TransactionTypeList"] = request.transactionTypeListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFundAccountTransactionDetails",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFundAccountTransactionDetailsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFundAccountTransactionDetails(_ request: GetFundAccountTransactionDetailsRequest) async throws -> GetFundAccountTransactionDetailsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFundAccountTransactionDetailsWithOptions(request as! GetFundAccountTransactionDetailsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrderDetailWithOptions(_ request: GetOrderDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOrderDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.memberUid)) {
            query["MemberUid"] = request.memberUid!;
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOrderDetail",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOrderDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrderDetail(_ request: GetOrderDetailRequest) async throws -> GetOrderDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOrderDetailWithOptions(request as! GetOrderDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrdersWithOptions(_ request: GetOrdersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOrdersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createTimeEnd)) {
            query["CreateTimeEnd"] = request.createTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTimeStart)) {
            query["CreateTimeStart"] = request.createTimeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberUid)) {
            query["MemberUid"] = request.memberUid!;
        }
        if (!TeaUtils.Client.isUnset(request.orderType)) {
            query["OrderType"] = request.orderType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.paymentStatus)) {
            query["PaymentStatus"] = request.paymentStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionType)) {
            query["SubscriptionType"] = request.subscriptionType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOrders",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOrdersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrders(_ request: GetOrdersRequest) async throws -> GetOrdersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOrdersWithOptions(request as! GetOrdersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSavingPlanDeductableCommodityWithOptions(_ tmpReq: GetSavingPlanDeductableCommodityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSavingPlanDeductableCommodityResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetSavingPlanDeductableCommodityShrinkRequest = GetSavingPlanDeductableCommodityShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ecIdAccountIds)) {
            request.ecIdAccountIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ecIdAccountIds, "EcIdAccountIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ecIdAccountIdsShrink)) {
            query["EcIdAccountIds"] = request.ecIdAccountIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSavingPlanDeductableCommodity",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSavingPlanDeductableCommodityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSavingPlanDeductableCommodity(_ request: GetSavingPlanDeductableCommodityRequest) async throws -> GetSavingPlanDeductableCommodityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSavingPlanDeductableCommodityWithOptions(request as! GetSavingPlanDeductableCommodityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSavingPlanShareAccountsWithOptions(_ tmpReq: GetSavingPlanShareAccountsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSavingPlanShareAccountsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetSavingPlanShareAccountsShrinkRequest = GetSavingPlanShareAccountsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ecIdAccountIds)) {
            request.ecIdAccountIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ecIdAccountIds, "EcIdAccountIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.ecIdAccountIdsShrink)) {
            query["EcIdAccountIds"] = request.ecIdAccountIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.spnInstanceCode)) {
            query["SpnInstanceCode"] = request.spnInstanceCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSavingPlanShareAccounts",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSavingPlanShareAccountsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSavingPlanShareAccounts(_ request: GetSavingPlanShareAccountsRequest) async throws -> GetSavingPlanShareAccountsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSavingPlanShareAccountsWithOptions(request as! GetSavingPlanShareAccountsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSavingPlanUserDeductRuleWithOptions(_ tmpReq: GetSavingPlanUserDeductRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSavingPlanUserDeductRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetSavingPlanUserDeductRuleShrinkRequest = GetSavingPlanUserDeductRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ecIdAccountIds)) {
            request.ecIdAccountIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ecIdAccountIds, "EcIdAccountIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.ecIdAccountIdsShrink)) {
            query["EcIdAccountIds"] = request.ecIdAccountIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.spnInstanceCode)) {
            query["SpnInstanceCode"] = request.spnInstanceCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSavingPlanUserDeductRule",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSavingPlanUserDeductRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSavingPlanUserDeductRule(_ request: GetSavingPlanUserDeductRuleRequest) async throws -> GetSavingPlanUserDeductRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSavingPlanUserDeductRuleWithOptions(request as! GetSavingPlanUserDeductRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCouponDeductTagWithOptions(_ tmpReq: ListCouponDeductTagRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCouponDeductTagResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListCouponDeductTagShrinkRequest = ListCouponDeductTagShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ecIdAccountIds)) {
            request.ecIdAccountIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ecIdAccountIds, "EcIdAccountIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.couponId)) {
            query["CouponId"] = request.couponId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ecIdAccountIdsShrink)) {
            query["EcIdAccountIds"] = request.ecIdAccountIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCouponDeductTag",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCouponDeductTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCouponDeductTag(_ request: ListCouponDeductTagRequest) async throws -> ListCouponDeductTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listCouponDeductTagWithOptions(request as! ListCouponDeductTagRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFundAccountWithOptions(_ request: ListFundAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFundAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.queryOnlyInUse)) {
            body["QueryOnlyInUse"] = request.queryOnlyInUse!;
        }
        if (!TeaUtils.Client.isUnset(request.queryOnlyManage)) {
            body["QueryOnlyManage"] = request.queryOnlyManage!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFundAccount",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFundAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFundAccount(_ request: ListFundAccountRequest) async throws -> ListFundAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listFundAccountWithOptions(request as! ListFundAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFundAccountPayRelationWithOptions(_ request: ListFundAccountPayRelationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFundAccountPayRelationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fundAccountId)) {
            body["FundAccountId"] = request.fundAccountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFundAccountPayRelation",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFundAccountPayRelationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFundAccountPayRelation(_ request: ListFundAccountPayRelationRequest) async throws -> ListFundAccountPayRelationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listFundAccountPayRelationWithOptions(request as! ListFundAccountPayRelationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInvoiceCandidateWithOptions(_ tmpReq: ListInvoiceCandidateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInvoiceCandidateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListInvoiceCandidateShrinkRequest = ListInvoiceCandidateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.billingCycles)) {
            request.billingCyclesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.billingCycles, "BillingCycles", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.businessIds)) {
            request.businessIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.businessIds, "BusinessIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.ecIdAccountIds)) {
            request.ecIdAccountIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ecIdAccountIds, "EcIdAccountIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.invoiceIssuers)) {
            request.invoiceIssuersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.invoiceIssuers, "InvoiceIssuers", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.status)) {
            request.statusShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.status, "Status", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.types)) {
            request.typesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.types, "Types", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billingCyclesShrink)) {
            query["BillingCycles"] = request.billingCyclesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessIdsShrink)) {
            query["BusinessIds"] = request.businessIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.ecIdAccountIdsShrink)) {
            query["EcIdAccountIds"] = request.ecIdAccountIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.invoiceIssuersShrink)) {
            query["InvoiceIssuers"] = request.invoiceIssuersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statusShrink)) {
            query["Status"] = request.statusShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.typesShrink)) {
            query["Types"] = request.typesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInvoiceCandidate",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInvoiceCandidateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInvoiceCandidate(_ request: ListInvoiceCandidateRequest) async throws -> ListInvoiceCandidateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listInvoiceCandidateWithOptions(request as! ListInvoiceCandidateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInvoiceTitleWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListInvoiceTitleResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInvoiceTitle",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInvoiceTitleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInvoiceTitle() async throws -> ListInvoiceTitleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listInvoiceTitleWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listReportDefinitionsWithOptions(_ request: ListReportDefinitionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListReportDefinitionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListReportDefinitions",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListReportDefinitionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listReportDefinitions(_ request: ListReportDefinitionsRequest) async throws -> ListReportDefinitionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listReportDefinitionsWithOptions(request as! ListReportDefinitionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCostCenterWithOptions(_ tmpReq: ModifyCostCenterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyCostCenterResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyCostCenterShrinkRequest = ModifyCostCenterShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.costCenterEntityList)) {
            request.costCenterEntityListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.costCenterEntityList, "CostCenterEntityList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.costCenterEntityListShrink)) {
            query["CostCenterEntityList"] = request.costCenterEntityListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyCostCenter",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyCostCenterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCostCenter(_ request: ModifyCostCenterRequest) async throws -> ModifyCostCenterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyCostCenterWithOptions(request as! ModifyCostCenterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCostCenterRuleWithOptions(_ tmpReq: ModifyCostCenterRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyCostCenterRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyCostCenterRuleShrinkRequest = ModifyCostCenterRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filterExpression)) {
            request.filterExpressionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filterExpression, "FilterExpression", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterExpressionShrink)) {
            query["FilterExpression"] = request.filterExpressionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.costCenterId)) {
            body["CostCenterId"] = request.costCenterId!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccountId)) {
            body["OwnerAccountId"] = request.ownerAccountId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyCostCenterRule",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyCostCenterRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCostCenterRule(_ request: ModifyCostCenterRuleRequest) async throws -> ModifyCostCenterRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyCostCenterRuleWithOptions(request as! ModifyCostCenterRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func payOrderWithOptions(_ request: PayOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PayOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.buyerId)) {
            query["BuyerId"] = request.buyerId!;
        }
        if (!TeaUtils.Client.isUnset(request.ecIdAccountIds)) {
            query["EcIdAccountIds"] = request.ecIdAccountIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.paySubmitUid)) {
            query["PaySubmitUid"] = request.paySubmitUid!;
        }
        if (!TeaUtils.Client.isUnset(request.payerId)) {
            query["PayerId"] = request.payerId!;
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PayOrder",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PayOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func payOrder(_ request: PayOrderRequest) async throws -> PayOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await payOrderWithOptions(request as! PayOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCostCenterWithOptions(_ tmpReq: QueryCostCenterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCostCenterResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryCostCenterShrinkRequest = QueryCostCenterShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ecIdAccountIds)) {
            request.ecIdAccountIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ecIdAccountIds, "EcIdAccountIds", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.ecIdAccountIdsShrink)) {
            query["EcIdAccountIds"] = request.ecIdAccountIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccountId)) {
            query["OwnerAccountId"] = request.ownerAccountId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.parentCostCenterId)) {
            query["ParentCostCenterId"] = request.parentCostCenterId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCostCenter",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCostCenterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCostCenter(_ request: QueryCostCenterRequest) async throws -> QueryCostCenterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCostCenterWithOptions(request as! QueryCostCenterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCostCenterResourceWithOptions(_ request: QueryCostCenterResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCostCenterResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ecIdAccountIds)) {
            query["EcIdAccountIds"] = request.ecIdAccountIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.costCenterId)) {
            body["CostCenterId"] = request.costCenterId!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccountId)) {
            body["OwnerAccountId"] = request.ownerAccountId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCostCenterResource",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCostCenterResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCostCenterResource(_ request: QueryCostCenterResourceRequest) async throws -> QueryCostCenterResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCostCenterResourceWithOptions(request as! QueryCostCenterResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCostCenterRuleWithOptions(_ request: QueryCostCenterRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCostCenterRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ecIdAccountIds)) {
            query["EcIdAccountIds"] = request.ecIdAccountIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.costCenterId)) {
            body["CostCenterId"] = request.costCenterId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCostCenterRule",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCostCenterRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCostCenterRule(_ request: QueryCostCenterRuleRequest) async throws -> QueryCostCenterRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCostCenterRuleWithOptions(request as! QueryCostCenterRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCostCenterShareRuleWithOptions(_ request: QueryCostCenterShareRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCostCenterShareRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ecIdAccountIds)) {
            query["EcIdAccountIds"] = request.ecIdAccountIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccountId)) {
            query["OwnerAccountId"] = request.ownerAccountId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCostCenterShareRule",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCostCenterShareRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCostCenterShareRule(_ request: QueryCostCenterShareRuleRequest) async throws -> QueryCostCenterShareRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCostCenterShareRuleWithOptions(request as! QueryCostCenterShareRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveCostCenterShareRuleWithOptions(_ tmpReq: SaveCostCenterShareRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SaveCostCenterShareRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SaveCostCenterShareRuleShrinkRequest = SaveCostCenterShareRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.createShareRuleList)) {
            request.createShareRuleListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.createShareRuleList, "CreateShareRuleList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.modifyShareRuleList)) {
            request.modifyShareRuleListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.modifyShareRuleList, "ModifyShareRuleList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.removeShareRuleList)) {
            request.removeShareRuleListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.removeShareRuleList, "RemoveShareRuleList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createShareRuleListShrink)) {
            query["CreateShareRuleList"] = request.createShareRuleListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifyShareRuleListShrink)) {
            query["ModifyShareRuleList"] = request.modifyShareRuleListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerAccountId)) {
            query["OwnerAccountId"] = request.ownerAccountId!;
        }
        if (!TeaUtils.Client.isUnset(request.removeShareRuleListShrink)) {
            query["RemoveShareRuleList"] = request.removeShareRuleListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SaveCostCenterShareRule",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SaveCostCenterShareRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func saveCostCenterShareRule(_ request: SaveCostCenterShareRuleRequest) async throws -> SaveCostCenterShareRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await saveCostCenterShareRuleWithOptions(request as! SaveCostCenterShareRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setFundAccountCreditAmountWithOptions(_ request: SetFundAccountCreditAmountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetFundAccountCreditAmountResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.creditAmount)) {
            body["CreditAmount"] = request.creditAmount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currency)) {
            body["Currency"] = request.currency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fundAccountId)) {
            body["FundAccountId"] = request.fundAccountId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetFundAccountCreditAmount",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetFundAccountCreditAmountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setFundAccountCreditAmount(_ request: SetFundAccountCreditAmountRequest) async throws -> SetFundAccountCreditAmountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setFundAccountCreditAmountWithOptions(request as! SetFundAccountCreditAmountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setFundAccountLowAvailableAmountAlarmWithOptions(_ request: SetFundAccountLowAvailableAmountAlarmRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetFundAccountLowAvailableAmountAlarmResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fundAccountId)) {
            body["FundAccountId"] = request.fundAccountId!;
        }
        if (!TeaUtils.Client.isUnset(request.thresholdAmount)) {
            body["ThresholdAmount"] = request.thresholdAmount ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetFundAccountLowAvailableAmountAlarm",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetFundAccountLowAvailableAmountAlarmResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setFundAccountLowAvailableAmountAlarm(_ request: SetFundAccountLowAvailableAmountAlarmRequest) async throws -> SetFundAccountLowAvailableAmountAlarmResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setFundAccountLowAvailableAmountAlarmWithOptions(request as! SetFundAccountLowAvailableAmountAlarmRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setSavingPlanUserDeductRuleWithOptions(_ tmpReq: SetSavingPlanUserDeductRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetSavingPlanUserDeductRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SetSavingPlanUserDeductRuleShrinkRequest = SetSavingPlanUserDeductRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ecIdAccountIds)) {
            request.ecIdAccountIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ecIdAccountIds, "EcIdAccountIds", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.userDeductRules)) {
            request.userDeductRulesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.userDeductRules, "UserDeductRules", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ecIdAccountIdsShrink)) {
            query["EcIdAccountIds"] = request.ecIdAccountIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nbid)) {
            query["Nbid"] = request.nbid ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.spnInstanceCode)) {
            body["SpnInstanceCode"] = request.spnInstanceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userDeductRulesShrink)) {
            body["UserDeductRules"] = request.userDeductRulesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetSavingPlanUserDeductRule",
            "version": "2023-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetSavingPlanUserDeductRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setSavingPlanUserDeductRule(_ request: SetSavingPlanUserDeductRuleRequest) async throws -> SetSavingPlanUserDeductRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setSavingPlanUserDeductRuleWithOptions(request as! SetSavingPlanUserDeductRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
