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
        self._endpoint = try getEndpoint("alicloudproc", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createSourcingProjectWithOptions(_ tmpReq: CreateSourcingProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSourcingProjectResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateSourcingProjectShrinkRequest = CreateSourcingProjectShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.address)) {
            request.addressShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.address, "Address", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.company)) {
            request.companyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.company, "Company", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.contact)) {
            request.contactShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.contact, "Contact", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.extendInfo)) {
            request.extendInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extendInfo, "ExtendInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.subjects)) {
            request.subjectsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.subjects, "Subjects", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addressShrink)) {
            query["Address"] = request.addressShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizNo)) {
            query["BizNo"] = request.bizNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.companyShrink)) {
            query["Company"] = request.companyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactShrink)) {
            query["Contact"] = request.contactShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTime)) {
            query["CreateTime"] = request.createTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expireTime)) {
            query["ExpireTime"] = request.expireTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extendInfoShrink)) {
            query["ExtendInfo"] = request.extendInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceUrl)) {
            query["SourceUrl"] = request.sourceUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subBizType)) {
            query["SubBizType"] = request.subBizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subjectsShrink)) {
            query["Subjects"] = request.subjectsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSourcingProject",
            "version": "2024-01-04",
            "protocol": "HTTPS",
            "pathname": "/srm/lite/sourcing/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSourcingProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSourcingProject(_ request: CreateSourcingProjectRequest) async throws -> CreateSourcingProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createSourcingProjectWithOptions(request as! CreateSourcingProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSourcingProjectWithOptions(_ request: UpdateSourcingProjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSourcingProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizId)) {
            query["BizId"] = request.bizId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.updateTime)) {
            query["UpdateTime"] = request.updateTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSourcingProject",
            "version": "2024-01-04",
            "protocol": "HTTPS",
            "pathname": "/srm/lite/sourcing/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSourcingProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSourcingProject(_ request: UpdateSourcingProjectRequest) async throws -> UpdateSourcingProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateSourcingProjectWithOptions(request as! UpdateSourcingProjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
