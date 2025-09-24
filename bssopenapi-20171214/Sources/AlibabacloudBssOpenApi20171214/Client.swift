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
    public func addAccountRelationWithOptions(_ request: AddAccountRelationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddAccountRelationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.childNick)) {
            query["ChildNick"] = request.childNick ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.childUserId)) {
            query["ChildUserId"] = request.childUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.parentUserId)) {
            query["ParentUserId"] = request.parentUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.permissionCodes)) {
            query["PermissionCodes"] = request.permissionCodes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.relationType)) {
            query["RelationType"] = request.relationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleCodes)) {
            query["RoleCodes"] = request.roleCodes ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddAccountRelation",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddAccountRelationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addAccountRelation(_ request: AddAccountRelationRequest) async throws -> AddAccountRelationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addAccountRelationWithOptions(request as! AddAccountRelationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func allocateCostUnitResourceWithOptions(_ request: AllocateCostUnitResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AllocateCostUnitResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fromUnitId)) {
            query["FromUnitId"] = request.fromUnitId!;
        }
        if (!TeaUtils.Client.isUnset(request.fromUnitUserId)) {
            query["FromUnitUserId"] = request.fromUnitUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceInstanceList)) {
            query["ResourceInstanceList"] = request.resourceInstanceList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.toUnitId)) {
            query["ToUnitId"] = request.toUnitId!;
        }
        if (!TeaUtils.Client.isUnset(request.toUnitUserId)) {
            query["ToUnitUserId"] = request.toUnitUserId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AllocateCostUnitResource",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AllocateCostUnitResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func allocateCostUnitResource(_ request: AllocateCostUnitResourceRequest) async throws -> AllocateCostUnitResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await allocateCostUnitResourceWithOptions(request as! AllocateCostUnitResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyInvoiceWithOptions(_ request: ApplyInvoiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyInvoiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addressId)) {
            query["AddressId"] = request.addressId!;
        }
        if (!TeaUtils.Client.isUnset(request.applyUserNick)) {
            query["ApplyUserNick"] = request.applyUserNick ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerId)) {
            query["CustomerId"] = request.customerId!;
        }
        if (!TeaUtils.Client.isUnset(request.invoiceAmount)) {
            query["InvoiceAmount"] = request.invoiceAmount!;
        }
        if (!TeaUtils.Client.isUnset(request.invoiceByAmount)) {
            query["InvoiceByAmount"] = request.invoiceByAmount!;
        }
        if (!TeaUtils.Client.isUnset(request.invoicingType)) {
            query["InvoicingType"] = request.invoicingType!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.processWay)) {
            query["ProcessWay"] = request.processWay!;
        }
        if (!TeaUtils.Client.isUnset(request.selectedIds)) {
            query["SelectedIds"] = request.selectedIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userRemark)) {
            query["UserRemark"] = request.userRemark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.emails)) {
            query["emails"] = request.emails ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyInvoice",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyInvoiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyInvoice(_ request: ApplyInvoiceRequest) async throws -> ApplyInvoiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await applyInvoiceWithOptions(request as! ApplyInvoiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelOrderWithOptions(_ request: CancelOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
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
            "action": "CancelOrder",
            "version": "2017-12-14",
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
    public func changeResellerConsumeAmountWithOptions(_ request: ChangeResellerConsumeAmountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeResellerConsumeAmountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adjustType)) {
            query["AdjustType"] = request.adjustType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessType)) {
            query["BusinessType"] = request.businessType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currency)) {
            query["Currency"] = request.currency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extendMap)) {
            query["ExtendMap"] = request.extendMap ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outBizId)) {
            query["OutBizId"] = request.outBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            query["Source"] = request.source ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeResellerConsumeAmount",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeResellerConsumeAmountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeResellerConsumeAmount(_ request: ChangeResellerConsumeAmountRequest) async throws -> ChangeResellerConsumeAmountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeResellerConsumeAmountWithOptions(request as! ChangeResellerConsumeAmountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmRelationWithOptions(_ request: ConfirmRelationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfirmRelationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.childUserId)) {
            query["ChildUserId"] = request.childUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.confirmCode)) {
            query["ConfirmCode"] = request.confirmCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentUserId)) {
            query["ParentUserId"] = request.parentUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.permissionCodes)) {
            query["PermissionCodes"] = request.permissionCodes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.relationId)) {
            query["RelationId"] = request.relationId!;
        }
        if (!TeaUtils.Client.isUnset(request.relationType)) {
            query["RelationType"] = request.relationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfirmRelation",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfirmRelationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmRelation(_ request: ConfirmRelationRequest) async throws -> ConfirmRelationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await confirmRelationWithOptions(request as! ConfirmRelationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func convertChargeTypeWithOptions(_ request: ConvertChargeTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConvertChargeTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
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
            "action": "ConvertChargeType",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConvertChargeTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func convertChargeType(_ request: ConvertChargeTypeRequest) async throws -> ConvertChargeTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await convertChargeTypeWithOptions(request as! ConvertChargeTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAgAccountWithOptions(_ request: CreateAgAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAgAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountAttr)) {
            query["AccountAttr"] = request.accountAttr ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cityName)) {
            query["CityName"] = request.cityName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseName)) {
            query["EnterpriseName"] = request.enterpriseName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.firstName)) {
            query["FirstName"] = request.firstName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lastName)) {
            query["LastName"] = request.lastName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loginEmail)) {
            query["LoginEmail"] = request.loginEmail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nationCode)) {
            query["NationCode"] = request.nationCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.postcode)) {
            query["Postcode"] = request.postcode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.provinceName)) {
            query["ProvinceName"] = request.provinceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAgAccount",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAgAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAgAccount(_ request: CreateAgAccountRequest) async throws -> CreateAgAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAgAccountWithOptions(request as! CreateAgAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCostUnitWithOptions(_ request: CreateCostUnitRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCostUnitResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.unitEntityList)) {
            query["UnitEntityList"] = request.unitEntityList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCostUnit",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCostUnitResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCostUnit(_ request: CreateCostUnitRequest) async throws -> CreateCostUnitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCostUnitWithOptions(request as! CreateCostUnitRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceWithOptions(_ request: CreateInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logistics)) {
            query["Logistics"] = request.logistics ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.parameter)) {
            query["Parameter"] = request.parameter ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.pricingCycle)) {
            query["PricingCycle"] = request.pricingCycle!;
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.renewPeriod)) {
            query["RenewPeriod"] = request.renewPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.renewalStatus)) {
            query["RenewalStatus"] = request.renewalStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionType)) {
            query["SubscriptionType"] = request.subscriptionType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateInstance",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstance(_ request: CreateInstanceRequest) async throws -> CreateInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createInstanceWithOptions(request as! CreateInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResellerUserQuotaWithOptions(_ request: CreateResellerUserQuotaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateResellerUserQuotaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currency)) {
            query["Currency"] = request.currency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outBizId)) {
            query["OutBizId"] = request.outBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateResellerUserQuota",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateResellerUserQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResellerUserQuota(_ request: CreateResellerUserQuotaRequest) async throws -> CreateResellerUserQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createResellerUserQuotaWithOptions(request as! CreateResellerUserQuotaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResourcePackageWithOptions(_ request: CreateResourcePackageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateResourcePackageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.duration)) {
            query["Duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.effectiveDate)) {
            query["EffectiveDate"] = request.effectiveDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.packageType)) {
            query["PackageType"] = request.packageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pricingCycle)) {
            query["PricingCycle"] = request.pricingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specification)) {
            query["Specification"] = request.specification ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateResourcePackage",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateResourcePackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createResourcePackage(_ request: CreateResourcePackageRequest) async throws -> CreateResourcePackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createResourcePackageWithOptions(request as! CreateResourcePackageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSavingsPlansInstanceWithOptions(_ tmpReq: CreateSavingsPlansInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSavingsPlansInstanceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateSavingsPlansInstanceShrinkRequest = CreateSavingsPlansInstanceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extendMap)) {
            request.extendMapShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extendMap, "ExtendMap", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            query["CommodityCode"] = request.commodityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.duration)) {
            query["Duration"] = request.duration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectiveDate)) {
            query["EffectiveDate"] = request.effectiveDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extendMapShrink)) {
            query["ExtendMap"] = request.extendMapShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payMode)) {
            query["PayMode"] = request.payMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.poolValue)) {
            query["PoolValue"] = request.poolValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pricingCycle)) {
            query["PricingCycle"] = request.pricingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specType)) {
            query["SpecType"] = request.specType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specification)) {
            query["Specification"] = request.specification ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSavingsPlansInstance",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSavingsPlansInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSavingsPlansInstance(_ request: CreateSavingsPlansInstanceRequest) async throws -> CreateSavingsPlansInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSavingsPlansInstanceWithOptions(request as! CreateSavingsPlansInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCostUnitWithOptions(_ request: DeleteCostUnitRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCostUnitResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerUid)) {
            query["OwnerUid"] = request.ownerUid!;
        }
        if (!TeaUtils.Client.isUnset(request.unitId)) {
            query["UnitId"] = request.unitId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCostUnit",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCostUnitResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCostUnit(_ request: DeleteCostUnitRequest) async throws -> DeleteCostUnitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCostUnitWithOptions(request as! DeleteCostUnitRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCostBudgetsSummaryWithOptions(_ request: DescribeCostBudgetsSummaryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCostBudgetsSummaryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.budgetName)) {
            query["BudgetName"] = request.budgetName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.budgetStatus)) {
            query["BudgetStatus"] = request.budgetStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.budgetType)) {
            query["BudgetType"] = request.budgetType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCostBudgetsSummary",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCostBudgetsSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCostBudgetsSummary(_ request: DescribeCostBudgetsSummaryRequest) async throws -> DescribeCostBudgetsSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCostBudgetsSummaryWithOptions(request as! DescribeCostBudgetsSummaryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceAmortizedCostByAmortizationPeriodWithOptions(_ request: DescribeInstanceAmortizedCostByAmortizationPeriodRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceAmortizedCostByAmortizationPeriodResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billOwnerIdList)) {
            body["BillOwnerIdList"] = request.billOwnerIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.billUserIdList)) {
            body["BillUserIdList"] = request.billUserIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.billingCycle)) {
            body["BillingCycle"] = request.billingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consumePeriodFilter)) {
            body["ConsumePeriodFilter"] = request.consumePeriodFilter ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.costUnitCode)) {
            body["CostUnitCode"] = request.costUnitCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdList)) {
            body["InstanceIdList"] = request.instanceIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            body["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productDetail)) {
            body["ProductDetail"] = request.productDetail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionType)) {
            body["SubscriptionType"] = request.subscriptionType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceAmortizedCostByAmortizationPeriod",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceAmortizedCostByAmortizationPeriodResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceAmortizedCostByAmortizationPeriod(_ request: DescribeInstanceAmortizedCostByAmortizationPeriodRequest) async throws -> DescribeInstanceAmortizedCostByAmortizationPeriodResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceAmortizedCostByAmortizationPeriodWithOptions(request as! DescribeInstanceAmortizedCostByAmortizationPeriodRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceAmortizedCostByAmortizationPeriodDateWithOptions(_ request: DescribeInstanceAmortizedCostByAmortizationPeriodDateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceAmortizedCostByAmortizationPeriodDateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.amortizationDateEnd)) {
            body["AmortizationDateEnd"] = request.amortizationDateEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.amortizationDateStart)) {
            body["AmortizationDateStart"] = request.amortizationDateStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.billOwnerIdList)) {
            body["BillOwnerIdList"] = request.billOwnerIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.billUserIdList)) {
            body["BillUserIdList"] = request.billUserIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.billingCycle)) {
            body["BillingCycle"] = request.billingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.costUnitCode)) {
            body["CostUnitCode"] = request.costUnitCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdList)) {
            body["InstanceIdList"] = request.instanceIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            body["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productDetail)) {
            body["ProductDetail"] = request.productDetail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionType)) {
            body["SubscriptionType"] = request.subscriptionType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceAmortizedCostByAmortizationPeriodDate",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceAmortizedCostByAmortizationPeriodDateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceAmortizedCostByAmortizationPeriodDate(_ request: DescribeInstanceAmortizedCostByAmortizationPeriodDateRequest) async throws -> DescribeInstanceAmortizedCostByAmortizationPeriodDateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceAmortizedCostByAmortizationPeriodDateWithOptions(request as! DescribeInstanceAmortizedCostByAmortizationPeriodDateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceAmortizedCostByConsumePeriodWithOptions(_ request: DescribeInstanceAmortizedCostByConsumePeriodRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceAmortizedCostByConsumePeriodResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.amortizationPeriodFilter)) {
            body["AmortizationPeriodFilter"] = request.amortizationPeriodFilter ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.billOwnerIdList)) {
            body["BillOwnerIdList"] = request.billOwnerIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.billUserIdList)) {
            body["BillUserIdList"] = request.billUserIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.billingCycle)) {
            body["BillingCycle"] = request.billingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.costUnitCode)) {
            body["CostUnitCode"] = request.costUnitCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdList)) {
            body["InstanceIdList"] = request.instanceIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            body["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productDetail)) {
            body["ProductDetail"] = request.productDetail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionType)) {
            body["SubscriptionType"] = request.subscriptionType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceAmortizedCostByConsumePeriod",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceAmortizedCostByConsumePeriodResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceAmortizedCostByConsumePeriod(_ request: DescribeInstanceAmortizedCostByConsumePeriodRequest) async throws -> DescribeInstanceAmortizedCostByConsumePeriodResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceAmortizedCostByConsumePeriodWithOptions(request as! DescribeInstanceAmortizedCostByConsumePeriodRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceBillWithOptions(_ request: DescribeInstanceBillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceBillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billOwnerId)) {
            query["BillOwnerId"] = request.billOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.billingCycle)) {
            query["BillingCycle"] = request.billingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.billingDate)) {
            query["BillingDate"] = request.billingDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.granularity)) {
            query["Granularity"] = request.granularity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceID)) {
            query["InstanceID"] = request.instanceID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isBillingItem)) {
            query["IsBillingItem"] = request.isBillingItem!;
        }
        if (!TeaUtils.Client.isUnset(request.isHideZeroCharge)) {
            query["IsHideZeroCharge"] = request.isHideZeroCharge!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pipCode)) {
            query["PipCode"] = request.pipCode ?? "";
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
            "action": "DescribeInstanceBill",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceBillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceBill(_ request: DescribeInstanceBillRequest) async throws -> DescribeInstanceBillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceBillWithOptions(request as! DescribeInstanceBillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceDeductAmortizedCostByAmortizationPeriodWithOptions(_ request: DescribeInstanceDeductAmortizedCostByAmortizationPeriodRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceDeductAmortizedCostByAmortizationPeriodResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billOwnerIdList)) {
            body["BillOwnerIdList"] = request.billOwnerIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.billUserIdList)) {
            body["BillUserIdList"] = request.billUserIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.billingCycle)) {
            body["BillingCycle"] = request.billingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.costUnitCode)) {
            body["CostUnitCode"] = request.costUnitCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIdList)) {
            body["InstanceIdList"] = request.instanceIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            body["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productDetail)) {
            body["ProductDetail"] = request.productDetail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionType)) {
            body["SubscriptionType"] = request.subscriptionType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstanceDeductAmortizedCostByAmortizationPeriod",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceDeductAmortizedCostByAmortizationPeriodResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceDeductAmortizedCostByAmortizationPeriod(_ request: DescribeInstanceDeductAmortizedCostByAmortizationPeriodRequest) async throws -> DescribeInstanceDeductAmortizedCostByAmortizationPeriodResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceDeductAmortizedCostByAmortizationPeriodWithOptions(request as! DescribeInstanceDeductAmortizedCostByAmortizationPeriodRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePricingModuleWithOptions(_ request: DescribePricingModuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePricingModuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "DescribePricingModule",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePricingModuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePricingModule(_ request: DescribePricingModuleRequest) async throws -> DescribePricingModuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePricingModuleWithOptions(request as! DescribePricingModuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeProductAmortizedCostByAmortizationPeriodWithOptions(_ request: DescribeProductAmortizedCostByAmortizationPeriodRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeProductAmortizedCostByAmortizationPeriodResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billOwnerIdList)) {
            body["BillOwnerIdList"] = request.billOwnerIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.billUserIdList)) {
            body["BillUserIdList"] = request.billUserIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.billingCycle)) {
            body["BillingCycle"] = request.billingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.consumePeriodFilter)) {
            body["ConsumePeriodFilter"] = request.consumePeriodFilter ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.costUnitCode)) {
            body["CostUnitCode"] = request.costUnitCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            body["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productDetail)) {
            body["ProductDetail"] = request.productDetail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionType)) {
            body["SubscriptionType"] = request.subscriptionType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeProductAmortizedCostByAmortizationPeriod",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeProductAmortizedCostByAmortizationPeriodResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeProductAmortizedCostByAmortizationPeriod(_ request: DescribeProductAmortizedCostByAmortizationPeriodRequest) async throws -> DescribeProductAmortizedCostByAmortizationPeriodResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeProductAmortizedCostByAmortizationPeriodWithOptions(request as! DescribeProductAmortizedCostByAmortizationPeriodRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeProductAmortizedCostByConsumePeriodWithOptions(_ request: DescribeProductAmortizedCostByConsumePeriodRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeProductAmortizedCostByConsumePeriodResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.amortizationPeriodFilter)) {
            body["AmortizationPeriodFilter"] = request.amortizationPeriodFilter ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.billOwnerIdList)) {
            body["BillOwnerIdList"] = request.billOwnerIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.billUserIdList)) {
            body["BillUserIdList"] = request.billUserIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.billingCycle)) {
            body["BillingCycle"] = request.billingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.costUnitCode)) {
            body["CostUnitCode"] = request.costUnitCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            body["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            body["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productDetail)) {
            body["ProductDetail"] = request.productDetail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionType)) {
            body["SubscriptionType"] = request.subscriptionType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeProductAmortizedCostByConsumePeriod",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeProductAmortizedCostByConsumePeriodResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeProductAmortizedCostByConsumePeriod(_ request: DescribeProductAmortizedCostByConsumePeriodRequest) async throws -> DescribeProductAmortizedCostByConsumePeriodResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeProductAmortizedCostByConsumePeriodWithOptions(request as! DescribeProductAmortizedCostByConsumePeriodRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceCoverageDetailWithOptions(_ request: DescribeResourceCoverageDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeResourceCoverageDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billOwnerId)) {
            query["BillOwnerId"] = request.billOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.endPeriod)) {
            query["EndPeriod"] = request.endPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodType)) {
            query["PeriodType"] = request.periodType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startPeriod)) {
            query["StartPeriod"] = request.startPeriod ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeResourceCoverageDetail",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeResourceCoverageDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceCoverageDetail(_ request: DescribeResourceCoverageDetailRequest) async throws -> DescribeResourceCoverageDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeResourceCoverageDetailWithOptions(request as! DescribeResourceCoverageDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceCoverageTotalWithOptions(_ request: DescribeResourceCoverageTotalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeResourceCoverageTotalResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billOwnerId)) {
            query["BillOwnerId"] = request.billOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.endPeriod)) {
            query["EndPeriod"] = request.endPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodType)) {
            query["PeriodType"] = request.periodType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startPeriod)) {
            query["StartPeriod"] = request.startPeriod ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeResourceCoverageTotal",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeResourceCoverageTotalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceCoverageTotal(_ request: DescribeResourceCoverageTotalRequest) async throws -> DescribeResourceCoverageTotalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeResourceCoverageTotalWithOptions(request as! DescribeResourceCoverageTotalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourcePackageProductWithOptions(_ request: DescribeResourcePackageProductRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeResourcePackageProductResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeResourcePackageProduct",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeResourcePackageProductResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourcePackageProduct(_ request: DescribeResourcePackageProductRequest) async throws -> DescribeResourcePackageProductResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeResourcePackageProductWithOptions(request as! DescribeResourcePackageProductRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceUsageDetailWithOptions(_ request: DescribeResourceUsageDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeResourceUsageDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billOwnerId)) {
            query["BillOwnerId"] = request.billOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.endPeriod)) {
            query["EndPeriod"] = request.endPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodType)) {
            query["PeriodType"] = request.periodType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startPeriod)) {
            query["StartPeriod"] = request.startPeriod ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeResourceUsageDetail",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeResourceUsageDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceUsageDetail(_ request: DescribeResourceUsageDetailRequest) async throws -> DescribeResourceUsageDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeResourceUsageDetailWithOptions(request as! DescribeResourceUsageDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceUsageTotalWithOptions(_ request: DescribeResourceUsageTotalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeResourceUsageTotalResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billOwnerId)) {
            query["BillOwnerId"] = request.billOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.endPeriod)) {
            query["EndPeriod"] = request.endPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodType)) {
            query["PeriodType"] = request.periodType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startPeriod)) {
            query["StartPeriod"] = request.startPeriod ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeResourceUsageTotal",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeResourceUsageTotalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceUsageTotal(_ request: DescribeResourceUsageTotalRequest) async throws -> DescribeResourceUsageTotalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeResourceUsageTotalWithOptions(request as! DescribeResourceUsageTotalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSavingsPlansCoverageDetailWithOptions(_ request: DescribeSavingsPlansCoverageDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSavingsPlansCoverageDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billOwnerId)) {
            query["BillOwnerId"] = request.billOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.endPeriod)) {
            query["EndPeriod"] = request.endPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.periodType)) {
            query["PeriodType"] = request.periodType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startPeriod)) {
            query["StartPeriod"] = request.startPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSavingsPlansCoverageDetail",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSavingsPlansCoverageDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSavingsPlansCoverageDetail(_ request: DescribeSavingsPlansCoverageDetailRequest) async throws -> DescribeSavingsPlansCoverageDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSavingsPlansCoverageDetailWithOptions(request as! DescribeSavingsPlansCoverageDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSavingsPlansCoverageTotalWithOptions(_ request: DescribeSavingsPlansCoverageTotalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSavingsPlansCoverageTotalResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billOwnerId)) {
            query["BillOwnerId"] = request.billOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.endPeriod)) {
            query["EndPeriod"] = request.endPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodType)) {
            query["PeriodType"] = request.periodType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startPeriod)) {
            query["StartPeriod"] = request.startPeriod ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSavingsPlansCoverageTotal",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSavingsPlansCoverageTotalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSavingsPlansCoverageTotal(_ request: DescribeSavingsPlansCoverageTotalRequest) async throws -> DescribeSavingsPlansCoverageTotalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSavingsPlansCoverageTotalWithOptions(request as! DescribeSavingsPlansCoverageTotalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSavingsPlansUsageDetailWithOptions(_ request: DescribeSavingsPlansUsageDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSavingsPlansUsageDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billOwnerId)) {
            query["BillOwnerId"] = request.billOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.endPeriod)) {
            query["EndPeriod"] = request.endPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.periodType)) {
            query["PeriodType"] = request.periodType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startPeriod)) {
            query["StartPeriod"] = request.startPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.token)) {
            query["Token"] = request.token ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSavingsPlansUsageDetail",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSavingsPlansUsageDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSavingsPlansUsageDetail(_ request: DescribeSavingsPlansUsageDetailRequest) async throws -> DescribeSavingsPlansUsageDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSavingsPlansUsageDetailWithOptions(request as! DescribeSavingsPlansUsageDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSavingsPlansUsageTotalWithOptions(_ request: DescribeSavingsPlansUsageTotalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSavingsPlansUsageTotalResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billOwnerId)) {
            query["BillOwnerId"] = request.billOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.endPeriod)) {
            query["EndPeriod"] = request.endPeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.periodType)) {
            query["PeriodType"] = request.periodType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startPeriod)) {
            query["StartPeriod"] = request.startPeriod ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSavingsPlansUsageTotal",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSavingsPlansUsageTotalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSavingsPlansUsageTotal(_ request: DescribeSavingsPlansUsageTotalRequest) async throws -> DescribeSavingsPlansUsageTotalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSavingsPlansUsageTotalWithOptions(request as! DescribeSavingsPlansUsageTotalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSplitItemBillWithOptions(_ request: DescribeSplitItemBillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSplitItemBillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billOwnerId)) {
            query["BillOwnerId"] = request.billOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.billingCycle)) {
            query["BillingCycle"] = request.billingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.billingDate)) {
            query["BillingDate"] = request.billingDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.granularity)) {
            query["Granularity"] = request.granularity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceID)) {
            query["InstanceID"] = request.instanceID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isHideZeroCharge)) {
            query["IsHideZeroCharge"] = request.isHideZeroCharge!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pipCode)) {
            query["PipCode"] = request.pipCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.splitItemID)) {
            query["SplitItemID"] = request.splitItemID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionType)) {
            query["SubscriptionType"] = request.subscriptionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagFilter)) {
            query["TagFilter"] = request.tagFilter ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSplitItemBill",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSplitItemBillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSplitItemBill(_ request: DescribeSplitItemBillRequest) async throws -> DescribeSplitItemBillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSplitItemBillWithOptions(request as! DescribeSplitItemBillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAccountRelationWithOptions(_ request: GetAccountRelationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAccountRelationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAccountRelation",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAccountRelationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAccountRelation(_ request: GetAccountRelationRequest) async throws -> GetAccountRelationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAccountRelationWithOptions(request as! GetAccountRelationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomerAccountInfoWithOptions(_ request: GetCustomerAccountInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCustomerAccountInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCustomerAccountInfo",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCustomerAccountInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomerAccountInfo(_ request: GetCustomerAccountInfoRequest) async throws -> GetCustomerAccountInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCustomerAccountInfoWithOptions(request as! GetCustomerAccountInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomerListWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> GetCustomerListResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCustomerList",
            "version": "2017-12-14",
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
    public func getCustomerList() async throws -> GetCustomerListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCustomerListWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOrderDetailWithOptions(_ request: GetOrderDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOrderDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
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
            "version": "2017-12-14",
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
    public func getPayAsYouGoPriceWithOptions(_ request: GetPayAsYouGoPriceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPayAsYouGoPriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.moduleList)) {
            query["ModuleList"] = request.moduleList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionType)) {
            query["SubscriptionType"] = request.subscriptionType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPayAsYouGoPrice",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPayAsYouGoPriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPayAsYouGoPrice(_ request: GetPayAsYouGoPriceRequest) async throws -> GetPayAsYouGoPriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPayAsYouGoPriceWithOptions(request as! GetPayAsYouGoPriceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourcePackagePriceWithOptions(_ request: GetResourcePackagePriceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourcePackagePriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.duration)) {
            query["Duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.effectiveDate)) {
            query["EffectiveDate"] = request.effectiveDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderType)) {
            query["OrderType"] = request.orderType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.packageType)) {
            query["PackageType"] = request.packageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pricingCycle)) {
            query["PricingCycle"] = request.pricingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specification)) {
            query["Specification"] = request.specification ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourcePackagePrice",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourcePackagePriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourcePackagePrice(_ request: GetResourcePackagePriceRequest) async throws -> GetResourcePackagePriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourcePackagePriceWithOptions(request as! GetResourcePackagePriceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSubscriptionPriceWithOptions(_ request: GetSubscriptionPriceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSubscriptionPriceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleList)) {
            query["ModuleList"] = request.moduleList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.orderType)) {
            query["OrderType"] = request.orderType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quantity)) {
            query["Quantity"] = request.quantity!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.servicePeriodQuantity)) {
            query["ServicePeriodQuantity"] = request.servicePeriodQuantity!;
        }
        if (!TeaUtils.Client.isUnset(request.servicePeriodUnit)) {
            query["ServicePeriodUnit"] = request.servicePeriodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionType)) {
            query["SubscriptionType"] = request.subscriptionType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSubscriptionPrice",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSubscriptionPriceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSubscriptionPrice(_ request: GetSubscriptionPriceRequest) async throws -> GetSubscriptionPriceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSubscriptionPriceWithOptions(request as! GetSubscriptionPriceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func inquiryPriceRefundInstanceWithOptions(_ request: InquiryPriceRefundInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InquiryPriceRefundInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InquiryPriceRefundInstance",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InquiryPriceRefundInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func inquiryPriceRefundInstance(_ request: InquiryPriceRefundInstanceRequest) async throws -> InquiryPriceRefundInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await inquiryPriceRefundInstanceWithOptions(request as! InquiryPriceRefundInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAccountRelationWithOptions(_ request: ModifyAccountRelationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyAccountRelationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.childNick)) {
            query["ChildNick"] = request.childNick ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.childUserId)) {
            query["ChildUserId"] = request.childUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.parentUserId)) {
            query["ParentUserId"] = request.parentUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.permissionCodes)) {
            query["PermissionCodes"] = request.permissionCodes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.relationId)) {
            query["RelationId"] = request.relationId!;
        }
        if (!TeaUtils.Client.isUnset(request.relationOperation)) {
            query["RelationOperation"] = request.relationOperation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relationType)) {
            query["RelationType"] = request.relationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roleCodes)) {
            query["RoleCodes"] = request.roleCodes ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyAccountRelation",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyAccountRelationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyAccountRelation(_ request: ModifyAccountRelationRequest) async throws -> ModifyAccountRelationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyAccountRelationWithOptions(request as! ModifyAccountRelationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCostUnitWithOptions(_ request: ModifyCostUnitRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyCostUnitResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.unitEntityList)) {
            query["UnitEntityList"] = request.unitEntityList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyCostUnit",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyCostUnitResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCostUnit(_ request: ModifyCostUnitRequest) async throws -> ModifyCostUnitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyCostUnitWithOptions(request as! ModifyCostUnitRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstanceWithOptions(_ request: ModifyInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifyType)) {
            query["ModifyType"] = request.modifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.parameter)) {
            query["Parameter"] = request.parameter ?? [];
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
            "action": "ModifyInstance",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyInstance(_ request: ModifyInstanceRequest) async throws -> ModifyInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyInstanceWithOptions(request as! ModifyInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
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
            "version": "2017-12-14",
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
    public func queryAccountBalanceWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAccountBalanceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAccountBalance",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAccountBalanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountBalance() async throws -> QueryAccountBalanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAccountBalanceWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountBillWithOptions(_ request: QueryAccountBillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAccountBillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billOwnerId)) {
            query["BillOwnerId"] = request.billOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.billingCycle)) {
            query["BillingCycle"] = request.billingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.billingDate)) {
            query["BillingDate"] = request.billingDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.granularity)) {
            query["Granularity"] = request.granularity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isGroupByProduct)) {
            query["IsGroupByProduct"] = request.isGroupByProduct!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerID)) {
            query["OwnerID"] = request.ownerID!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAccountBill",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAccountBillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountBill(_ request: QueryAccountBillRequest) async throws -> QueryAccountBillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAccountBillWithOptions(request as! QueryAccountBillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountTransactionDetailsWithOptions(_ request: QueryAccountTransactionDetailsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAccountTransactionDetailsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createTimeEnd)) {
            query["CreateTimeEnd"] = request.createTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTimeStart)) {
            query["CreateTimeStart"] = request.createTimeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordID)) {
            query["RecordID"] = request.recordID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionChannel)) {
            query["TransactionChannel"] = request.transactionChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionChannelSN)) {
            query["TransactionChannelSN"] = request.transactionChannelSN ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionNumber)) {
            query["TransactionNumber"] = request.transactionNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionType)) {
            query["TransactionType"] = request.transactionType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAccountTransactionDetails",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAccountTransactionDetailsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountTransactionDetails(_ request: QueryAccountTransactionDetailsRequest) async throws -> QueryAccountTransactionDetailsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAccountTransactionDetailsWithOptions(request as! QueryAccountTransactionDetailsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountTransactionsWithOptions(_ request: QueryAccountTransactionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAccountTransactionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createTimeEnd)) {
            query["CreateTimeEnd"] = request.createTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTimeStart)) {
            query["CreateTimeStart"] = request.createTimeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.recordID)) {
            query["RecordID"] = request.recordID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionChannel)) {
            query["TransactionChannel"] = request.transactionChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionChannelSN)) {
            query["TransactionChannelSN"] = request.transactionChannelSN ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionFlow)) {
            query["TransactionFlow"] = request.transactionFlow ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionNumber)) {
            query["TransactionNumber"] = request.transactionNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.transactionType)) {
            query["TransactionType"] = request.transactionType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAccountTransactions",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAccountTransactionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAccountTransactions(_ request: QueryAccountTransactionsRequest) async throws -> QueryAccountTransactionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAccountTransactionsWithOptions(request as! QueryAccountTransactionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAvailableInstancesWithOptions(_ request: QueryAvailableInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAvailableInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createTimeEnd)) {
            query["CreateTimeEnd"] = request.createTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTimeStart)) {
            query["CreateTimeStart"] = request.createTimeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTimeEnd)) {
            query["EndTimeEnd"] = request.endTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTimeStart)) {
            query["EndTimeStart"] = request.endTimeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceIDs)) {
            query["InstanceIDs"] = request.instanceIDs ?? "";
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
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.renewStatus)) {
            query["RenewStatus"] = request.renewStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionType)) {
            query["SubscriptionType"] = request.subscriptionType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAvailableInstances",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAvailableInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAvailableInstances(_ request: QueryAvailableInstancesRequest) async throws -> QueryAvailableInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAvailableInstancesWithOptions(request as! QueryAvailableInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBillWithOptions(_ request: QueryBillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryBillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billOwnerId)) {
            query["BillOwnerId"] = request.billOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.billingCycle)) {
            query["BillingCycle"] = request.billingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isDisplayLocalCurrency)) {
            query["IsDisplayLocalCurrency"] = request.isDisplayLocalCurrency!;
        }
        if (!TeaUtils.Client.isUnset(request.isHideZeroCharge)) {
            query["IsHideZeroCharge"] = request.isHideZeroCharge!;
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
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionType)) {
            query["SubscriptionType"] = request.subscriptionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryBill",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryBillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBill(_ request: QueryBillRequest) async throws -> QueryBillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryBillWithOptions(request as! QueryBillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBillOverviewWithOptions(_ request: QueryBillOverviewRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryBillOverviewResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billOwnerId)) {
            query["BillOwnerId"] = request.billOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.billingCycle)) {
            query["BillingCycle"] = request.billingCycle ?? "";
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
            "action": "QueryBillOverview",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryBillOverviewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBillOverview(_ request: QueryBillOverviewRequest) async throws -> QueryBillOverviewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryBillOverviewWithOptions(request as! QueryBillOverviewRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBillToOSSSubscriptionWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> QueryBillToOSSSubscriptionResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryBillToOSSSubscription",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryBillToOSSSubscriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBillToOSSSubscription() async throws -> QueryBillToOSSSubscriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryBillToOSSSubscriptionWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCashCouponsWithOptions(_ request: QueryCashCouponsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCashCouponsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.effectiveOrNot)) {
            query["EffectiveOrNot"] = request.effectiveOrNot!;
        }
        if (!TeaUtils.Client.isUnset(request.expiryTimeEnd)) {
            query["ExpiryTimeEnd"] = request.expiryTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiryTimeStart)) {
            query["ExpiryTimeStart"] = request.expiryTimeStart ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCashCoupons",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCashCouponsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCashCoupons(_ request: QueryCashCouponsRequest) async throws -> QueryCashCouponsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCashCouponsWithOptions(request as! QueryCashCouponsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCommodityListWithOptions(_ request: QueryCommodityListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCommodityListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCommodityList",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCommodityListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCommodityList(_ request: QueryCommodityListRequest) async throws -> QueryCommodityListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCommodityListWithOptions(request as! QueryCommodityListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCostUnitWithOptions(_ request: QueryCostUnitRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCostUnitResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerUid)) {
            query["OwnerUid"] = request.ownerUid!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.parentUnitId)) {
            query["ParentUnitId"] = request.parentUnitId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCostUnit",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCostUnitResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCostUnit(_ request: QueryCostUnitRequest) async throws -> QueryCostUnitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCostUnitWithOptions(request as! QueryCostUnitRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCostUnitResourceWithOptions(_ request: QueryCostUnitResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCostUnitResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerUid)) {
            query["OwnerUid"] = request.ownerUid!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.unitId)) {
            query["UnitId"] = request.unitId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCostUnitResource",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCostUnitResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCostUnitResource(_ request: QueryCostUnitResourceRequest) async throws -> QueryCostUnitResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCostUnitResourceWithOptions(request as! QueryCostUnitResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCustomerAddressListWithOptions(_ request: QueryCustomerAddressListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCustomerAddressListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCustomerAddressList",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCustomerAddressListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCustomerAddressList(_ request: QueryCustomerAddressListRequest) async throws -> QueryCustomerAddressListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCustomerAddressListWithOptions(request as! QueryCustomerAddressListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDPUtilizationDetailWithOptions(_ request: QueryDPUtilizationDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDPUtilizationDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            query["CommodityCode"] = request.commodityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deductedInstanceId)) {
            query["DeductedInstanceId"] = request.deductedInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includeShare)) {
            query["IncludeShare"] = request.includeShare!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceSpec)) {
            query["InstanceSpec"] = request.instanceSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lastToken)) {
            query["LastToken"] = request.lastToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.prodCode)) {
            query["ProdCode"] = request.prodCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDPUtilizationDetail",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDPUtilizationDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDPUtilizationDetail(_ request: QueryDPUtilizationDetailRequest) async throws -> QueryDPUtilizationDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryDPUtilizationDetailWithOptions(request as! QueryDPUtilizationDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEvaluateListWithOptions(_ request: QueryEvaluateListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryEvaluateListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billCycle)) {
            query["BillCycle"] = request.billCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizTypeList)) {
            query["BizTypeList"] = request.bizTypeList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.endAmount)) {
            query["EndAmount"] = request.endAmount!;
        }
        if (!TeaUtils.Client.isUnset(request.endBizTime)) {
            query["EndBizTime"] = request.endBizTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endSearchTime)) {
            query["EndSearchTime"] = request.endSearchTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outBizId)) {
            query["OutBizId"] = request.outBizId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.sortType)) {
            query["SortType"] = request.sortType!;
        }
        if (!TeaUtils.Client.isUnset(request.startAmount)) {
            query["StartAmount"] = request.startAmount!;
        }
        if (!TeaUtils.Client.isUnset(request.startBizTime)) {
            query["StartBizTime"] = request.startBizTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startSearchTime)) {
            query["StartSearchTime"] = request.startSearchTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryEvaluateList",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryEvaluateListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryEvaluateList(_ request: QueryEvaluateListRequest) async throws -> QueryEvaluateListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryEvaluateListWithOptions(request as! QueryEvaluateListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFinancialAccountInfoWithOptions(_ request: QueryFinancialAccountInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryFinancialAccountInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryFinancialAccountInfo",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryFinancialAccountInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryFinancialAccountInfo(_ request: QueryFinancialAccountInfoRequest) async throws -> QueryFinancialAccountInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryFinancialAccountInfoWithOptions(request as! QueryFinancialAccountInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryInstanceBillWithOptions(_ request: QueryInstanceBillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryInstanceBillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billOwnerId)) {
            query["BillOwnerId"] = request.billOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.billingCycle)) {
            query["BillingCycle"] = request.billingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.billingDate)) {
            query["BillingDate"] = request.billingDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.granularity)) {
            query["Granularity"] = request.granularity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isBillingItem)) {
            query["IsBillingItem"] = request.isBillingItem!;
        }
        if (!TeaUtils.Client.isUnset(request.isHideZeroCharge)) {
            query["IsHideZeroCharge"] = request.isHideZeroCharge!;
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
            "action": "QueryInstanceBill",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryInstanceBillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryInstanceBill(_ request: QueryInstanceBillRequest) async throws -> QueryInstanceBillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryInstanceBillWithOptions(request as! QueryInstanceBillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryInstanceByTagWithOptions(_ request: QueryInstanceByTagRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryInstanceByTagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryInstanceByTag",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryInstanceByTagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryInstanceByTag(_ request: QueryInstanceByTagRequest) async throws -> QueryInstanceByTagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryInstanceByTagWithOptions(request as! QueryInstanceByTagRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryInstanceGaapCostWithOptions(_ request: QueryInstanceGaapCostRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryInstanceGaapCostResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billingCycle)) {
            query["BillingCycle"] = request.billingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
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
            "action": "QueryInstanceGaapCost",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryInstanceGaapCostResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryInstanceGaapCost(_ request: QueryInstanceGaapCostRequest) async throws -> QueryInstanceGaapCostResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryInstanceGaapCostWithOptions(request as! QueryInstanceGaapCostRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryInvoicingCustomerListWithOptions(_ request: QueryInvoicingCustomerListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryInvoicingCustomerListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryInvoicingCustomerList",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryInvoicingCustomerListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryInvoicingCustomerList(_ request: QueryInvoicingCustomerListRequest) async throws -> QueryInvoicingCustomerListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryInvoicingCustomerListWithOptions(request as! QueryInvoicingCustomerListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrdersWithOptions(_ request: QueryOrdersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryOrdersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createTimeEnd)) {
            query["CreateTimeEnd"] = request.createTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTimeStart)) {
            query["CreateTimeStart"] = request.createTimeStart ?? "";
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
            "action": "QueryOrders",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryOrdersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryOrders(_ request: QueryOrdersRequest) async throws -> QueryOrdersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryOrdersWithOptions(request as! QueryOrdersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPermissionListWithOptions(_ request: QueryPermissionListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPermissionListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.relationId)) {
            query["RelationId"] = request.relationId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryPermissionList",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPermissionListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPermissionList(_ request: QueryPermissionListRequest) async throws -> QueryPermissionListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryPermissionListWithOptions(request as! QueryPermissionListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPrepaidCardsWithOptions(_ request: QueryPrepaidCardsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPrepaidCardsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.effectiveOrNot)) {
            query["EffectiveOrNot"] = request.effectiveOrNot!;
        }
        if (!TeaUtils.Client.isUnset(request.expiryTimeEnd)) {
            query["ExpiryTimeEnd"] = request.expiryTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiryTimeStart)) {
            query["ExpiryTimeStart"] = request.expiryTimeStart ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryPrepaidCards",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPrepaidCardsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPrepaidCards(_ request: QueryPrepaidCardsRequest) async throws -> QueryPrepaidCardsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryPrepaidCardsWithOptions(request as! QueryPrepaidCardsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPriceEntityListWithOptions(_ request: QueryPriceEntityListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPriceEntityListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryPriceEntityList",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPriceEntityListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPriceEntityList(_ request: QueryPriceEntityListRequest) async throws -> QueryPriceEntityListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryPriceEntityListWithOptions(request as! QueryPriceEntityListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryProductListWithOptions(_ request: QueryProductListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryProductListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.queryTotalCount)) {
            query["QueryTotalCount"] = request.queryTotalCount!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryProductList",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryProductListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryProductList(_ request: QueryProductListRequest) async throws -> QueryProductListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryProductListWithOptions(request as! QueryProductListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRIUtilizationDetailWithOptions(_ request: QueryRIUtilizationDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRIUtilizationDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deductedInstanceId)) {
            query["DeductedInstanceId"] = request.deductedInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceSpec)) {
            query["InstanceSpec"] = request.instanceSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.RICommodityCode)) {
            query["RICommodityCode"] = request.RICommodityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.RIInstanceId)) {
            query["RIInstanceId"] = request.RIInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRIUtilizationDetail",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRIUtilizationDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRIUtilizationDetail(_ request: QueryRIUtilizationDetailRequest) async throws -> QueryRIUtilizationDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRIUtilizationDetailWithOptions(request as! QueryRIUtilizationDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRedeemWithOptions(_ request: QueryRedeemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRedeemResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRedeem",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRedeemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRedeem(_ request: QueryRedeemRequest) async throws -> QueryRedeemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRedeemWithOptions(request as! QueryRedeemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRelationListWithOptions(_ request: QueryRelationListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRelationListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.statusList)) {
            query["StatusList"] = request.statusList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRelationList",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRelationListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRelationList(_ request: QueryRelationListRequest) async throws -> QueryRelationListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRelationListWithOptions(request as! QueryRelationListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryResellerAvailableQuotaWithOptions(_ request: QueryResellerAvailableQuotaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryResellerAvailableQuotaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.itemCodes)) {
            query["ItemCodes"] = request.itemCodes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryResellerAvailableQuota",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryResellerAvailableQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryResellerAvailableQuota(_ request: QueryResellerAvailableQuotaRequest) async throws -> QueryResellerAvailableQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryResellerAvailableQuotaWithOptions(request as! QueryResellerAvailableQuotaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryResellerUserAlarmThresholdWithOptions(_ request: QueryResellerUserAlarmThresholdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryResellerUserAlarmThresholdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alarmType)) {
            query["AlarmType"] = request.alarmType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryResellerUserAlarmThreshold",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryResellerUserAlarmThresholdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryResellerUserAlarmThreshold(_ request: QueryResellerUserAlarmThresholdRequest) async throws -> QueryResellerUserAlarmThresholdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryResellerUserAlarmThresholdWithOptions(request as! QueryResellerUserAlarmThresholdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryResourcePackageInstancesWithOptions(_ request: QueryResourcePackageInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryResourcePackageInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.expiryTimeEnd)) {
            query["ExpiryTimeEnd"] = request.expiryTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiryTimeStart)) {
            query["ExpiryTimeStart"] = request.expiryTimeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includePartner)) {
            query["IncludePartner"] = request.includePartner!;
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
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryResourcePackageInstances",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryResourcePackageInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryResourcePackageInstances(_ request: QueryResourcePackageInstancesRequest) async throws -> QueryResourcePackageInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryResourcePackageInstancesWithOptions(request as! QueryResourcePackageInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySavingsPlansDeductLogWithOptions(_ request: QuerySavingsPlansDeductLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySavingsPlansDeductLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.locale)) {
            query["Locale"] = request.locale ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySavingsPlansDeductLog",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySavingsPlansDeductLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySavingsPlansDeductLog(_ request: QuerySavingsPlansDeductLogRequest) async throws -> QuerySavingsPlansDeductLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySavingsPlansDeductLogWithOptions(request as! QuerySavingsPlansDeductLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySavingsPlansDiscountWithOptions(_ request: QuerySavingsPlansDiscountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySavingsPlansDiscountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySavingsPlansDiscount",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySavingsPlansDiscountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySavingsPlansDiscount(_ request: QuerySavingsPlansDiscountRequest) async throws -> QuerySavingsPlansDiscountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySavingsPlansDiscountWithOptions(request as! QuerySavingsPlansDiscountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySavingsPlansInstanceWithOptions(_ request: QuerySavingsPlansInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySavingsPlansInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commodityCode)) {
            query["CommodityCode"] = request.commodityCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.locale)) {
            query["Locale"] = request.locale ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySavingsPlansInstance",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySavingsPlansInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySavingsPlansInstance(_ request: QuerySavingsPlansInstanceRequest) async throws -> QuerySavingsPlansInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySavingsPlansInstanceWithOptions(request as! QuerySavingsPlansInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySettleBillWithOptions(_ request: QuerySettleBillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySettleBillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billOwnerId)) {
            query["BillOwnerId"] = request.billOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.billingCycle)) {
            query["BillingCycle"] = request.billingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isDisplayLocalCurrency)) {
            query["IsDisplayLocalCurrency"] = request.isDisplayLocalCurrency!;
        }
        if (!TeaUtils.Client.isUnset(request.isHideZeroCharge)) {
            query["IsHideZeroCharge"] = request.isHideZeroCharge!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordID)) {
            query["RecordID"] = request.recordID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionType)) {
            query["SubscriptionType"] = request.subscriptionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySettleBill",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySettleBillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySettleBill(_ request: QuerySettleBillRequest) async throws -> QuerySettleBillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySettleBillWithOptions(request as! QuerySettleBillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySkuPriceListWithOptions(_ tmpReq: QuerySkuPriceListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySkuPriceListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QuerySkuPriceListShrinkRequest = QuerySkuPriceListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.priceFactorConditionMap)) {
            request.priceFactorConditionMapShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.priceFactorConditionMap, "PriceFactorConditionMap", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QuerySkuPriceList",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySkuPriceListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySkuPriceList(_ request: QuerySkuPriceListRequest) async throws -> QuerySkuPriceListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySkuPriceListWithOptions(request as! QuerySkuPriceListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySplitItemBillWithOptions(_ request: QuerySplitItemBillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QuerySplitItemBillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billOwnerId)) {
            query["BillOwnerId"] = request.billOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.billingCycle)) {
            query["BillingCycle"] = request.billingCycle ?? "";
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
            "action": "QuerySplitItemBill",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QuerySplitItemBillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func querySplitItemBill(_ request: QuerySplitItemBillRequest) async throws -> QuerySplitItemBillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await querySplitItemBillWithOptions(request as! QuerySplitItemBillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserOmsDataWithOptions(_ request: QueryUserOmsDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUserOmsDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            query["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.marker)) {
            query["Marker"] = request.marker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.table)) {
            query["Table"] = request.table ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUserOmsData",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUserOmsDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUserOmsData(_ request: QueryUserOmsDataRequest) async throws -> QueryUserOmsDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryUserOmsDataWithOptions(request as! QueryUserOmsDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refundInstanceWithOptions(_ request: RefundInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefundInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.immediatelyRelease)) {
            query["ImmediatelyRelease"] = request.immediatelyRelease ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefundInstance",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefundInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refundInstance(_ request: RefundInstanceRequest) async throws -> RefundInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await refundInstanceWithOptions(request as! RefundInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseInstanceWithOptions(_ request: ReleaseInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIds)) {
            query["InstanceIds"] = request.instanceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.renewStatus)) {
            query["RenewStatus"] = request.renewStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionType)) {
            query["SubscriptionType"] = request.subscriptionType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseInstance",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReleaseInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseInstance(_ request: ReleaseInstanceRequest) async throws -> ReleaseInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await releaseInstanceWithOptions(request as! ReleaseInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func relieveAccountRelationWithOptions(_ request: RelieveAccountRelationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RelieveAccountRelationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.childUserId)) {
            query["ChildUserId"] = request.childUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.parentUserId)) {
            query["ParentUserId"] = request.parentUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.relationId)) {
            query["RelationId"] = request.relationId!;
        }
        if (!TeaUtils.Client.isUnset(request.relationType)) {
            query["RelationType"] = request.relationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            query["RequestId"] = request.requestId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RelieveAccountRelation",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RelieveAccountRelationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func relieveAccountRelation(_ request: RelieveAccountRelationRequest) async throws -> RelieveAccountRelationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await relieveAccountRelationWithOptions(request as! RelieveAccountRelationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewChangeInstanceWithOptions(_ request: RenewChangeInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewChangeInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.parameter)) {
            query["Parameter"] = request.parameter ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.renewPeriod)) {
            query["RenewPeriod"] = request.renewPeriod!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenewChangeInstance",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenewChangeInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewChangeInstance(_ request: RenewChangeInstanceRequest) async throws -> RenewChangeInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renewChangeInstanceWithOptions(request as! RenewChangeInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewInstanceWithOptions(_ request: RenewInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.renewPeriod)) {
            query["RenewPeriod"] = request.renewPeriod!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenewInstance",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenewInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewInstance(_ request: RenewInstanceRequest) async throws -> RenewInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renewInstanceWithOptions(request as! RenewInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewResourcePackageWithOptions(_ request: RenewResourcePackageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewResourcePackageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.duration)) {
            query["Duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.effectiveDate)) {
            query["EffectiveDate"] = request.effectiveDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pricingCycle)) {
            query["PricingCycle"] = request.pricingCycle ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenewResourcePackage",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenewResourcePackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewResourcePackage(_ request: RenewResourcePackageRequest) async throws -> RenewResourcePackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renewResourcePackageWithOptions(request as! RenewResourcePackageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setAllExpirationDayWithOptions(_ request: SetAllExpirationDayRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetAllExpirationDayResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.unifyExpireDay)) {
            query["UnifyExpireDay"] = request.unifyExpireDay ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetAllExpirationDay",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetAllExpirationDayResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setAllExpirationDay(_ request: SetAllExpirationDayRequest) async throws -> SetAllExpirationDayResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setAllExpirationDayWithOptions(request as! SetAllExpirationDayRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setRenewalWithOptions(_ request: SetRenewalRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetRenewalResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceIDs)) {
            query["InstanceIDs"] = request.instanceIDs ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productType)) {
            query["ProductType"] = request.productType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.renewalPeriod)) {
            query["RenewalPeriod"] = request.renewalPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.renewalPeriodUnit)) {
            query["RenewalPeriodUnit"] = request.renewalPeriodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.renewalStatus)) {
            query["RenewalStatus"] = request.renewalStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionType)) {
            query["SubscriptionType"] = request.subscriptionType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetRenewal",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetRenewalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setRenewal(_ request: SetRenewalRequest) async throws -> SetRenewalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setRenewalWithOptions(request as! SetRenewalRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setResellerUserAlarmThresholdWithOptions(_ request: SetResellerUserAlarmThresholdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetResellerUserAlarmThresholdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alarmThresholds)) {
            query["AlarmThresholds"] = request.alarmThresholds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alarmType)) {
            query["AlarmType"] = request.alarmType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetResellerUserAlarmThreshold",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetResellerUserAlarmThresholdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setResellerUserAlarmThreshold(_ request: SetResellerUserAlarmThresholdRequest) async throws -> SetResellerUserAlarmThresholdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setResellerUserAlarmThresholdWithOptions(request as! SetResellerUserAlarmThresholdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setResellerUserQuotaWithOptions(_ request: SetResellerUserQuotaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetResellerUserQuotaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currency)) {
            query["Currency"] = request.currency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outBizId)) {
            query["OutBizId"] = request.outBizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetResellerUserQuota",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetResellerUserQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setResellerUserQuota(_ request: SetResellerUserQuotaRequest) async throws -> SetResellerUserQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setResellerUserQuotaWithOptions(request as! SetResellerUserQuotaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setResellerUserStatusWithOptions(_ request: SetResellerUserStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetResellerUserStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.businessType)) {
            query["BusinessType"] = request.businessType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stopMode)) {
            query["StopMode"] = request.stopMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetResellerUserStatus",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetResellerUserStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setResellerUserStatus(_ request: SetResellerUserStatusRequest) async throws -> SetResellerUserStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setResellerUserStatusWithOptions(request as! SetResellerUserStatusRequest, runtime as! TeaUtils.RuntimeOptions)
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
            "version": "2017-12-14",
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

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func subscribeBillToOSSWithOptions(_ request: SubscribeBillToOSSRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubscribeBillToOSSResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginBillingCycle)) {
            query["BeginBillingCycle"] = request.beginBillingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bucketOwnerId)) {
            query["BucketOwnerId"] = request.bucketOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.bucketPath)) {
            query["BucketPath"] = request.bucketPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.multAccountRelSubscribe)) {
            query["MultAccountRelSubscribe"] = request.multAccountRelSubscribe ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rowLimitPerFile)) {
            query["RowLimitPerFile"] = request.rowLimitPerFile!;
        }
        if (!TeaUtils.Client.isUnset(request.subscribeBucket)) {
            query["SubscribeBucket"] = request.subscribeBucket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscribeType)) {
            query["SubscribeType"] = request.subscribeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usingSsl)) {
            query["UsingSsl"] = request.usingSsl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubscribeBillToOSS",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubscribeBillToOSSResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func subscribeBillToOSS(_ request: SubscribeBillToOSSRequest) async throws -> SubscribeBillToOSSResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await subscribeBillToOSSWithOptions(request as! SubscribeBillToOSSRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesWithOptions(_ request: TagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagResources",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResources(_ request: TagResourcesRequest) async throws -> TagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await tagResourcesWithOptions(request as! TagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unsubscribeBillToOSSWithOptions(_ request: UnsubscribeBillToOSSRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnsubscribeBillToOSSResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.multAccountRelSubscribe)) {
            query["MultAccountRelSubscribe"] = request.multAccountRelSubscribe ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscribeType)) {
            query["SubscribeType"] = request.subscribeType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnsubscribeBillToOSS",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnsubscribeBillToOSSResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unsubscribeBillToOSS(_ request: UnsubscribeBillToOSSRequest) async throws -> UnsubscribeBillToOSSResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unsubscribeBillToOSSWithOptions(request as! UnsubscribeBillToOSSRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResourcesWithOptions(_ request: UntagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UntagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.all)) {
            query["All"] = request.all!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKey)) {
            query["TagKey"] = request.tagKey ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UntagResources",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UntagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResources(_ request: UntagResourcesRequest) async throws -> UntagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await untagResourcesWithOptions(request as! UntagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeResourcePackageWithOptions(_ request: UpgradeResourcePackageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeResourcePackageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.effectiveDate)) {
            query["EffectiveDate"] = request.effectiveDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.specification)) {
            query["Specification"] = request.specification ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpgradeResourcePackage",
            "version": "2017-12-14",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeResourcePackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeResourcePackage(_ request: UpgradeResourcePackageRequest) async throws -> UpgradeResourcePackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await upgradeResourcePackageWithOptions(request as! UpgradeResourcePackageRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
