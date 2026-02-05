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
}
