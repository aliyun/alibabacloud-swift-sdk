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
            "ap-northeast-1": "agency.aliyuncs.com",
            "ap-northeast-2-pop": "agency.aliyuncs.com",
            "ap-south-1": "agency.aliyuncs.com",
            "ap-southeast-2": "agency.aliyuncs.com",
            "ap-southeast-3": "agency.aliyuncs.com",
            "ap-southeast-5": "agency.aliyuncs.com",
            "cn-beijing": "agency.aliyuncs.com",
            "cn-beijing-finance-1": "agency.aliyuncs.com",
            "cn-beijing-finance-pop": "agency.aliyuncs.com",
            "cn-beijing-gov-1": "agency.aliyuncs.com",
            "cn-beijing-nu16-b01": "agency.aliyuncs.com",
            "cn-chengdu": "agency.aliyuncs.com",
            "cn-edge-1": "agency.aliyuncs.com",
            "cn-fujian": "agency.aliyuncs.com",
            "cn-haidian-cm12-c01": "agency.aliyuncs.com",
            "cn-hangzhou": "agency.aliyuncs.com",
            "cn-hangzhou-bj-b01": "agency.aliyuncs.com",
            "cn-hangzhou-finance": "agency.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "agency.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "agency.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "agency.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "agency.aliyuncs.com",
            "cn-hangzhou-test-306": "agency.aliyuncs.com",
            "cn-hongkong": "agency.aliyuncs.com",
            "cn-hongkong-finance-pop": "agency.aliyuncs.com",
            "cn-huhehaote": "agency.aliyuncs.com",
            "cn-huhehaote-nebula-1": "agency.aliyuncs.com",
            "cn-north-2-gov-1": "agency.aliyuncs.com",
            "cn-qingdao": "agency.aliyuncs.com",
            "cn-qingdao-nebula": "agency.aliyuncs.com",
            "cn-shanghai": "agency.aliyuncs.com",
            "cn-shanghai-et15-b01": "agency.aliyuncs.com",
            "cn-shanghai-et2-b01": "agency.aliyuncs.com",
            "cn-shanghai-finance-1": "agency.aliyuncs.com",
            "cn-shanghai-inner": "agency.aliyuncs.com",
            "cn-shanghai-internal-test-1": "agency.aliyuncs.com",
            "cn-shenzhen": "agency.aliyuncs.com",
            "cn-shenzhen-finance-1": "agency.aliyuncs.com",
            "cn-shenzhen-inner": "agency.aliyuncs.com",
            "cn-shenzhen-st4-d01": "agency.aliyuncs.com",
            "cn-shenzhen-su18-b01": "agency.aliyuncs.com",
            "cn-wuhan": "agency.aliyuncs.com",
            "cn-wulanchabu": "agency.aliyuncs.com",
            "cn-yushanfang": "agency.aliyuncs.com",
            "cn-zhangbei": "agency.aliyuncs.com",
            "cn-zhangbei-na61-b01": "agency.aliyuncs.com",
            "cn-zhangjiakou": "agency.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "agency.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "agency.aliyuncs.com",
            "eu-central-1": "agency.aliyuncs.com",
            "eu-west-1": "agency.aliyuncs.com",
            "eu-west-1-oxs": "agency.aliyuncs.com",
            "me-east-1": "agency.aliyuncs.com",
            "rus-west-1-pop": "agency.aliyuncs.com",
            "us-east-1": "agency.aliyuncs.com",
            "us-west-1": "agency.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("agency", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func cancelSubscriptionBillWithOptions(_ request: CancelSubscriptionBillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelSubscriptionBillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.subscribeType)) {
            query["SubscribeType"] = request.subscribeType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelSubscriptionBill",
            "version": "2022-12-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelSubscriptionBillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelSubscriptionBill(_ request: CancelSubscriptionBillRequest) async throws -> CancelSubscriptionBillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelSubscriptionBillWithOptions(request as! CancelSubscriptionBillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCustomerWithOptions(_ request: CreateCustomerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCustomerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customerName)) {
            query["CustomerName"] = request.customerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerSource)) {
            query["CustomerSource"] = request.customerSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerSubTrade)) {
            query["CustomerSubTrade"] = request.customerSubTrade ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerTrade)) {
            query["CustomerTrade"] = request.customerTrade ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nation)) {
            query["Nation"] = request.nation ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCustomer",
            "version": "2022-12-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCustomerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCustomer(_ request: CreateCustomerRequest) async throws -> CreateCustomerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCustomerWithOptions(request as! CreateCustomerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deductOutstandingBalanceWithOptions(_ request: DeductOutstandingBalanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeductOutstandingBalanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deductAmount)) {
            query["DeductAmount"] = request.deductAmount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["Uid"] = request.uid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeductOutstandingBalance",
            "version": "2022-12-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeductOutstandingBalanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deductOutstandingBalance(_ request: DeductOutstandingBalanceRequest) async throws -> DeductOutstandingBalanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deductOutstandingBalanceWithOptions(request as! DeductOutstandingBalanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func editEndUserStatusWithOptions(_ request: EditEndUserStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EditEndUserStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EditEndUserStatus",
            "version": "2022-12-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EditEndUserStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func editEndUserStatus(_ request: EditEndUserStatusRequest) async throws -> EditEndUserStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await editEndUserStatusWithOptions(request as! EditEndUserStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func editNewBuyStatusWithOptions(_ request: EditNewBuyStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EditNewBuyStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.newBuyStatus)) {
            query["NewBuyStatus"] = request.newBuyStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["Uid"] = request.uid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EditNewBuyStatus",
            "version": "2022-12-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EditNewBuyStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func editNewBuyStatus(_ request: EditNewBuyStatusRequest) async throws -> EditNewBuyStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await editNewBuyStatusWithOptions(request as! EditNewBuyStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func editZeroCreditShutdownWithOptions(_ request: EditZeroCreditShutdownRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EditZeroCreditShutdownResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.shutdownPolicy)) {
            query["ShutdownPolicy"] = request.shutdownPolicy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["Uid"] = request.uid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EditZeroCreditShutdown",
            "version": "2022-12-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EditZeroCreditShutdownResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func editZeroCreditShutdown(_ request: EditZeroCreditShutdownRequest) async throws -> EditZeroCreditShutdownResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await editZeroCreditShutdownWithOptions(request as! EditZeroCreditShutdownRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAccountInfoWithOptions(_ request: GetAccountInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAccountInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAccountInfo",
            "version": "2022-12-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAccountInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAccountInfo(_ request: GetAccountInfoRequest) async throws -> GetAccountInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAccountInfoWithOptions(request as! GetAccountInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCreditInfoWithOptions(_ request: GetCreditInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCreditInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCreditInfo",
            "version": "2022-12-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCreditInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCreditInfo(_ request: GetCreditInfoRequest) async throws -> GetCreditInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCreditInfoWithOptions(request as! GetCreditInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDailyBillWithOptions(_ request: GetDailyBillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDailyBillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billOwner)) {
            query["BillOwner"] = request.billOwner ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.billType)) {
            query["BillType"] = request.billType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.date)) {
            query["Date"] = request.date ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDailyBill",
            "version": "2022-12-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDailyBillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDailyBill(_ request: GetDailyBillRequest) async throws -> GetDailyBillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDailyBillWithOptions(request as! GetDailyBillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInviteStatusWithOptions(_ request: GetInviteStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInviteStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.inviteStatusList)) {
            query["InviteStatusList"] = request.inviteStatusList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInviteStatus",
            "version": "2022-12-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInviteStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInviteStatus(_ request: GetInviteStatusRequest) async throws -> GetInviteStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getInviteStatusWithOptions(request as! GetInviteStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMonthlyBillWithOptions(_ request: GetMonthlyBillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMonthlyBillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billOwner)) {
            query["BillOwner"] = request.billOwner ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.billType)) {
            query["BillType"] = request.billType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.month)) {
            query["Month"] = request.month ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMonthlyBill",
            "version": "2022-12-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMonthlyBillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMonthlyBill(_ request: GetMonthlyBillRequest) async throws -> GetMonthlyBillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMonthlyBillWithOptions(request as! GetMonthlyBillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUnassociatedCustomerWithOptions(_ request: GetUnassociatedCustomerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUnassociatedCustomerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUnassociatedCustomer",
            "version": "2022-12-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUnassociatedCustomerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUnassociatedCustomer(_ request: GetUnassociatedCustomerRequest) async throws -> GetUnassociatedCustomerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getUnassociatedCustomerWithOptions(request as! GetUnassociatedCustomerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func inviteSubAccountWithOptions(_ request: InviteSubAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> InviteSubAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountInfoList)) {
            query["AccountInfoList"] = request.accountInfoList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InviteSubAccount",
            "version": "2022-12-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InviteSubAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func inviteSubAccount(_ request: InviteSubAccountRequest) async throws -> InviteSubAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await inviteSubAccountWithOptions(request as! InviteSubAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCountriesWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListCountriesResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCountries",
            "version": "2022-12-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCountriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCountries() async throws -> ListCountriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listCountriesWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resendEmailWithOptions(_ request: ResendEmailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResendEmailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.inviteId)) {
            query["InviteId"] = request.inviteId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResendEmail",
            "version": "2022-12-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResendEmailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resendEmail(_ request: ResendEmailRequest) async throws -> ResendEmailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resendEmailWithOptions(request as! ResendEmailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setAccountInfoWithOptions(_ request: SetAccountInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetAccountInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountNickname)) {
            query["AccountNickname"] = request.accountNickname ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["Uid"] = request.uid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetAccountInfo",
            "version": "2022-12-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetAccountInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setAccountInfo(_ request: SetAccountInfoRequest) async throws -> SetAccountInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setAccountInfoWithOptions(request as! SetAccountInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setCreditLineWithOptions(_ request: SetCreditLineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetCreditLineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.creditLine)) {
            query["CreditLine"] = request.creditLine ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["Uid"] = request.uid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetCreditLine",
            "version": "2022-12-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetCreditLineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setCreditLine(_ request: SetCreditLineRequest) async throws -> SetCreditLineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setCreditLineWithOptions(request as! SetCreditLineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setWarningThresholdWithOptions(_ request: SetWarningThresholdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetWarningThresholdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.uid)) {
            query["Uid"] = request.uid!;
        }
        if (!TeaUtils.Client.isUnset(request.warningValue)) {
            query["WarningValue"] = request.warningValue ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetWarningThreshold",
            "version": "2022-12-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetWarningThresholdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setWarningThreshold(_ request: SetWarningThresholdRequest) async throws -> SetWarningThresholdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setWarningThresholdWithOptions(request as! SetWarningThresholdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func subscriptionBillWithOptions(_ request: SubscriptionBillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubscriptionBillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.beginBillingCycle)) {
            query["BeginBillingCycle"] = request.beginBillingCycle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.billFormat)) {
            query["BillFormat"] = request.billFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bucketOwnerId)) {
            query["BucketOwnerId"] = request.bucketOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.subscribeBucket)) {
            query["SubscribeBucket"] = request.subscribeBucket ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscribeSegmentSize)) {
            query["SubscribeSegmentSize"] = request.subscribeSegmentSize!;
        }
        if (!TeaUtils.Client.isUnset(request.subscribeType)) {
            query["SubscribeType"] = request.subscribeType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubscriptionBill",
            "version": "2022-12-16",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubscriptionBillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func subscriptionBill(_ request: SubscriptionBillRequest) async throws -> SubscriptionBillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await subscriptionBillWithOptions(request as! SubscriptionBillRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
