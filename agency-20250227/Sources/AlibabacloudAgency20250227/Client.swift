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
    public func getBillDetailFileListWithOptions(_ request: GetBillDetailFileListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBillDetailFileListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billMonth)) {
            query["BillMonth"] = request.billMonth ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossAccessKeyId)) {
            query["OssAccessKeyId"] = request.ossAccessKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossAccessKeySecret)) {
            query["OssAccessKeySecret"] = request.ossAccessKeySecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossBucketName)) {
            query["OssBucketName"] = request.ossBucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossEndpoint)) {
            query["OssEndpoint"] = request.ossEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossRegion)) {
            query["OssRegion"] = request.ossRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossSecurityToken)) {
            query["OssSecurityToken"] = request.ossSecurityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBillDetailFileList",
            "version": "2025-02-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBillDetailFileListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBillDetailFileList(_ request: GetBillDetailFileListRequest) async throws -> GetBillDetailFileListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBillDetailFileListWithOptions(request as! GetBillDetailFileListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCommissionDetailFileListWithOptions(_ request: GetCommissionDetailFileListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCommissionDetailFileListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.billMonth)) {
            query["BillMonth"] = request.billMonth ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossAccessKeyId)) {
            query["OssAccessKeyId"] = request.ossAccessKeyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossAccessKeySecret)) {
            query["OssAccessKeySecret"] = request.ossAccessKeySecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossBucketName)) {
            query["OssBucketName"] = request.ossBucketName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossEndpoint)) {
            query["OssEndpoint"] = request.ossEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossRegion)) {
            query["OssRegion"] = request.ossRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossSecurityToken)) {
            query["OssSecurityToken"] = request.ossSecurityToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCommissionDetailFileList",
            "version": "2025-02-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCommissionDetailFileListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCommissionDetailFileList(_ request: GetCommissionDetailFileListRequest) async throws -> GetCommissionDetailFileListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCommissionDetailFileListWithOptions(request as! GetCommissionDetailFileListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomerOrderListWithOptions(_ tmpReq: GetCustomerOrderListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCustomerOrderListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetCustomerOrderListShrinkRequest = GetCustomerOrderListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.orderTypeList)) {
            request.orderTypeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.orderTypeList, "OrderTypeList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customerAccount)) {
            query["CustomerAccount"] = request.customerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerUid)) {
            query["CustomerUid"] = request.customerUid!;
        }
        if (!TeaUtils.Client.isUnset(request.orderCreateAfter)) {
            query["OrderCreateAfter"] = request.orderCreateAfter!;
        }
        if (!TeaUtils.Client.isUnset(request.orderCreateBefore)) {
            query["OrderCreateBefore"] = request.orderCreateBefore!;
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.orderPayAfter)) {
            query["OrderPayAfter"] = request.orderPayAfter!;
        }
        if (!TeaUtils.Client.isUnset(request.orderPayBefore)) {
            query["OrderPayBefore"] = request.orderPayBefore!;
        }
        if (!TeaUtils.Client.isUnset(request.orderStatus)) {
            query["OrderStatus"] = request.orderStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.orderTypeListShrink)) {
            query["OrderTypeList"] = request.orderTypeListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.payAmountAfter)) {
            query["PayAmountAfter"] = request.payAmountAfter!;
        }
        if (!TeaUtils.Client.isUnset(request.payAmountBefore)) {
            query["PayAmountBefore"] = request.payAmountBefore!;
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            query["PayType"] = request.payType!;
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productName)) {
            query["ProductName"] = request.productName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        if (!TeaUtils.Client.isUnset(request.ramAccountForCustomerManager)) {
            query["RamAccountForCustomerManager"] = request.ramAccountForCustomerManager ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCustomerOrderList",
            "version": "2025-02-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCustomerOrderListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCustomerOrderList(_ request: GetCustomerOrderListRequest) async throws -> GetCustomerOrderListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCustomerOrderListWithOptions(request as! GetCustomerOrderListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRenewalRateListWithOptions(_ request: GetRenewalRateListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRenewalRateListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fiscalYearAndQuarter)) {
            query["FiscalYearAndQuarter"] = request.fiscalYearAndQuarter ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRenewalRateList",
            "version": "2025-02-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRenewalRateListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRenewalRateList(_ request: GetRenewalRateListRequest) async throws -> GetRenewalRateListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRenewalRateListWithOptions(request as! GetRenewalRateListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSubPartnerListWithOptions(_ request: GetSubPartnerListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSubPartnerListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.subPartnerCompanyName)) {
            query["SubPartnerCompanyName"] = request.subPartnerCompanyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subPartnerPid)) {
            query["SubPartnerPid"] = request.subPartnerPid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSubPartnerList",
            "version": "2025-02-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSubPartnerListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSubPartnerList(_ request: GetSubPartnerListRequest) async throws -> GetSubPartnerListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSubPartnerListWithOptions(request as! GetSubPartnerListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSubPartnerOrderListWithOptions(_ tmpReq: GetSubPartnerOrderListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSubPartnerOrderListResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetSubPartnerOrderListShrinkRequest = GetSubPartnerOrderListShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.orderTypeList)) {
            request.orderTypeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.orderTypeList, "OrderTypeList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderCreateAfter)) {
            query["OrderCreateAfter"] = request.orderCreateAfter!;
        }
        if (!TeaUtils.Client.isUnset(request.orderCreateBefore)) {
            query["OrderCreateBefore"] = request.orderCreateBefore!;
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId!;
        }
        if (!TeaUtils.Client.isUnset(request.orderPayAfter)) {
            query["OrderPayAfter"] = request.orderPayAfter!;
        }
        if (!TeaUtils.Client.isUnset(request.orderPayBefore)) {
            query["OrderPayBefore"] = request.orderPayBefore!;
        }
        if (!TeaUtils.Client.isUnset(request.orderStatus)) {
            query["OrderStatus"] = request.orderStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.orderTypeListShrink)) {
            query["OrderTypeList"] = request.orderTypeListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.payAmountAfter)) {
            query["PayAmountAfter"] = request.payAmountAfter!;
        }
        if (!TeaUtils.Client.isUnset(request.payAmountBefore)) {
            query["PayAmountBefore"] = request.payAmountBefore!;
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            query["PayType"] = request.payType!;
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            query["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productName)) {
            query["ProductName"] = request.productName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectId)) {
            query["ProjectId"] = request.projectId!;
        }
        if (!TeaUtils.Client.isUnset(request.subPartnerName)) {
            query["SubPartnerName"] = request.subPartnerName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subPartnerUid)) {
            query["SubPartnerUid"] = request.subPartnerUid!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSubPartnerOrderList",
            "version": "2025-02-27",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSubPartnerOrderListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSubPartnerOrderList(_ request: GetSubPartnerOrderListRequest) async throws -> GetSubPartnerOrderListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSubPartnerOrderListWithOptions(request as! GetSubPartnerOrderListRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
