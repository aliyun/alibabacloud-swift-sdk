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
        self._endpoint = try getEndpoint("aliding", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createSheetWithOptions(_ tmpReq: CreateSheetRequest, _ tmpHeader: CreateSheetHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSheetResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateSheetShrinkRequest = CreateSheetShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: CreateSheetShrinkHeaders = CreateSheetShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workbookId)) {
            body["WorkbookId"] = request.workbookId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSheet",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/createSheet",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSheetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSheet(_ request: CreateSheetRequest) async throws -> CreateSheetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: CreateSheetHeaders = CreateSheetHeaders([:])
        return try await createSheetWithOptions(request as! CreateSheetRequest, headers as! CreateSheetHeaders, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertRowsBeforeWithOptions(_ tmpReq: InsertRowsBeforeRequest, _ tmpHeader: InsertRowsBeforeHeaders, _ runtime: TeaUtils.RuntimeOptions) async throws -> InsertRowsBeforeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: InsertRowsBeforeShrinkRequest = InsertRowsBeforeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        var headers: InsertRowsBeforeShrinkHeaders = InsertRowsBeforeShrinkHeaders([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpHeader, headers)
        if (!TeaUtils.Client.isUnset(tmpHeader.accountContext)) {
            headers.accountContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpHeader.accountContext, "AccountContext", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantContext)) {
            request.tenantContextShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantContext, "TenantContext", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.row)) {
            body["Row"] = request.row!;
        }
        if (!TeaUtils.Client.isUnset(request.rowCount)) {
            body["RowCount"] = request.rowCount!;
        }
        if (!TeaUtils.Client.isUnset(request.sheetId)) {
            body["SheetId"] = request.sheetId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantContextShrink)) {
            body["TenantContext"] = request.tenantContextShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workbookId)) {
            body["WorkbookId"] = request.workbookId ?? "";
        }
        var realHeaders: [String: String] = [:]
        if (!TeaUtils.Client.isUnset(headers.commonHeaders)) {
            realHeaders = headers.commonHeaders ?? [:]
        }
        if (!TeaUtils.Client.isUnset(headers.accountContextShrink)) {
            realHeaders["AccountContext"] = TeaUtils.Client.toJSONString(headers.accountContextShrink);
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": realHeaders as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "InsertRowsBefore",
            "version": "2023-04-26",
            "protocol": "HTTPS",
            "pathname": "/dingtalk/v1/documents/insertRowsBefore",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(InsertRowsBeforeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func insertRowsBefore(_ request: InsertRowsBeforeRequest) async throws -> InsertRowsBeforeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: InsertRowsBeforeHeaders = InsertRowsBeforeHeaders([:])
        return try await insertRowsBeforeWithOptions(request as! InsertRowsBeforeRequest, headers as! InsertRowsBeforeHeaders, runtime as! TeaUtils.RuntimeOptions)
    }
}
