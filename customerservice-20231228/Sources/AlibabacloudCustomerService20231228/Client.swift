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
        self._endpoint = try getEndpoint("customerservice", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func getDownloadUrlWithOptions(_ request: GetDownloadUrlRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDownloadUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileId)) {
            body["fileId"] = request.fileId!;
        }
        if (!TeaUtils.Client.isUnset(request.fileKey)) {
            body["fileKey"] = request.fileKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.freeOrderApplyCode)) {
            body["freeOrderApplyCode"] = request.freeOrderApplyCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["orderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["scene"] = request.scene ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDownloadUrl",
            "version": "2023-12-28",
            "protocol": "HTTPS",
            "pathname": "/customerWorkbench/pop/api/file/getDownloadUrl",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDownloadUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDownloadUrl(_ request: GetDownloadUrlRequest) async throws -> GetDownloadUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getDownloadUrlWithOptions(request as! GetDownloadUrlRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnterpriseSupportPlanDetailWithOptions(_ request: GetEnterpriseSupportPlanDetailRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEnterpriseSupportPlanDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.freeOrderApplyCodes)) {
            body["freeOrderApplyCodes"] = request.freeOrderApplyCodes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.orderIds)) {
            body["orderIds"] = request.orderIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEnterpriseSupportPlanDetail",
            "version": "2023-12-28",
            "protocol": "HTTPS",
            "pathname": "/customerWorkbench/pop/api/enterpriseSupport/getEnterpriseSupportPlanDetail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEnterpriseSupportPlanDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEnterpriseSupportPlanDetail(_ request: GetEnterpriseSupportPlanDetailRequest) async throws -> GetEnterpriseSupportPlanDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEnterpriseSupportPlanDetailWithOptions(request as! GetEnterpriseSupportPlanDetailRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPreViewUrlWithOptions(_ request: GetPreViewUrlRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPreViewUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyCode)) {
            body["applyCode"] = request.applyCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileId)) {
            body["fileId"] = request.fileId!;
        }
        if (!TeaUtils.Client.isUnset(request.fileKey)) {
            body["fileKey"] = request.fileKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["orderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["scene"] = request.scene ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPreViewUrl",
            "version": "2023-12-28",
            "protocol": "HTTPS",
            "pathname": "/customerWorkbench/pop/api/file/getPreViewUrl",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPreViewUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPreViewUrl(_ request: GetPreViewUrlRequest) async throws -> GetPreViewUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getPreViewUrlWithOptions(request as! GetPreViewUrlRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceDetailWithOptions(_ request: GetServiceDetailRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyCode)) {
            body["applyCode"] = request.applyCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetServiceDetail",
            "version": "2023-12-28",
            "protocol": "HTTPS",
            "pathname": "/customerWorkbench/pop/api/expert/service/getServiceDetail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceDetail(_ request: GetServiceDetailRequest) async throws -> GetServiceDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getServiceDetailWithOptions(request as! GetServiceDetailRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getYunQiTaskByRecordIdWithOptions(_ request: GetYunQiTaskByRecordIdRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetYunQiTaskByRecordIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.recordId)) {
            query["recordId"] = request.recordId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetYunQiTaskByRecordId",
            "version": "2023-12-28",
            "protocol": "HTTPS",
            "pathname": "/customerWorkbench/pop/api/record/getYunQiTaskByRecordId",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetYunQiTaskByRecordIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getYunQiTaskByRecordId(_ request: GetYunQiTaskByRecordIdRequest) async throws -> GetYunQiTaskByRecordIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getYunQiTaskByRecordIdWithOptions(request as! GetYunQiTaskByRecordIdRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDocsGroupByYearWithOptions(_ request: ListDocsGroupByYearRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDocsGroupByYearResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyCodes)) {
            body["applyCodes"] = request.applyCodes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.fileNameKeyword)) {
            body["fileNameKeyword"] = request.fileNameKeyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderIds)) {
            body["orderIds"] = request.orderIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            body["productCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["scene"] = request.scene ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDocsGroupByYear",
            "version": "2023-12-28",
            "protocol": "HTTPS",
            "pathname": "/customerWorkbench/pop/api/file/listDocsGroupByYear",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDocsGroupByYearResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDocsGroupByYear(_ request: ListDocsGroupByYearRequest) async throws -> ListDocsGroupByYearResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDocsGroupByYearWithOptions(request as! ListDocsGroupByYearRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnterpriseSupportPlanWithOptions(_ request: ListEnterpriseSupportPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEnterpriseSupportPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEnterpriseSupportPlan",
            "version": "2023-12-28",
            "protocol": "HTTPS",
            "pathname": "/customerWorkbench/pop/api/enterpriseSupport/listEnterpriseSupportPlan",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEnterpriseSupportPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnterpriseSupportPlan(_ request: ListEnterpriseSupportPlanRequest) async throws -> ListEnterpriseSupportPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listEnterpriseSupportPlanWithOptions(request as! ListEnterpriseSupportPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnterpriseSupportPlanSimpleWithOptions(_ request: ListEnterpriseSupportPlanSimpleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEnterpriseSupportPlanSimpleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEnterpriseSupportPlanSimple",
            "version": "2023-12-28",
            "protocol": "HTTPS",
            "pathname": "/customerWorkbench/pop/api/enterpriseSupport/listEnterpriseSupportPlanSimple",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEnterpriseSupportPlanSimpleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEnterpriseSupportPlanSimple(_ request: ListEnterpriseSupportPlanSimpleRequest) async throws -> ListEnterpriseSupportPlanSimpleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listEnterpriseSupportPlanSimpleWithOptions(request as! ListEnterpriseSupportPlanSimpleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceApplyWithOptions(_ request: ListServiceApplyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListServiceApplyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyType)) {
            body["applyType"] = request.applyType ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            body["endDate"] = request.endDate!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            body["productCode"] = request.productCode!;
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            body["startDate"] = request.startDate!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListServiceApply",
            "version": "2023-12-28",
            "protocol": "HTTPS",
            "pathname": "/customerWorkbench/pop/api/expert/service/listServiceApply",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListServiceApplyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceApply(_ request: ListServiceApplyRequest) async throws -> ListServiceApplyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listServiceApplyWithOptions(request as! ListServiceApplyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listYunQiTaskByUidWithOptions(_ request: ListYunQiTaskByUidRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListYunQiTaskByUidResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createTimeEnd)) {
            body["createTimeEnd"] = request.createTimeEnd!;
        }
        if (!TeaUtils.Client.isUnset(request.createTimeStart)) {
            body["createTimeStart"] = request.createTimeStart!;
        }
        if (!TeaUtils.Client.isUnset(request.freeOrderApplyCodes)) {
            body["freeOrderApplyCodes"] = request.freeOrderApplyCodes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.freeOrderApplyIds)) {
            body["freeOrderApplyIds"] = request.freeOrderApplyIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.orderIds)) {
            body["orderIds"] = request.orderIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            body["pageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.statusList)) {
            body["statusList"] = request.statusList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListYunQiTaskByUid",
            "version": "2023-12-28",
            "protocol": "HTTPS",
            "pathname": "/customerWorkbench/pop/api/record/listYunQiTaskByUid",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListYunQiTaskByUidResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listYunQiTaskByUid(_ request: ListYunQiTaskByUidRequest) async throws -> ListYunQiTaskByUidResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listYunQiTaskByUidWithOptions(request as! ListYunQiTaskByUidRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func markFileReadedWithOptions(_ request: MarkFileReadedRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> MarkFileReadedResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.applyCode)) {
            body["applyCode"] = request.applyCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileId)) {
            body["fileId"] = request.fileId!;
        }
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            body["orderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["scene"] = request.scene ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MarkFileReaded",
            "version": "2023-12-28",
            "protocol": "HTTPS",
            "pathname": "/customerWorkbench/pop/api/file/markFileReaded",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MarkFileReadedResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func markFileReaded(_ request: MarkFileReadedRequest) async throws -> MarkFileReadedResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await markFileReadedWithOptions(request as! MarkFileReadedRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
