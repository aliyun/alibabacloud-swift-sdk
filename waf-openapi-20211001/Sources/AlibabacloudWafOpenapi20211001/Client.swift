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
            "cn-qingdao": "wafopenapi.cn-hangzhou.aliyuncs.com",
            "cn-beijing": "wafopenapi.cn-hangzhou.aliyuncs.com",
            "cn-chengdu": "wafopenapi.cn-hangzhou.aliyuncs.com",
            "cn-zhangjiakou": "wafopenapi.cn-hangzhou.aliyuncs.com",
            "cn-huhehaote": "wafopenapi.cn-hangzhou.aliyuncs.com",
            "cn-hangzhou": "wafopenapi.cn-hangzhou.aliyuncs.com",
            "cn-shanghai": "wafopenapi.cn-hangzhou.aliyuncs.com",
            "cn-shenzhen": "wafopenapi.cn-hangzhou.aliyuncs.com",
            "cn-heyuan": "wafopenapi.cn-hangzhou.aliyuncs.com",
            "cn-wulanchabu": "wafopenapi.cn-hangzhou.aliyuncs.com",
            "cn-hongkong": "wafopenapi.ap-southeast-1.aliyuncs.com",
            "ap-southeast-1": "wafopenapi.ap-southeast-1.aliyuncs.com",
            "ap-southeast-2": "wafopenapi.ap-southeast-1.aliyuncs.com",
            "ap-southeast-3": "wafopenapi.ap-southeast-1.aliyuncs.com",
            "ap-southeast-5": "wafopenapi.ap-southeast-1.aliyuncs.com",
            "eu-west-1": "wafopenapi.ap-southeast-1.aliyuncs.com",
            "us-west-1": "wafopenapi.ap-southeast-1.aliyuncs.com",
            "us-east-1": "wafopenapi.ap-southeast-1.aliyuncs.com",
            "eu-central-1": "wafopenapi.ap-southeast-1.aliyuncs.com",
            "me-east-1": "wafopenapi.ap-southeast-1.aliyuncs.com",
            "ap-south-1": "wafopenapi.ap-southeast-1.aliyuncs.com",
            "cn-shanghai-finance-1": "wafopenapi.cn-hangzhou.aliyuncs.com",
            "cn-shenzhen-finance-1": "wafopenapi.cn-hangzhou.aliyuncs.com",
            "cn-north-2-gov-1": "wafopenapi.cn-hangzhou.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("waf-openapi", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func changeResourceGroupWithOptions(_ request: ChangeResourceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.newResourceGroupId)) {
            query["NewResourceGroupId"] = request.newResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeResourceGroup",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeResourceGroup(_ request: ChangeResourceGroupRequest) async throws -> ChangeResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeResourceGroupWithOptions(request as! ChangeResourceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func clearMajorProtectionBlackIpWithOptions(_ request: ClearMajorProtectionBlackIpRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ClearMajorProtectionBlackIpResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId!;
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ClearMajorProtectionBlackIp",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ClearMajorProtectionBlackIpResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func clearMajorProtectionBlackIp(_ request: ClearMajorProtectionBlackIpRequest) async throws -> ClearMajorProtectionBlackIpResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await clearMajorProtectionBlackIpWithOptions(request as! ClearMajorProtectionBlackIpRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copyDefenseTemplateWithOptions(_ request: CopyDefenseTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CopyDefenseTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CopyDefenseTemplate",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CopyDefenseTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copyDefenseTemplate(_ request: CopyDefenseTemplateRequest) async throws -> CopyDefenseTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await copyDefenseTemplateWithOptions(request as! CopyDefenseTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApiExportWithOptions(_ request: CreateApiExportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateApiExportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.param)) {
            query["Param"] = request.param ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneId)) {
            query["ZoneId"] = request.zoneId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateApiExport",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateApiExportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createApiExport(_ request: CreateApiExportRequest) async throws -> CreateApiExportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createApiExportWithOptions(request as! CreateApiExportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCertsWithOptions(_ request: CreateCertsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCertsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certContent)) {
            query["CertContent"] = request.certContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certKey)) {
            query["CertKey"] = request.certKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.certName)) {
            query["CertName"] = request.certName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCerts",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCertsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCerts(_ request: CreateCertsRequest) async throws -> CreateCertsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCertsWithOptions(request as! CreateCertsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCloudResourceWithOptions(_ tmpReq: CreateCloudResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCloudResourceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateCloudResourceShrinkRequest = CreateCloudResourceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listen)) {
            request.listenShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listen, "Listen", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.redirect)) {
            request.redirectShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.redirect, "Redirect", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.listenShrink)) {
            query["Listen"] = request.listenShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerUserId)) {
            query["OwnerUserId"] = request.ownerUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.redirectShrink)) {
            query["Redirect"] = request.redirectShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCloudResource",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCloudResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCloudResource(_ request: CreateCloudResourceRequest) async throws -> CreateCloudResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCloudResourceWithOptions(request as! CreateCloudResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDefenseResourceWithOptions(_ tmpReq: CreateDefenseResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDefenseResourceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDefenseResourceShrinkRequest = CreateDefenseResourceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.customHeaders)) {
            request.customHeadersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.customHeaders, "CustomHeaders", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customHeadersShrink)) {
            query["CustomHeaders"] = request.customHeadersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detail)) {
            query["Detail"] = request.detail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerUserId)) {
            query["OwnerUserId"] = request.ownerUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pattern)) {
            query["Pattern"] = request.pattern ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            query["Product"] = request.product ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroup)) {
            query["ResourceGroup"] = request.resourceGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOrigin)) {
            query["ResourceOrigin"] = request.resourceOrigin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.xffStatus)) {
            query["XffStatus"] = request.xffStatus!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDefenseResource",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDefenseResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDefenseResource(_ request: CreateDefenseResourceRequest) async throws -> CreateDefenseResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDefenseResourceWithOptions(request as! CreateDefenseResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDefenseResourceGroupWithOptions(_ request: CreateDefenseResourceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDefenseResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addList)) {
            query["AddList"] = request.addList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDefenseResourceGroup",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDefenseResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDefenseResourceGroup(_ request: CreateDefenseResourceGroupRequest) async throws -> CreateDefenseResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDefenseResourceGroupWithOptions(request as! CreateDefenseResourceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDefenseRuleWithOptions(_ request: CreateDefenseRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDefenseRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.defenseScene)) {
            query["DefenseScene"] = request.defenseScene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defenseType)) {
            query["DefenseType"] = request.defenseType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.rules)) {
            body["Rules"] = request.rules ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDefenseRule",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDefenseRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDefenseRule(_ request: CreateDefenseRuleRequest) async throws -> CreateDefenseRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDefenseRuleWithOptions(request as! CreateDefenseRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDefenseTemplateWithOptions(_ request: CreateDefenseTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDefenseTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.defenseScene)) {
            query["DefenseScene"] = request.defenseScene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            query["TemplateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateOrigin)) {
            query["TemplateOrigin"] = request.templateOrigin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateStatus)) {
            query["TemplateStatus"] = request.templateStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            query["TemplateType"] = request.templateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unbindResourceGroups)) {
            query["UnbindResourceGroups"] = request.unbindResourceGroups ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.unbindResources)) {
            query["UnbindResources"] = request.unbindResources ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDefenseTemplate",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDefenseTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDefenseTemplate(_ request: CreateDefenseTemplateRequest) async throws -> CreateDefenseTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDefenseTemplateWithOptions(request as! CreateDefenseTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDomainWithOptions(_ tmpReq: CreateDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDomainResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateDomainShrinkRequest = CreateDomainShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listen)) {
            request.listenShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listen, "Listen", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.redirect)) {
            request.redirectShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.redirect, "Redirect", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessType)) {
            query["AccessType"] = request.accessType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.listenShrink)) {
            query["Listen"] = request.listenShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.redirectShrink)) {
            query["Redirect"] = request.redirectShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDomain",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDomain(_ request: CreateDomainRequest) async throws -> CreateDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDomainWithOptions(request as! CreateDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHybridCloudClusterWithOptions(_ request: CreateHybridCloudClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateHybridCloudClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessMode)) {
            query["AccessMode"] = request.accessMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accessRegion)) {
            query["AccessRegion"] = request.accessRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterName)) {
            query["ClusterName"] = request.clusterName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.httpPorts)) {
            query["HttpPorts"] = request.httpPorts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.httpsPorts)) {
            query["HttpsPorts"] = request.httpsPorts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logFieldsNotReturned)) {
            query["LogFieldsNotReturned"] = request.logFieldsNotReturned ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protectionServerCount)) {
            query["ProtectionServerCount"] = request.protectionServerCount!;
        }
        if (!TeaUtils.Client.isUnset(request.proxyStatus)) {
            query["ProxyStatus"] = request.proxyStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyType)) {
            query["ProxyType"] = request.proxyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleConfig)) {
            query["RuleConfig"] = request.ruleConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleStatus)) {
            query["RuleStatus"] = request.ruleStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateHybridCloudCluster",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateHybridCloudClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHybridCloudCluster(_ request: CreateHybridCloudClusterRequest) async throws -> CreateHybridCloudClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createHybridCloudClusterWithOptions(request as! CreateHybridCloudClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHybridCloudClusterRuleWithOptions(_ request: CreateHybridCloudClusterRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateHybridCloudClusterRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleConfig)) {
            query["RuleConfig"] = request.ruleConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleStatus)) {
            query["RuleStatus"] = request.ruleStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateHybridCloudClusterRule",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateHybridCloudClusterRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHybridCloudClusterRule(_ request: CreateHybridCloudClusterRuleRequest) async throws -> CreateHybridCloudClusterRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createHybridCloudClusterRuleWithOptions(request as! CreateHybridCloudClusterRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHybridCloudGroupWithOptions(_ request: CreateHybridCloudGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateHybridCloudGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backSourceMark)) {
            query["BackSourceMark"] = request.backSourceMark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId!;
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupType)) {
            query["GroupType"] = request.groupType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.loadBalanceIp)) {
            query["LoadBalanceIp"] = request.loadBalanceIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.locationCode)) {
            query["LocationCode"] = request.locationCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateHybridCloudGroup",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateHybridCloudGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createHybridCloudGroup(_ request: CreateHybridCloudGroupRequest) async throws -> CreateHybridCloudGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createHybridCloudGroupWithOptions(request as! CreateHybridCloudGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMajorProtectionBlackIpWithOptions(_ request: CreateMajorProtectionBlackIpRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMajorProtectionBlackIpResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiredTime)) {
            query["ExpiredTime"] = request.expiredTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipList)) {
            query["IpList"] = request.ipList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId!;
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMajorProtectionBlackIp",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMajorProtectionBlackIpResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMajorProtectionBlackIp(_ request: CreateMajorProtectionBlackIpRequest) async throws -> CreateMajorProtectionBlackIpResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMajorProtectionBlackIpWithOptions(request as! CreateMajorProtectionBlackIpRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMemberAccountsWithOptions(_ request: CreateMemberAccountsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMemberAccountsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberAccountIds)) {
            query["MemberAccountIds"] = request.memberAccountIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIp)) {
            query["SourceIp"] = request.sourceIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMemberAccounts",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMemberAccountsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMemberAccounts(_ request: CreateMemberAccountsRequest) async throws -> CreateMemberAccountsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMemberAccountsWithOptions(request as! CreateMemberAccountsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPostpaidInstanceWithOptions(_ request: CreatePostpaidInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePostpaidInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePostpaidInstance",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePostpaidInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPostpaidInstance(_ request: CreatePostpaidInstanceRequest) async throws -> CreatePostpaidInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPostpaidInstanceWithOptions(request as! CreatePostpaidInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSM2CertWithOptions(_ request: CreateSM2CertRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSM2CertResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certName)) {
            query["CertName"] = request.certName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptCertificate)) {
            query["EncryptCertificate"] = request.encryptCertificate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptPrivateKey)) {
            query["EncryptPrivateKey"] = request.encryptPrivateKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signCertificate)) {
            query["SignCertificate"] = request.signCertificate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signPrivateKey)) {
            query["SignPrivateKey"] = request.signPrivateKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSM2Cert",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSM2CertResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSM2Cert(_ request: CreateSM2CertRequest) async throws -> CreateSM2CertResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSM2CertWithOptions(request as! CreateSM2CertRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApisecAbnormalsWithOptions(_ request: DeleteApisecAbnormalsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteApisecAbnormalsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.abnormalIds)) {
            query["AbnormalIds"] = request.abnormalIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApisecAbnormals",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteApisecAbnormalsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApisecAbnormals(_ request: DeleteApisecAbnormalsRequest) async throws -> DeleteApisecAbnormalsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteApisecAbnormalsWithOptions(request as! DeleteApisecAbnormalsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApisecEventsWithOptions(_ request: DeleteApisecEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteApisecEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventIds)) {
            query["EventIds"] = request.eventIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteApisecEvents",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteApisecEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteApisecEvents(_ request: DeleteApisecEventsRequest) async throws -> DeleteApisecEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteApisecEventsWithOptions(request as! DeleteApisecEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCloudResourceWithOptions(_ request: DeleteCloudResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCloudResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceInstanceId)) {
            query["ResourceInstanceId"] = request.resourceInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceProduct)) {
            query["ResourceProduct"] = request.resourceProduct ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCloudResource",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCloudResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCloudResource(_ request: DeleteCloudResourceRequest) async throws -> DeleteCloudResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCloudResourceWithOptions(request as! DeleteCloudResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDefenseResourceWithOptions(_ request: DeleteDefenseResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDefenseResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDefenseResource",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDefenseResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDefenseResource(_ request: DeleteDefenseResourceRequest) async throws -> DeleteDefenseResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDefenseResourceWithOptions(request as! DeleteDefenseResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDefenseResourceGroupWithOptions(_ request: DeleteDefenseResourceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDefenseResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDefenseResourceGroup",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDefenseResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDefenseResourceGroup(_ request: DeleteDefenseResourceGroupRequest) async throws -> DeleteDefenseResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDefenseResourceGroupWithOptions(request as! DeleteDefenseResourceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDefenseRuleWithOptions(_ request: DeleteDefenseRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDefenseRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.defenseType)) {
            query["DefenseType"] = request.defenseType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleIds)) {
            query["RuleIds"] = request.ruleIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDefenseRule",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDefenseRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDefenseRule(_ request: DeleteDefenseRuleRequest) async throws -> DeleteDefenseRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDefenseRuleWithOptions(request as! DeleteDefenseRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDefenseRuleBlockIpWithOptions(_ request: DeleteDefenseRuleBlockIpRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDefenseRuleBlockIpResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId!;
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDefenseRuleBlockIp",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDefenseRuleBlockIpResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDefenseRuleBlockIp(_ request: DeleteDefenseRuleBlockIpRequest) async throws -> DeleteDefenseRuleBlockIpResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDefenseRuleBlockIpWithOptions(request as! DeleteDefenseRuleBlockIpRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDefenseTemplateWithOptions(_ request: DeleteDefenseTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDefenseTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDefenseTemplate",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDefenseTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDefenseTemplate(_ request: DeleteDefenseTemplateRequest) async throws -> DeleteDefenseTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDefenseTemplateWithOptions(request as! DeleteDefenseTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDomainWithOptions(_ request: DeleteDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessType)) {
            query["AccessType"] = request.accessType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainId)) {
            query["DomainId"] = request.domainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDomain",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDomain(_ request: DeleteDomainRequest) async throws -> DeleteDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDomainWithOptions(request as! DeleteDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHybridCloudClusterRuleWithOptions(_ request: DeleteHybridCloudClusterRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteHybridCloudClusterRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterRuleResourceId)) {
            query["ClusterRuleResourceId"] = request.clusterRuleResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteHybridCloudClusterRule",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteHybridCloudClusterRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteHybridCloudClusterRule(_ request: DeleteHybridCloudClusterRuleRequest) async throws -> DeleteHybridCloudClusterRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteHybridCloudClusterRuleWithOptions(request as! DeleteHybridCloudClusterRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMajorProtectionBlackIpWithOptions(_ request: DeleteMajorProtectionBlackIpRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMajorProtectionBlackIpResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipList)) {
            query["IpList"] = request.ipList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId!;
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMajorProtectionBlackIp",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMajorProtectionBlackIpResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMajorProtectionBlackIp(_ request: DeleteMajorProtectionBlackIpRequest) async throws -> DeleteMajorProtectionBlackIpResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteMajorProtectionBlackIpWithOptions(request as! DeleteMajorProtectionBlackIpRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMemberAccountWithOptions(_ request: DeleteMemberAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteMemberAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberAccountId)) {
            query["MemberAccountId"] = request.memberAccountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIp)) {
            query["SourceIp"] = request.sourceIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteMemberAccount",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteMemberAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteMemberAccount(_ request: DeleteMemberAccountRequest) async throws -> DeleteMemberAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteMemberAccountWithOptions(request as! DeleteMemberAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAbnormalCloudResourcesWithOptions(_ request: DescribeAbnormalCloudResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAbnormalCloudResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAbnormalCloudResources",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAbnormalCloudResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAbnormalCloudResources(_ request: DescribeAbnormalCloudResourcesRequest) async throws -> DescribeAbnormalCloudResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAbnormalCloudResourcesWithOptions(request as! DescribeAbnormalCloudResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccountDelegatedStatusWithOptions(_ request: DescribeAccountDelegatedStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAccountDelegatedStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAccountDelegatedStatus",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAccountDelegatedStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAccountDelegatedStatus(_ request: DescribeAccountDelegatedStatusRequest) async throws -> DescribeAccountDelegatedStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAccountDelegatedStatusWithOptions(request as! DescribeAccountDelegatedStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiExportsWithOptions(_ request: DescribeApiExportsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApiExportsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApiExports",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApiExportsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApiExports(_ request: DescribeApiExportsRequest) async throws -> DescribeApiExportsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApiExportsWithOptions(request as! DescribeApiExportsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecAbnormalDomainStatisticWithOptions(_ request: DescribeApisecAbnormalDomainStatisticRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisecAbnormalDomainStatisticResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderWay)) {
            query["OrderWay"] = request.orderWay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisecAbnormalDomainStatistic",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisecAbnormalDomainStatisticResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecAbnormalDomainStatistic(_ request: DescribeApisecAbnormalDomainStatisticRequest) async throws -> DescribeApisecAbnormalDomainStatisticResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisecAbnormalDomainStatisticWithOptions(request as! DescribeApisecAbnormalDomainStatisticRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecAbnormalsWithOptions(_ request: DescribeApisecAbnormalsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisecAbnormalsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.abnormalId)) {
            query["AbnormalId"] = request.abnormalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.abnormalLevel)) {
            query["AbnormalLevel"] = request.abnormalLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.abnormalTag)) {
            query["AbnormalTag"] = request.abnormalTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiFormat)) {
            query["ApiFormat"] = request.apiFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiTag)) {
            query["ApiTag"] = request.apiTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.matchedHost)) {
            query["MatchedHost"] = request.matchedHost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderKey)) {
            query["OrderKey"] = request.orderKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderWay)) {
            query["OrderWay"] = request.orderWay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.origin)) {
            query["Origin"] = request.origin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userStatus)) {
            query["UserStatus"] = request.userStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisecAbnormals",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisecAbnormalsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecAbnormals(_ request: DescribeApisecAbnormalsRequest) async throws -> DescribeApisecAbnormalsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisecAbnormalsWithOptions(request as! DescribeApisecAbnormalsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecApiResourcesWithOptions(_ request: DescribeApisecApiResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisecApiResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiFormat)) {
            query["ApiFormat"] = request.apiFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiMethod)) {
            query["ApiMethod"] = request.apiMethod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiStatus)) {
            query["ApiStatus"] = request.apiStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiTag)) {
            query["ApiTag"] = request.apiTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiType)) {
            query["ApiType"] = request.apiType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authFlag)) {
            query["AuthFlag"] = request.authFlag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.follow)) {
            query["Follow"] = request.follow!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.matchedHost)) {
            query["MatchedHost"] = request.matchedHost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.note)) {
            query["Note"] = request.note ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderKey)) {
            query["OrderKey"] = request.orderKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderWay)) {
            query["OrderWay"] = request.orderWay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestSensitiveType)) {
            query["RequestSensitiveType"] = request.requestSensitiveType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sensitiveLevel)) {
            query["SensitiveLevel"] = request.sensitiveLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sensitiveType)) {
            query["SensitiveType"] = request.sensitiveType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisecApiResources",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisecApiResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecApiResources(_ request: DescribeApisecApiResourcesRequest) async throws -> DescribeApisecApiResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisecApiResourcesWithOptions(request as! DescribeApisecApiResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecAssetTrendWithOptions(_ request: DescribeApisecAssetTrendRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisecAssetTrendResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisecAssetTrend",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisecAssetTrendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecAssetTrend(_ request: DescribeApisecAssetTrendRequest) async throws -> DescribeApisecAssetTrendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisecAssetTrendWithOptions(request as! DescribeApisecAssetTrendRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecEventDomainStatisticWithOptions(_ request: DescribeApisecEventDomainStatisticRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisecEventDomainStatisticResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderWay)) {
            query["OrderWay"] = request.orderWay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisecEventDomainStatistic",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisecEventDomainStatisticResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecEventDomainStatistic(_ request: DescribeApisecEventDomainStatisticRequest) async throws -> DescribeApisecEventDomainStatisticResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisecEventDomainStatisticWithOptions(request as! DescribeApisecEventDomainStatisticRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecEventsWithOptions(_ request: DescribeApisecEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisecEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiFormat)) {
            query["ApiFormat"] = request.apiFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiTag)) {
            query["ApiTag"] = request.apiTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.attackIp)) {
            query["AttackIp"] = request.attackIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTs)) {
            query["EndTs"] = request.endTs!;
        }
        if (!TeaUtils.Client.isUnset(request.eventId)) {
            query["EventId"] = request.eventId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventLevel)) {
            query["EventLevel"] = request.eventLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventTag)) {
            query["EventTag"] = request.eventTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.matchedHost)) {
            query["MatchedHost"] = request.matchedHost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderKey)) {
            query["OrderKey"] = request.orderKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderWay)) {
            query["OrderWay"] = request.orderWay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.origin)) {
            query["Origin"] = request.origin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTs)) {
            query["StartTs"] = request.startTs!;
        }
        if (!TeaUtils.Client.isUnset(request.userStatus)) {
            query["UserStatus"] = request.userStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisecEvents",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisecEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecEvents(_ request: DescribeApisecEventsRequest) async throws -> DescribeApisecEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisecEventsWithOptions(request as! DescribeApisecEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecLogDeliveriesWithOptions(_ request: DescribeApisecLogDeliveriesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisecLogDeliveriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisecLogDeliveries",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisecLogDeliveriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecLogDeliveries(_ request: DescribeApisecLogDeliveriesRequest) async throws -> DescribeApisecLogDeliveriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisecLogDeliveriesWithOptions(request as! DescribeApisecLogDeliveriesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecMatchedHostsWithOptions(_ request: DescribeApisecMatchedHostsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisecMatchedHostsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.matchedHost)) {
            query["MatchedHost"] = request.matchedHost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisecMatchedHosts",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisecMatchedHostsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecMatchedHosts(_ request: DescribeApisecMatchedHostsRequest) async throws -> DescribeApisecMatchedHostsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisecMatchedHostsWithOptions(request as! DescribeApisecMatchedHostsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecProtectionGroupsWithOptions(_ request: DescribeApisecProtectionGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisecProtectionGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apisecStatus)) {
            query["ApisecStatus"] = request.apisecStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroup)) {
            query["ResourceGroup"] = request.resourceGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisecProtectionGroups",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisecProtectionGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecProtectionGroups(_ request: DescribeApisecProtectionGroupsRequest) async throws -> DescribeApisecProtectionGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisecProtectionGroupsWithOptions(request as! DescribeApisecProtectionGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecProtectionResourcesWithOptions(_ request: DescribeApisecProtectionResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisecProtectionResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apisecStatus)) {
            query["ApisecStatus"] = request.apisecStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisecProtectionResources",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisecProtectionResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecProtectionResources(_ request: DescribeApisecProtectionResourcesRequest) async throws -> DescribeApisecProtectionResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisecProtectionResourcesWithOptions(request as! DescribeApisecProtectionResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecRulesWithOptions(_ request: DescribeApisecRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisecRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.level)) {
            query["Level"] = request.level ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.origin)) {
            query["Origin"] = request.origin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisecRules",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisecRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecRules(_ request: DescribeApisecRulesRequest) async throws -> DescribeApisecRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisecRulesWithOptions(request as! DescribeApisecRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecSensitiveDomainStatisticWithOptions(_ request: DescribeApisecSensitiveDomainStatisticRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisecSensitiveDomainStatisticResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderWay)) {
            query["OrderWay"] = request.orderWay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisecSensitiveDomainStatistic",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisecSensitiveDomainStatisticResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecSensitiveDomainStatistic(_ request: DescribeApisecSensitiveDomainStatisticRequest) async throws -> DescribeApisecSensitiveDomainStatisticResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisecSensitiveDomainStatisticWithOptions(request as! DescribeApisecSensitiveDomainStatisticRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecSlsLogStoresWithOptions(_ request: DescribeApisecSlsLogStoresRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisecSlsLogStoresResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logRegionId)) {
            query["LogRegionId"] = request.logRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisecSlsLogStores",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisecSlsLogStoresResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecSlsLogStores(_ request: DescribeApisecSlsLogStoresRequest) async throws -> DescribeApisecSlsLogStoresResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisecSlsLogStoresWithOptions(request as! DescribeApisecSlsLogStoresRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecSlsProjectsWithOptions(_ request: DescribeApisecSlsProjectsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisecSlsProjectsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logRegionId)) {
            query["LogRegionId"] = request.logRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisecSlsProjects",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisecSlsProjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecSlsProjects(_ request: DescribeApisecSlsProjectsRequest) async throws -> DescribeApisecSlsProjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisecSlsProjectsWithOptions(request as! DescribeApisecSlsProjectsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecStatisticsWithOptions(_ request: DescribeApisecStatisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisecStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userStatusList)) {
            query["UserStatusList"] = request.userStatusList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisecStatistics",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisecStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecStatistics(_ request: DescribeApisecStatisticsRequest) async throws -> DescribeApisecStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisecStatisticsWithOptions(request as! DescribeApisecStatisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecSuggestionsWithOptions(_ request: DescribeApisecSuggestionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisecSuggestionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisecSuggestions",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisecSuggestionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecSuggestions(_ request: DescribeApisecSuggestionsRequest) async throws -> DescribeApisecSuggestionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisecSuggestionsWithOptions(request as! DescribeApisecSuggestionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecUserOperationsWithOptions(_ request: DescribeApisecUserOperationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeApisecUserOperationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectId)) {
            query["ObjectId"] = request.objectId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeApisecUserOperations",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeApisecUserOperationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeApisecUserOperations(_ request: DescribeApisecUserOperationsRequest) async throws -> DescribeApisecUserOperationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeApisecUserOperationsWithOptions(request as! DescribeApisecUserOperationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBaseSystemRulesWithOptions(_ request: DescribeBaseSystemRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBaseSystemRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.detectType)) {
            query["DetectType"] = request.detectType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskLevel)) {
            query["RiskLevel"] = request.riskLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleAction)) {
            query["RuleAction"] = request.ruleAction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            query["RuleName"] = request.ruleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleStatus)) {
            query["RuleStatus"] = request.ruleStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBaseSystemRules",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBaseSystemRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBaseSystemRules(_ request: DescribeBaseSystemRulesRequest) async throws -> DescribeBaseSystemRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBaseSystemRulesWithOptions(request as! DescribeBaseSystemRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCertDetailWithOptions(_ request: DescribeCertDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCertDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certIdentifier)) {
            query["CertIdentifier"] = request.certIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCertDetail",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCertDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCertDetail(_ request: DescribeCertDetailRequest) async throws -> DescribeCertDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCertDetailWithOptions(request as! DescribeCertDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCertsWithOptions(_ request: DescribeCertsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCertsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.algorithm)) {
            query["Algorithm"] = request.algorithm ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCerts",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCertsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCerts(_ request: DescribeCertsRequest) async throws -> DescribeCertsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCertsWithOptions(request as! DescribeCertsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCloudResourceAccessPortDetailsWithOptions(_ request: DescribeCloudResourceAccessPortDetailsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCloudResourceAccessPortDetailsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocol_)) {
            query["Protocol"] = request.protocol_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceInstanceId)) {
            query["ResourceInstanceId"] = request.resourceInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceProduct)) {
            query["ResourceProduct"] = request.resourceProduct ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCloudResourceAccessPortDetails",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCloudResourceAccessPortDetailsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCloudResourceAccessPortDetails(_ request: DescribeCloudResourceAccessPortDetailsRequest) async throws -> DescribeCloudResourceAccessPortDetailsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCloudResourceAccessPortDetailsWithOptions(request as! DescribeCloudResourceAccessPortDetailsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCloudResourceAccessedPortsWithOptions(_ request: DescribeCloudResourceAccessedPortsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCloudResourceAccessedPortsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceInstanceId)) {
            query["ResourceInstanceId"] = request.resourceInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCloudResourceAccessedPorts",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCloudResourceAccessedPortsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCloudResourceAccessedPorts(_ request: DescribeCloudResourceAccessedPortsRequest) async throws -> DescribeCloudResourceAccessedPortsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCloudResourceAccessedPortsWithOptions(request as! DescribeCloudResourceAccessedPortsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCloudResourcesWithOptions(_ request: DescribeCloudResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCloudResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerUserId)) {
            query["OwnerUserId"] = request.ownerUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceDomain)) {
            query["ResourceDomain"] = request.resourceDomain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceFunction)) {
            query["ResourceFunction"] = request.resourceFunction ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceInstanceId)) {
            query["ResourceInstanceId"] = request.resourceInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceInstanceName)) {
            query["ResourceInstanceName"] = request.resourceInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceName)) {
            query["ResourceName"] = request.resourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceProduct)) {
            query["ResourceProduct"] = request.resourceProduct ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceRegionId)) {
            query["ResourceRegionId"] = request.resourceRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceRouteName)) {
            query["ResourceRouteName"] = request.resourceRouteName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCloudResources",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCloudResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCloudResources(_ request: DescribeCloudResourcesRequest) async throws -> DescribeCloudResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCloudResourcesWithOptions(request as! DescribeCloudResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCnameCountWithOptions(_ request: DescribeCnameCountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCnameCountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCnameCount",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCnameCountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCnameCount(_ request: DescribeCnameCountRequest) async throws -> DescribeCnameCountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCnameCountWithOptions(request as! DescribeCnameCountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCommonLogFieldsWithOptions(_ tmpReq: DescribeCommonLogFieldsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCommonLogFieldsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeCommonLogFieldsShrinkRequest = DescribeCommonLogFieldsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.logKeyList)) {
            request.logKeyListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.logKeyList, "LogKeyList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isDefault)) {
            query["IsDefault"] = request.isDefault!;
        }
        if (!TeaUtils.Client.isUnset(request.isRequired)) {
            query["IsRequired"] = request.isRequired!;
        }
        if (!TeaUtils.Client.isUnset(request.logKeyListShrink)) {
            query["LogKeyList"] = request.logKeyListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCommonLogFields",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCommonLogFieldsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCommonLogFields(_ request: DescribeCommonLogFieldsRequest) async throws -> DescribeCommonLogFieldsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCommonLogFieldsWithOptions(request as! DescribeCommonLogFieldsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCustomBaseRuleCompileResultWithOptions(_ request: DescribeCustomBaseRuleCompileResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCustomBaseRuleCompileResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCustomBaseRuleCompileResult",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCustomBaseRuleCompileResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCustomBaseRuleCompileResult(_ request: DescribeCustomBaseRuleCompileResultRequest) async throws -> DescribeCustomBaseRuleCompileResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCustomBaseRuleCompileResultWithOptions(request as! DescribeCustomBaseRuleCompileResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDDoSStatusWithOptions(_ request: DescribeDDoSStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDDoSStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDDoSStatus",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDDoSStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDDoSStatus(_ request: DescribeDDoSStatusRequest) async throws -> DescribeDDoSStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDDoSStatusWithOptions(request as! DescribeDDoSStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefaultHttpsWithOptions(_ request: DescribeDefaultHttpsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDefaultHttpsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDefaultHttps",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDefaultHttpsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefaultHttps(_ request: DescribeDefaultHttpsRequest) async throws -> DescribeDefaultHttpsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDefaultHttpsWithOptions(request as! DescribeDefaultHttpsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseGroupValidResourcesWithOptions(_ request: DescribeDefenseGroupValidResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDefenseGroupValidResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDefenseGroupValidResources",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDefenseGroupValidResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseGroupValidResources(_ request: DescribeDefenseGroupValidResourcesRequest) async throws -> DescribeDefenseGroupValidResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDefenseGroupValidResourcesWithOptions(request as! DescribeDefenseGroupValidResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseResourceWithOptions(_ request: DescribeDefenseResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDefenseResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDefenseResource",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDefenseResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseResource(_ request: DescribeDefenseResourceRequest) async throws -> DescribeDefenseResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDefenseResourceWithOptions(request as! DescribeDefenseResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseResourceGroupWithOptions(_ request: DescribeDefenseResourceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDefenseResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDefenseResourceGroup",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDefenseResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseResourceGroup(_ request: DescribeDefenseResourceGroupRequest) async throws -> DescribeDefenseResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDefenseResourceGroupWithOptions(request as! DescribeDefenseResourceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseResourceGroupNamesWithOptions(_ request: DescribeDefenseResourceGroupNamesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDefenseResourceGroupNamesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupNameLike)) {
            query["GroupNameLike"] = request.groupNameLike ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDefenseResourceGroupNames",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDefenseResourceGroupNamesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseResourceGroupNames(_ request: DescribeDefenseResourceGroupNamesRequest) async throws -> DescribeDefenseResourceGroupNamesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDefenseResourceGroupNamesWithOptions(request as! DescribeDefenseResourceGroupNamesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseResourceGroupsWithOptions(_ request: DescribeDefenseResourceGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDefenseResourceGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupNameLike)) {
            query["GroupNameLike"] = request.groupNameLike ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupNames)) {
            query["GroupNames"] = request.groupNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDefenseResourceGroups",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDefenseResourceGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseResourceGroups(_ request: DescribeDefenseResourceGroupsRequest) async throws -> DescribeDefenseResourceGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDefenseResourceGroupsWithOptions(request as! DescribeDefenseResourceGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseResourceNamesWithOptions(_ request: DescribeDefenseResourceNamesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDefenseResourceNamesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDefenseResourceNames",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDefenseResourceNamesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseResourceNames(_ request: DescribeDefenseResourceNamesRequest) async throws -> DescribeDefenseResourceNamesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDefenseResourceNamesWithOptions(request as! DescribeDefenseResourceNamesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseResourceOwnerUidWithOptions(_ request: DescribeDefenseResourceOwnerUidRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDefenseResourceOwnerUidResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceNames)) {
            query["ResourceNames"] = request.resourceNames ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDefenseResourceOwnerUid",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDefenseResourceOwnerUidResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseResourceOwnerUid(_ request: DescribeDefenseResourceOwnerUidRequest) async throws -> DescribeDefenseResourceOwnerUidResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDefenseResourceOwnerUidWithOptions(request as! DescribeDefenseResourceOwnerUidRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseResourceTemplatesWithOptions(_ request: DescribeDefenseResourceTemplatesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDefenseResourceTemplatesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            query["RuleName"] = request.ruleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            query["TemplateName"] = request.templateName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDefenseResourceTemplates",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDefenseResourceTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseResourceTemplates(_ request: DescribeDefenseResourceTemplatesRequest) async throws -> DescribeDefenseResourceTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDefenseResourceTemplatesWithOptions(request as! DescribeDefenseResourceTemplatesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseResourcesWithOptions(_ request: DescribeDefenseResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDefenseResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDefenseResources",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDefenseResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseResources(_ request: DescribeDefenseResourcesRequest) async throws -> DescribeDefenseResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDefenseResourcesWithOptions(request as! DescribeDefenseResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseRuleWithOptions(_ request: DescribeDefenseRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDefenseRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.defenseType)) {
            query["DefenseType"] = request.defenseType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId!;
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDefenseRule",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDefenseRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseRule(_ request: DescribeDefenseRuleRequest) async throws -> DescribeDefenseRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDefenseRuleWithOptions(request as! DescribeDefenseRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseRuleStatisticsWithOptions(_ request: DescribeDefenseRuleStatisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDefenseRuleStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fourthKey)) {
            query["FourthKey"] = request.fourthKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.primaryKey)) {
            query["PrimaryKey"] = request.primaryKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.secondaryKey)) {
            query["SecondaryKey"] = request.secondaryKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        if (!TeaUtils.Client.isUnset(request.thirdKey)) {
            query["ThirdKey"] = request.thirdKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDefenseRuleStatistics",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDefenseRuleStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseRuleStatistics(_ request: DescribeDefenseRuleStatisticsRequest) async throws -> DescribeDefenseRuleStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDefenseRuleStatisticsWithOptions(request as! DescribeDefenseRuleStatisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseRulesWithOptions(_ request: DescribeDefenseRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDefenseRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.defenseType)) {
            query["DefenseType"] = request.defenseType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["Query"] = request.query ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDefenseRules",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDefenseRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseRules(_ request: DescribeDefenseRulesRequest) async throws -> DescribeDefenseRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDefenseRulesWithOptions(request as! DescribeDefenseRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseSceneConfigWithOptions(_ request: DescribeDefenseSceneConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDefenseSceneConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configKey)) {
            query["ConfigKey"] = request.configKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defenseScene)) {
            query["DefenseScene"] = request.defenseScene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDefenseSceneConfig",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDefenseSceneConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseSceneConfig(_ request: DescribeDefenseSceneConfigRequest) async throws -> DescribeDefenseSceneConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDefenseSceneConfigWithOptions(request as! DescribeDefenseSceneConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseTemplateWithOptions(_ request: DescribeDefenseTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDefenseTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDefenseTemplate",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDefenseTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseTemplate(_ request: DescribeDefenseTemplateRequest) async throws -> DescribeDefenseTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDefenseTemplateWithOptions(request as! DescribeDefenseTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseTemplateValidGroupsWithOptions(_ request: DescribeDefenseTemplateValidGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDefenseTemplateValidGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.defenseScene)) {
            query["DefenseScene"] = request.defenseScene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDefenseTemplateValidGroups",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDefenseTemplateValidGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseTemplateValidGroups(_ request: DescribeDefenseTemplateValidGroupsRequest) async throws -> DescribeDefenseTemplateValidGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDefenseTemplateValidGroupsWithOptions(request as! DescribeDefenseTemplateValidGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseTemplateValidResourcesWithOptions(_ request: DescribeDefenseTemplateValidResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDefenseTemplateValidResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.defenseScene)) {
            query["DefenseScene"] = request.defenseScene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDefenseTemplateValidResources",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDefenseTemplateValidResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseTemplateValidResources(_ request: DescribeDefenseTemplateValidResourcesRequest) async throws -> DescribeDefenseTemplateValidResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDefenseTemplateValidResourcesWithOptions(request as! DescribeDefenseTemplateValidResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseTemplatesWithOptions(_ request: DescribeDefenseTemplatesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDefenseTemplatesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.defenseScene)) {
            query["DefenseScene"] = request.defenseScene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defenseSubScene)) {
            query["DefenseSubScene"] = request.defenseSubScene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        if (!TeaUtils.Client.isUnset(request.templateIds)) {
            query["TemplateIds"] = request.templateIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            query["TemplateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            query["TemplateType"] = request.templateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDefenseTemplates",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDefenseTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDefenseTemplates(_ request: DescribeDefenseTemplatesRequest) async throws -> DescribeDefenseTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDefenseTemplatesWithOptions(request as! DescribeDefenseTemplatesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDomainDNSRecordWithOptions(_ request: DescribeDomainDNSRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDomainDNSRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDomainDNSRecord",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDomainDNSRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDomainDNSRecord(_ request: DescribeDomainDNSRecordRequest) async throws -> DescribeDomainDNSRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDomainDNSRecordWithOptions(request as! DescribeDomainDNSRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDomainDetailWithOptions(_ request: DescribeDomainDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDomainDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainId)) {
            query["DomainId"] = request.domainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDomainDetail",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDomainDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDomainDetail(_ request: DescribeDomainDetailRequest) async throws -> DescribeDomainDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDomainDetailWithOptions(request as! DescribeDomainDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDomainUsedPortsWithOptions(_ request: DescribeDomainUsedPortsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDomainUsedPortsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDomainUsedPorts",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDomainUsedPortsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDomainUsedPorts(_ request: DescribeDomainUsedPortsRequest) async throws -> DescribeDomainUsedPortsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDomainUsedPortsWithOptions(request as! DescribeDomainUsedPortsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDomainsWithOptions(_ request: DescribeDomainsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDomainsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backend)) {
            query["Backend"] = request.backend ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDomains",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDomainsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDomains(_ request: DescribeDomainsRequest) async throws -> DescribeDomainsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDomainsWithOptions(request as! DescribeDomainsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFlowChartWithOptions(_ request: DescribeFlowChartRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFlowChartResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTimestamp)) {
            query["EndTimestamp"] = request.endTimestamp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.interval)) {
            query["Interval"] = request.interval ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTimestamp)) {
            query["StartTimestamp"] = request.startTimestamp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFlowChart",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFlowChartResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFlowChart(_ request: DescribeFlowChartRequest) async throws -> DescribeFlowChartResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFlowChartWithOptions(request as! DescribeFlowChartRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFlowTopResourceWithOptions(_ request: DescribeFlowTopResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFlowTopResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTimestamp)) {
            query["EndTimestamp"] = request.endTimestamp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTimestamp)) {
            query["StartTimestamp"] = request.startTimestamp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFlowTopResource",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFlowTopResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFlowTopResource(_ request: DescribeFlowTopResourceRequest) async throws -> DescribeFlowTopResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFlowTopResourceWithOptions(request as! DescribeFlowTopResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFlowTopUrlWithOptions(_ request: DescribeFlowTopUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFlowTopUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTimestamp)) {
            query["EndTimestamp"] = request.endTimestamp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTimestamp)) {
            query["StartTimestamp"] = request.startTimestamp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFlowTopUrl",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFlowTopUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFlowTopUrl(_ request: DescribeFlowTopUrlRequest) async throws -> DescribeFlowTopUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFlowTopUrlWithOptions(request as! DescribeFlowTopUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFreeUserAssetCountWithOptions(_ request: DescribeFreeUserAssetCountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFreeUserAssetCountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFreeUserAssetCount",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFreeUserAssetCountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFreeUserAssetCount(_ request: DescribeFreeUserAssetCountRequest) async throws -> DescribeFreeUserAssetCountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFreeUserAssetCountWithOptions(request as! DescribeFreeUserAssetCountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFreeUserEventCountWithOptions(_ request: DescribeFreeUserEventCountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFreeUserEventCountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFreeUserEventCount",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFreeUserEventCountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFreeUserEventCount(_ request: DescribeFreeUserEventCountRequest) async throws -> DescribeFreeUserEventCountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFreeUserEventCountWithOptions(request as! DescribeFreeUserEventCountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFreeUserEventTypesWithOptions(_ request: DescribeFreeUserEventTypesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFreeUserEventTypesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFreeUserEventTypes",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFreeUserEventTypesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFreeUserEventTypes(_ request: DescribeFreeUserEventTypesRequest) async throws -> DescribeFreeUserEventTypesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFreeUserEventTypesWithOptions(request as! DescribeFreeUserEventTypesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFreeUserEventsWithOptions(_ request: DescribeFreeUserEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFreeUserEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFreeUserEvents",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFreeUserEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFreeUserEvents(_ request: DescribeFreeUserEventsRequest) async throws -> DescribeFreeUserEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFreeUserEventsWithOptions(request as! DescribeFreeUserEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudBasicMonitorWithOptions(_ request: DescribeHybridCloudBasicMonitorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHybridCloudBasicMonitorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mid)) {
            query["Mid"] = request.mid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHybridCloudBasicMonitor",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHybridCloudBasicMonitorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudBasicMonitor(_ request: DescribeHybridCloudBasicMonitorRequest) async throws -> DescribeHybridCloudBasicMonitorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHybridCloudBasicMonitorWithOptions(request as! DescribeHybridCloudBasicMonitorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudClusterRuleWithOptions(_ request: DescribeHybridCloudClusterRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHybridCloudClusterRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHybridCloudClusterRule",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHybridCloudClusterRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudClusterRule(_ request: DescribeHybridCloudClusterRuleRequest) async throws -> DescribeHybridCloudClusterRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHybridCloudClusterRuleWithOptions(request as! DescribeHybridCloudClusterRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudClusterRulesWithOptions(_ request: DescribeHybridCloudClusterRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHybridCloudClusterRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleContent)) {
            query["RuleContent"] = request.ruleContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleMatchType)) {
            query["RuleMatchType"] = request.ruleMatchType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHybridCloudClusterRules",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHybridCloudClusterRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudClusterRules(_ request: DescribeHybridCloudClusterRulesRequest) async throws -> DescribeHybridCloudClusterRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHybridCloudClusterRulesWithOptions(request as! DescribeHybridCloudClusterRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudClusterServersWithOptions(_ request: DescribeHybridCloudClusterServersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHybridCloudClusterServersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId!;
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupType)) {
            query["GroupType"] = request.groupType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHybridCloudClusterServers",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHybridCloudClusterServersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudClusterServers(_ request: DescribeHybridCloudClusterServersRequest) async throws -> DescribeHybridCloudClusterServersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHybridCloudClusterServersWithOptions(request as! DescribeHybridCloudClusterServersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudClustersWithOptions(_ request: DescribeHybridCloudClustersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHybridCloudClustersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHybridCloudClusters",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHybridCloudClustersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudClusters(_ request: DescribeHybridCloudClustersRequest) async throws -> DescribeHybridCloudClustersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHybridCloudClustersWithOptions(request as! DescribeHybridCloudClustersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudGroupsWithOptions(_ request: DescribeHybridCloudGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHybridCloudGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId!;
        }
        if (!TeaUtils.Client.isUnset(request.clusterProxyType)) {
            query["ClusterProxyType"] = request.clusterProxyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName!;
        }
        if (!TeaUtils.Client.isUnset(request.groupType)) {
            query["GroupType"] = request.groupType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHybridCloudGroups",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHybridCloudGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudGroups(_ request: DescribeHybridCloudGroupsRequest) async throws -> DescribeHybridCloudGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHybridCloudGroupsWithOptions(request as! DescribeHybridCloudGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudProcessMonitorWithOptions(_ request: DescribeHybridCloudProcessMonitorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHybridCloudProcessMonitorResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mid)) {
            query["Mid"] = request.mid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHybridCloudProcessMonitor",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHybridCloudProcessMonitorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudProcessMonitor(_ request: DescribeHybridCloudProcessMonitorRequest) async throws -> DescribeHybridCloudProcessMonitorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHybridCloudProcessMonitorWithOptions(request as! DescribeHybridCloudProcessMonitorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudResourceDetailWithOptions(_ request: DescribeHybridCloudResourceDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHybridCloudResourceDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backend)) {
            query["Backend"] = request.backend ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cnameEnabled)) {
            query["CnameEnabled"] = request.cnameEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHybridCloudResourceDetail",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHybridCloudResourceDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudResourceDetail(_ request: DescribeHybridCloudResourceDetailRequest) async throws -> DescribeHybridCloudResourceDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHybridCloudResourceDetailWithOptions(request as! DescribeHybridCloudResourceDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudResourcesWithOptions(_ request: DescribeHybridCloudResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHybridCloudResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backend)) {
            query["Backend"] = request.backend ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cnameEnabled)) {
            query["CnameEnabled"] = request.cnameEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHybridCloudResources",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHybridCloudResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudResources(_ request: DescribeHybridCloudResourcesRequest) async throws -> DescribeHybridCloudResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHybridCloudResourcesWithOptions(request as! DescribeHybridCloudResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudSdkServersWithOptions(_ request: DescribeHybridCloudSdkServersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHybridCloudSdkServersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHybridCloudSdkServers",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHybridCloudSdkServersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudSdkServers(_ request: DescribeHybridCloudSdkServersRequest) async throws -> DescribeHybridCloudSdkServersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHybridCloudSdkServersWithOptions(request as! DescribeHybridCloudSdkServersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudServerRegionsWithOptions(_ request: DescribeHybridCloudServerRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHybridCloudServerRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionCode)) {
            query["RegionCode"] = request.regionCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionType)) {
            query["RegionType"] = request.regionType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHybridCloudServerRegions",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHybridCloudServerRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudServerRegions(_ request: DescribeHybridCloudServerRegionsRequest) async throws -> DescribeHybridCloudServerRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHybridCloudServerRegionsWithOptions(request as! DescribeHybridCloudServerRegionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudSupportRegionsWithOptions(_ request: DescribeHybridCloudSupportRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHybridCloudSupportRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHybridCloudSupportRegions",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHybridCloudSupportRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudSupportRegions(_ request: DescribeHybridCloudSupportRegionsRequest) async throws -> DescribeHybridCloudSupportRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHybridCloudSupportRegionsWithOptions(request as! DescribeHybridCloudSupportRegionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudUnassignedMachinesWithOptions(_ request: DescribeHybridCloudUnassignedMachinesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHybridCloudUnassignedMachinesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId!;
        }
        if (!TeaUtils.Client.isUnset(request.hostName)) {
            query["HostName"] = request.hostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHybridCloudUnassignedMachines",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHybridCloudUnassignedMachinesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudUnassignedMachines(_ request: DescribeHybridCloudUnassignedMachinesRequest) async throws -> DescribeHybridCloudUnassignedMachinesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHybridCloudUnassignedMachinesWithOptions(request as! DescribeHybridCloudUnassignedMachinesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudUnsupportPortsWithOptions(_ request: DescribeHybridCloudUnsupportPortsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHybridCloudUnsupportPortsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHybridCloudUnsupportPorts",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHybridCloudUnsupportPortsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudUnsupportPorts(_ request: DescribeHybridCloudUnsupportPortsRequest) async throws -> DescribeHybridCloudUnsupportPortsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHybridCloudUnsupportPortsWithOptions(request as! DescribeHybridCloudUnsupportPortsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudUserWithOptions(_ request: DescribeHybridCloudUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeHybridCloudUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeHybridCloudUser",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeHybridCloudUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeHybridCloudUser(_ request: DescribeHybridCloudUserRequest) async throws -> DescribeHybridCloudUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeHybridCloudUserWithOptions(request as! DescribeHybridCloudUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstanceWithOptions(_ request: DescribeInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInstance",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInstance(_ request: DescribeInstanceRequest) async throws -> DescribeInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInstanceWithOptions(request as! DescribeInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIpAbroadCountryInfosWithOptions(_ request: DescribeIpAbroadCountryInfosRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeIpAbroadCountryInfosResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.abroadRegion)) {
            query["AbroadRegion"] = request.abroadRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.country)) {
            query["Country"] = request.country ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeIpAbroadCountryInfos",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeIpAbroadCountryInfosResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIpAbroadCountryInfos(_ request: DescribeIpAbroadCountryInfosRequest) async throws -> DescribeIpAbroadCountryInfosResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeIpAbroadCountryInfosWithOptions(request as! DescribeIpAbroadCountryInfosRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMajorProtectionBlackIpsWithOptions(_ request: DescribeMajorProtectionBlackIpsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMajorProtectionBlackIpsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipLike)) {
            query["IpLike"] = request.ipLike ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["OrderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId!;
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMajorProtectionBlackIps",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMajorProtectionBlackIpsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMajorProtectionBlackIps(_ request: DescribeMajorProtectionBlackIpsRequest) async throws -> DescribeMajorProtectionBlackIpsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMajorProtectionBlackIpsWithOptions(request as! DescribeMajorProtectionBlackIpsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMemberAccountsWithOptions(_ request: DescribeMemberAccountsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeMemberAccountsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountStatus)) {
            query["AccountStatus"] = request.accountStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIp)) {
            query["SourceIp"] = request.sourceIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeMemberAccounts",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeMemberAccountsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeMemberAccounts(_ request: DescribeMemberAccountsRequest) async throws -> DescribeMemberAccountsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeMemberAccountsWithOptions(request as! DescribeMemberAccountsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNetworkFlowTimeSeriesMetricWithOptions(_ tmpReq: DescribeNetworkFlowTimeSeriesMetricRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNetworkFlowTimeSeriesMetricResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeNetworkFlowTimeSeriesMetricShrinkRequest = DescribeNetworkFlowTimeSeriesMetricShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filter)) {
            request.filterShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filter, "Filter", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterShrink)) {
            query["Filter"] = request.filterShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metric)) {
            query["Metric"] = request.metric ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNetworkFlowTimeSeriesMetric",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNetworkFlowTimeSeriesMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNetworkFlowTimeSeriesMetric(_ request: DescribeNetworkFlowTimeSeriesMetricRequest) async throws -> DescribeNetworkFlowTimeSeriesMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNetworkFlowTimeSeriesMetricWithOptions(request as! DescribeNetworkFlowTimeSeriesMetricRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNetworkFlowTopNMetricWithOptions(_ tmpReq: DescribeNetworkFlowTopNMetricRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNetworkFlowTopNMetricResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeNetworkFlowTopNMetricShrinkRequest = DescribeNetworkFlowTopNMetricShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filter)) {
            request.filterShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filter, "Filter", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterShrink)) {
            query["Filter"] = request.filterShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.metric)) {
            query["Metric"] = request.metric ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNetworkFlowTopNMetric",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNetworkFlowTopNMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNetworkFlowTopNMetric(_ request: DescribeNetworkFlowTopNMetricRequest) async throws -> DescribeNetworkFlowTopNMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNetworkFlowTopNMetricWithOptions(request as! DescribeNetworkFlowTopNMetricRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePauseProtectionStatusWithOptions(_ request: DescribePauseProtectionStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePauseProtectionStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePauseProtectionStatus",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePauseProtectionStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePauseProtectionStatus(_ request: DescribePauseProtectionStatusRequest) async throws -> DescribePauseProtectionStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePauseProtectionStatusWithOptions(request as! DescribePauseProtectionStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePeakTrendWithOptions(_ request: DescribePeakTrendRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePeakTrendResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTimestamp)) {
            query["EndTimestamp"] = request.endTimestamp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.interval)) {
            query["Interval"] = request.interval ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTimestamp)) {
            query["StartTimestamp"] = request.startTimestamp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePeakTrend",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePeakTrendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePeakTrend(_ request: DescribePeakTrendRequest) async throws -> DescribePeakTrendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePeakTrendWithOptions(request as! DescribePeakTrendRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeProductInstancesWithOptions(_ request: DescribeProductInstancesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeProductInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerUserId)) {
            query["OwnerUserId"] = request.ownerUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceInstanceAccessStatus)) {
            query["ResourceInstanceAccessStatus"] = request.resourceInstanceAccessStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceInstanceId)) {
            query["ResourceInstanceId"] = request.resourceInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceInstanceIp)) {
            query["ResourceInstanceIp"] = request.resourceInstanceIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceInstanceName)) {
            query["ResourceInstanceName"] = request.resourceInstanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIp)) {
            query["ResourceIp"] = request.resourceIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceName)) {
            query["ResourceName"] = request.resourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceProduct)) {
            query["ResourceProduct"] = request.resourceProduct ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceRegionId)) {
            query["ResourceRegionId"] = request.resourceRegionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeProductInstances",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeProductInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeProductInstances(_ request: DescribeProductInstancesRequest) async throws -> DescribeProductInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeProductInstancesWithOptions(request as! DescribeProductInstancesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePunishedDomainsWithOptions(_ request: DescribePunishedDomainsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePunishedDomainsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domains)) {
            query["Domains"] = request.domains ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.punishType)) {
            query["PunishType"] = request.punishType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePunishedDomains",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePunishedDomainsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePunishedDomains(_ request: DescribePunishedDomainsRequest) async throws -> DescribePunishedDomainsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePunishedDomainsWithOptions(request as! DescribePunishedDomainsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceInstanceCertsWithOptions(_ request: DescribeResourceInstanceCertsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeResourceInstanceCertsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceInstanceId)) {
            query["ResourceInstanceId"] = request.resourceInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeResourceInstanceCerts",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeResourceInstanceCertsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceInstanceCerts(_ request: DescribeResourceInstanceCertsRequest) async throws -> DescribeResourceInstanceCertsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeResourceInstanceCertsWithOptions(request as! DescribeResourceInstanceCertsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceLogStatusWithOptions(_ request: DescribeResourceLogStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeResourceLogStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resources)) {
            query["Resources"] = request.resources ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeResourceLogStatus",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeResourceLogStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceLogStatus(_ request: DescribeResourceLogStatusRequest) async throws -> DescribeResourceLogStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeResourceLogStatusWithOptions(request as! DescribeResourceLogStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourcePortWithOptions(_ request: DescribeResourcePortRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeResourcePortResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceInstanceId)) {
            query["ResourceInstanceId"] = request.resourceInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeResourcePort",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeResourcePortResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourcePort(_ request: DescribeResourcePortRequest) async throws -> DescribeResourcePortResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeResourcePortWithOptions(request as! DescribeResourcePortRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceRegionIdWithOptions(_ request: DescribeResourceRegionIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeResourceRegionIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeResourceRegionId",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeResourceRegionIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceRegionId(_ request: DescribeResourceRegionIdRequest) async throws -> DescribeResourceRegionIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeResourceRegionIdWithOptions(request as! DescribeResourceRegionIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceSupportRegionsWithOptions(_ request: DescribeResourceSupportRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeResourceSupportRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceProduct)) {
            query["ResourceProduct"] = request.resourceProduct ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeResourceSupportRegions",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeResourceSupportRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResourceSupportRegions(_ request: DescribeResourceSupportRegionsRequest) async throws -> DescribeResourceSupportRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeResourceSupportRegionsWithOptions(request as! DescribeResourceSupportRegionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResponseCodeTrendGraphWithOptions(_ request: DescribeResponseCodeTrendGraphRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeResponseCodeTrendGraphResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTimestamp)) {
            query["EndTimestamp"] = request.endTimestamp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.interval)) {
            query["Interval"] = request.interval ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTimestamp)) {
            query["StartTimestamp"] = request.startTimestamp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeResponseCodeTrendGraph",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeResponseCodeTrendGraphResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeResponseCodeTrendGraph(_ request: DescribeResponseCodeTrendGraphRequest) async throws -> DescribeResponseCodeTrendGraphResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeResponseCodeTrendGraphWithOptions(request as! DescribeResponseCodeTrendGraphRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRuleGroupsWithOptions(_ request: DescribeRuleGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRuleGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchType)) {
            query["SearchType"] = request.searchType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.searchValue)) {
            query["SearchValue"] = request.searchValue ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRuleGroups",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRuleGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRuleGroups(_ request: DescribeRuleGroupsRequest) async throws -> DescribeRuleGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRuleGroupsWithOptions(request as! DescribeRuleGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRuleHitsTopClientIpWithOptions(_ request: DescribeRuleHitsTopClientIpRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRuleHitsTopClientIpResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTimestamp)) {
            query["EndTimestamp"] = request.endTimestamp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTimestamp)) {
            query["StartTimestamp"] = request.startTimestamp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRuleHitsTopClientIp",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRuleHitsTopClientIpResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRuleHitsTopClientIp(_ request: DescribeRuleHitsTopClientIpRequest) async throws -> DescribeRuleHitsTopClientIpResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRuleHitsTopClientIpWithOptions(request as! DescribeRuleHitsTopClientIpRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRuleHitsTopResourceWithOptions(_ request: DescribeRuleHitsTopResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRuleHitsTopResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTimestamp)) {
            query["EndTimestamp"] = request.endTimestamp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTimestamp)) {
            query["StartTimestamp"] = request.startTimestamp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRuleHitsTopResource",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRuleHitsTopResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRuleHitsTopResource(_ request: DescribeRuleHitsTopResourceRequest) async throws -> DescribeRuleHitsTopResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRuleHitsTopResourceWithOptions(request as! DescribeRuleHitsTopResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRuleHitsTopRuleIdWithOptions(_ request: DescribeRuleHitsTopRuleIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRuleHitsTopRuleIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTimestamp)) {
            query["EndTimestamp"] = request.endTimestamp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isGroupResource)) {
            query["IsGroupResource"] = request.isGroupResource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTimestamp)) {
            query["StartTimestamp"] = request.startTimestamp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRuleHitsTopRuleId",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRuleHitsTopRuleIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRuleHitsTopRuleId(_ request: DescribeRuleHitsTopRuleIdRequest) async throws -> DescribeRuleHitsTopRuleIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRuleHitsTopRuleIdWithOptions(request as! DescribeRuleHitsTopRuleIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRuleHitsTopTuleTypeWithOptions(_ request: DescribeRuleHitsTopTuleTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRuleHitsTopTuleTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTimestamp)) {
            query["EndTimestamp"] = request.endTimestamp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTimestamp)) {
            query["StartTimestamp"] = request.startTimestamp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRuleHitsTopTuleType",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRuleHitsTopTuleTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRuleHitsTopTuleType(_ request: DescribeRuleHitsTopTuleTypeRequest) async throws -> DescribeRuleHitsTopTuleTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRuleHitsTopTuleTypeWithOptions(request as! DescribeRuleHitsTopTuleTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRuleHitsTopUaWithOptions(_ request: DescribeRuleHitsTopUaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRuleHitsTopUaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTimestamp)) {
            query["EndTimestamp"] = request.endTimestamp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTimestamp)) {
            query["StartTimestamp"] = request.startTimestamp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRuleHitsTopUa",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRuleHitsTopUaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRuleHitsTopUa(_ request: DescribeRuleHitsTopUaRequest) async throws -> DescribeRuleHitsTopUaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRuleHitsTopUaWithOptions(request as! DescribeRuleHitsTopUaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRuleHitsTopUrlWithOptions(_ request: DescribeRuleHitsTopUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRuleHitsTopUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTimestamp)) {
            query["EndTimestamp"] = request.endTimestamp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTimestamp)) {
            query["StartTimestamp"] = request.startTimestamp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRuleHitsTopUrl",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRuleHitsTopUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRuleHitsTopUrl(_ request: DescribeRuleHitsTopUrlRequest) async throws -> DescribeRuleHitsTopUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRuleHitsTopUrlWithOptions(request as! DescribeRuleHitsTopUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityEventLogsWithOptions(_ tmpReq: DescribeSecurityEventLogsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSecurityEventLogsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeSecurityEventLogsShrinkRequest = DescribeSecurityEventLogsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filter)) {
            request.filterShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filter, "Filter", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterShrink)) {
            query["Filter"] = request.filterShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSecurityEventLogs",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSecurityEventLogsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityEventLogs(_ request: DescribeSecurityEventLogsRequest) async throws -> DescribeSecurityEventLogsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSecurityEventLogsWithOptions(request as! DescribeSecurityEventLogsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityEventTimeSeriesMetricWithOptions(_ tmpReq: DescribeSecurityEventTimeSeriesMetricRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSecurityEventTimeSeriesMetricResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeSecurityEventTimeSeriesMetricShrinkRequest = DescribeSecurityEventTimeSeriesMetricShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filter)) {
            request.filterShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filter, "Filter", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterShrink)) {
            query["Filter"] = request.filterShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metric)) {
            query["Metric"] = request.metric ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSecurityEventTimeSeriesMetric",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSecurityEventTimeSeriesMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityEventTimeSeriesMetric(_ request: DescribeSecurityEventTimeSeriesMetricRequest) async throws -> DescribeSecurityEventTimeSeriesMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSecurityEventTimeSeriesMetricWithOptions(request as! DescribeSecurityEventTimeSeriesMetricRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityEventTopNMetricWithOptions(_ tmpReq: DescribeSecurityEventTopNMetricRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSecurityEventTopNMetricResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DescribeSecurityEventTopNMetricShrinkRequest = DescribeSecurityEventTopNMetricShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.filter)) {
            request.filterShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.filter, "Filter", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterShrink)) {
            query["Filter"] = request.filterShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.metric)) {
            query["Metric"] = request.metric ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSecurityEventTopNMetric",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSecurityEventTopNMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityEventTopNMetric(_ request: DescribeSecurityEventTopNMetricRequest) async throws -> DescribeSecurityEventTopNMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSecurityEventTopNMetricWithOptions(request as! DescribeSecurityEventTopNMetricRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSensitiveApiStatisticWithOptions(_ request: DescribeSensitiveApiStatisticRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSensitiveApiStatisticResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.matchedHost)) {
            query["MatchedHost"] = request.matchedHost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSensitiveApiStatistic",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSensitiveApiStatisticResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSensitiveApiStatistic(_ request: DescribeSensitiveApiStatisticRequest) async throws -> DescribeSensitiveApiStatisticResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSensitiveApiStatisticWithOptions(request as! DescribeSensitiveApiStatisticRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSensitiveDetectionResultWithOptions(_ request: DescribeSensitiveDetectionResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSensitiveDetectionResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSensitiveDetectionResult",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSensitiveDetectionResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSensitiveDetectionResult(_ request: DescribeSensitiveDetectionResultRequest) async throws -> DescribeSensitiveDetectionResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSensitiveDetectionResultWithOptions(request as! DescribeSensitiveDetectionResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSensitiveOutboundDistributionWithOptions(_ request: DescribeSensitiveOutboundDistributionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSensitiveOutboundDistributionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSensitiveOutboundDistribution",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSensitiveOutboundDistributionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSensitiveOutboundDistribution(_ request: DescribeSensitiveOutboundDistributionRequest) async throws -> DescribeSensitiveOutboundDistributionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSensitiveOutboundDistributionWithOptions(request as! DescribeSensitiveOutboundDistributionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSensitiveOutboundStatisticWithOptions(_ request: DescribeSensitiveOutboundStatisticRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSensitiveOutboundStatisticResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.detectionResult)) {
            query["DetectionResult"] = request.detectionResult ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderKey)) {
            query["OrderKey"] = request.orderKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderWay)) {
            query["OrderWay"] = request.orderWay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sensitiveCode)) {
            query["SensitiveCode"] = request.sensitiveCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sensitiveLevel)) {
            query["SensitiveLevel"] = request.sensitiveLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sensitiveType)) {
            query["SensitiveType"] = request.sensitiveType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSensitiveOutboundStatistic",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSensitiveOutboundStatisticResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSensitiveOutboundStatistic(_ request: DescribeSensitiveOutboundStatisticRequest) async throws -> DescribeSensitiveOutboundStatisticResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSensitiveOutboundStatisticWithOptions(request as! DescribeSensitiveOutboundStatisticRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSensitiveOutboundTrendWithOptions(_ request: DescribeSensitiveOutboundTrendRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSensitiveOutboundTrendResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSensitiveOutboundTrend",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSensitiveOutboundTrendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSensitiveOutboundTrend(_ request: DescribeSensitiveOutboundTrendRequest) async throws -> DescribeSensitiveOutboundTrendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSensitiveOutboundTrendWithOptions(request as! DescribeSensitiveOutboundTrendRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSensitiveRequestLogWithOptions(_ request: DescribeSensitiveRequestLogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSensitiveRequestLogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiFormat)) {
            query["ApiFormat"] = request.apiFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientIP)) {
            query["ClientIP"] = request.clientIP ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.matchedHost)) {
            query["MatchedHost"] = request.matchedHost ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sensitiveCode)) {
            query["SensitiveCode"] = request.sensitiveCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sensitiveData)) {
            query["SensitiveData"] = request.sensitiveData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSensitiveRequestLog",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSensitiveRequestLogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSensitiveRequestLog(_ request: DescribeSensitiveRequestLogRequest) async throws -> DescribeSensitiveRequestLogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSensitiveRequestLogWithOptions(request as! DescribeSensitiveRequestLogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSensitiveRequestsWithOptions(_ request: DescribeSensitiveRequestsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSensitiveRequestsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sensitiveCode)) {
            query["SensitiveCode"] = request.sensitiveCode!;
        }
        if (!TeaUtils.Client.isUnset(request.sensitiveData)) {
            query["SensitiveData"] = request.sensitiveData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSensitiveRequests",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSensitiveRequestsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSensitiveRequests(_ request: DescribeSensitiveRequestsRequest) async throws -> DescribeSensitiveRequestsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSensitiveRequestsWithOptions(request as! DescribeSensitiveRequestsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSensitiveStatisticWithOptions(_ request: DescribeSensitiveStatisticRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSensitiveStatisticResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.statisticType)) {
            query["StatisticType"] = request.statisticType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSensitiveStatistic",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSensitiveStatisticResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSensitiveStatistic(_ request: DescribeSensitiveStatisticRequest) async throws -> DescribeSensitiveStatisticResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSensitiveStatisticWithOptions(request as! DescribeSensitiveStatisticRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSlsAuthStatusWithOptions(_ request: DescribeSlsAuthStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSlsAuthStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSlsAuthStatus",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSlsAuthStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSlsAuthStatus(_ request: DescribeSlsAuthStatusRequest) async throws -> DescribeSlsAuthStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSlsAuthStatusWithOptions(request as! DescribeSlsAuthStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSlsLogStoreWithOptions(_ request: DescribeSlsLogStoreRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSlsLogStoreResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSlsLogStore",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSlsLogStoreResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSlsLogStore(_ request: DescribeSlsLogStoreRequest) async throws -> DescribeSlsLogStoreResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSlsLogStoreWithOptions(request as! DescribeSlsLogStoreRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSlsLogStoreStatusWithOptions(_ request: DescribeSlsLogStoreStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSlsLogStoreStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSlsLogStoreStatus",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSlsLogStoreStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSlsLogStoreStatus(_ request: DescribeSlsLogStoreStatusRequest) async throws -> DescribeSlsLogStoreStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSlsLogStoreStatusWithOptions(request as! DescribeSlsLogStoreStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTemplateResourceCountWithOptions(_ request: DescribeTemplateResourceCountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTemplateResourceCountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateIds)) {
            query["TemplateIds"] = request.templateIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTemplateResourceCount",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTemplateResourceCountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTemplateResourceCount(_ request: DescribeTemplateResourceCountRequest) async throws -> DescribeTemplateResourceCountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTemplateResourceCountWithOptions(request as! DescribeTemplateResourceCountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTemplateResourcesWithOptions(_ request: DescribeTemplateResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeTemplateResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assetApi)) {
            query["AssetApi"] = request.assetApi ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeTemplateResources",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeTemplateResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeTemplateResources(_ request: DescribeTemplateResourcesRequest) async throws -> DescribeTemplateResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeTemplateResourcesWithOptions(request as! DescribeTemplateResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserAbnormalTrendWithOptions(_ request: DescribeUserAbnormalTrendRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserAbnormalTrendResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUserAbnormalTrend",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUserAbnormalTrendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserAbnormalTrend(_ request: DescribeUserAbnormalTrendRequest) async throws -> DescribeUserAbnormalTrendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUserAbnormalTrendWithOptions(request as! DescribeUserAbnormalTrendRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserAbnormalTypeWithOptions(_ request: DescribeUserAbnormalTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserAbnormalTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.userStatusList)) {
            query["UserStatusList"] = request.userStatusList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUserAbnormalType",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUserAbnormalTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserAbnormalType(_ request: DescribeUserAbnormalTypeRequest) async throws -> DescribeUserAbnormalTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUserAbnormalTypeWithOptions(request as! DescribeUserAbnormalTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserApiRequestWithOptions(_ request: DescribeUserApiRequestRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserApiRequestResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiFormat)) {
            query["ApiFormat"] = request.apiFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUserApiRequest",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUserApiRequestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserApiRequest(_ request: DescribeUserApiRequestRequest) async throws -> DescribeUserApiRequestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUserApiRequestWithOptions(request as! DescribeUserApiRequestRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserAssetWithOptions(_ request: DescribeUserAssetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserAssetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            query["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.days)) {
            query["Days"] = request.days ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUserAsset",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUserAssetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserAsset(_ request: DescribeUserAssetRequest) async throws -> DescribeUserAssetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUserAssetWithOptions(request as! DescribeUserAssetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserEventTrendWithOptions(_ request: DescribeUserEventTrendRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserEventTrendResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUserEventTrend",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUserEventTrendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserEventTrend(_ request: DescribeUserEventTrendRequest) async throws -> DescribeUserEventTrendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUserEventTrendWithOptions(request as! DescribeUserEventTrendRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserEventTypeWithOptions(_ request: DescribeUserEventTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserEventTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.userStatusList)) {
            query["UserStatusList"] = request.userStatusList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUserEventType",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUserEventTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserEventType(_ request: DescribeUserEventTypeRequest) async throws -> DescribeUserEventTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUserEventTypeWithOptions(request as! DescribeUserEventTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserLogFieldConfigWithOptions(_ request: DescribeUserLogFieldConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserLogFieldConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deliveryType)) {
            query["DeliveryType"] = request.deliveryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUserLogFieldConfig",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUserLogFieldConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserLogFieldConfig(_ request: DescribeUserLogFieldConfigRequest) async throws -> DescribeUserLogFieldConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUserLogFieldConfigWithOptions(request as! DescribeUserLogFieldConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserSlsLogRegionsWithOptions(_ request: DescribeUserSlsLogRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserSlsLogRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUserSlsLogRegions",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUserSlsLogRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserSlsLogRegions(_ request: DescribeUserSlsLogRegionsRequest) async throws -> DescribeUserSlsLogRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUserSlsLogRegionsWithOptions(request as! DescribeUserSlsLogRegionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserWafLogStatusWithOptions(_ request: DescribeUserWafLogStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserWafLogStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUserWafLogStatus",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUserWafLogStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserWafLogStatus(_ request: DescribeUserWafLogStatusRequest) async throws -> DescribeUserWafLogStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUserWafLogStatusWithOptions(request as! DescribeUserWafLogStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVisitTopIpWithOptions(_ request: DescribeVisitTopIpRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVisitTopIpResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTimestamp)) {
            query["EndTimestamp"] = request.endTimestamp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTimestamp)) {
            query["StartTimestamp"] = request.startTimestamp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVisitTopIp",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVisitTopIpResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVisitTopIp(_ request: DescribeVisitTopIpRequest) async throws -> DescribeVisitTopIpResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVisitTopIpWithOptions(request as! DescribeVisitTopIpRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVisitUasWithOptions(_ request: DescribeVisitUasRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVisitUasResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTimestamp)) {
            query["EndTimestamp"] = request.endTimestamp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTimestamp)) {
            query["StartTimestamp"] = request.startTimestamp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVisitUas",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVisitUasResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVisitUas(_ request: DescribeVisitUasRequest) async throws -> DescribeVisitUasResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVisitUasWithOptions(request as! DescribeVisitUasRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWafSourceIpSegmentWithOptions(_ request: DescribeWafSourceIpSegmentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeWafSourceIpSegmentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeWafSourceIpSegment",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeWafSourceIpSegmentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeWafSourceIpSegment(_ request: DescribeWafSourceIpSegmentRequest) async throws -> DescribeWafSourceIpSegmentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeWafSourceIpSegmentWithOptions(request as! DescribeWafSourceIpSegmentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagKeysWithOptions(_ request: ListTagKeysRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagKeysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagKeys",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagKeysResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagKeys(_ request: ListTagKeysRequest) async throws -> ListTagKeysResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTagKeysWithOptions(request as! ListTagKeysRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResourcesWithOptions(_ request: ListTagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
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
            "action": "ListTagResources",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResources(_ request: ListTagResourcesRequest) async throws -> ListTagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTagResourcesWithOptions(request as! ListTagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagValuesWithOptions(_ request: ListTagValuesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagValuesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.key)) {
            query["Key"] = request.key ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagValues",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagValuesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagValues(_ request: ListTagValuesRequest) async throws -> ListTagValuesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTagValuesWithOptions(request as! ListTagValuesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApisecAbnormalsWithOptions(_ request: ModifyApisecAbnormalsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyApisecAbnormalsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.abnormalIds)) {
            query["AbnormalIds"] = request.abnormalIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.note)) {
            query["Note"] = request.note ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userStatus)) {
            query["UserStatus"] = request.userStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyApisecAbnormals",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyApisecAbnormalsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApisecAbnormals(_ request: ModifyApisecAbnormalsRequest) async throws -> ModifyApisecAbnormalsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyApisecAbnormalsWithOptions(request as! ModifyApisecAbnormalsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApisecApiResourceWithOptions(_ request: ModifyApisecApiResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyApisecApiResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.follow)) {
            query["Follow"] = request.follow!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.note)) {
            query["Note"] = request.note ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyApisecApiResource",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyApisecApiResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApisecApiResource(_ request: ModifyApisecApiResourceRequest) async throws -> ModifyApisecApiResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyApisecApiResourceWithOptions(request as! ModifyApisecApiResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApisecEventsWithOptions(_ request: ModifyApisecEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyApisecEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventIds)) {
            query["EventIds"] = request.eventIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.note)) {
            query["Note"] = request.note ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userStatus)) {
            query["UserStatus"] = request.userStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyApisecEvents",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyApisecEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApisecEvents(_ request: ModifyApisecEventsRequest) async throws -> ModifyApisecEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyApisecEventsWithOptions(request as! ModifyApisecEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApisecLogDeliveryWithOptions(_ request: ModifyApisecLogDeliveryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyApisecLogDeliveryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assertKey)) {
            query["AssertKey"] = request.assertKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logRegionId)) {
            query["LogRegionId"] = request.logRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logStoreName)) {
            query["LogStoreName"] = request.logStoreName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.projectName)) {
            query["ProjectName"] = request.projectName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyApisecLogDelivery",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyApisecLogDeliveryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApisecLogDelivery(_ request: ModifyApisecLogDeliveryRequest) async throws -> ModifyApisecLogDeliveryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyApisecLogDeliveryWithOptions(request as! ModifyApisecLogDeliveryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApisecLogDeliveryStatusWithOptions(_ request: ModifyApisecLogDeliveryStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyApisecLogDeliveryStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assertKey)) {
            query["AssertKey"] = request.assertKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyApisecLogDeliveryStatus",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyApisecLogDeliveryStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApisecLogDeliveryStatus(_ request: ModifyApisecLogDeliveryStatusRequest) async throws -> ModifyApisecLogDeliveryStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyApisecLogDeliveryStatusWithOptions(request as! ModifyApisecLogDeliveryStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApisecModuleStatusWithOptions(_ request: ModifyApisecModuleStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyApisecModuleStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reportStatus)) {
            query["ReportStatus"] = request.reportStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroups)) {
            query["ResourceGroups"] = request.resourceGroups ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resources)) {
            query["Resources"] = request.resources ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.traceStatus)) {
            query["TraceStatus"] = request.traceStatus!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyApisecModuleStatus",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyApisecModuleStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApisecModuleStatus(_ request: ModifyApisecModuleStatusRequest) async throws -> ModifyApisecModuleStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyApisecModuleStatusWithOptions(request as! ModifyApisecModuleStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApisecStatusWithOptions(_ request: ModifyApisecStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyApisecStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apisecStatus)) {
            query["ApisecStatus"] = request.apisecStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroups)) {
            query["ResourceGroups"] = request.resourceGroups ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resources)) {
            query["Resources"] = request.resources ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyApisecStatus",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyApisecStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyApisecStatus(_ request: ModifyApisecStatusRequest) async throws -> ModifyApisecStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyApisecStatusWithOptions(request as! ModifyApisecStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCloudResourceWithOptions(_ tmpReq: ModifyCloudResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyCloudResourceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyCloudResourceShrinkRequest = ModifyCloudResourceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listen)) {
            request.listenShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listen, "Listen", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.redirect)) {
            request.redirectShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.redirect, "Redirect", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.listenShrink)) {
            query["Listen"] = request.listenShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.redirectShrink)) {
            query["Redirect"] = request.redirectShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyCloudResource",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyCloudResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCloudResource(_ request: ModifyCloudResourceRequest) async throws -> ModifyCloudResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyCloudResourceWithOptions(request as! ModifyCloudResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDefaultHttpsWithOptions(_ request: ModifyDefaultHttpsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDefaultHttpsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.certId)) {
            query["CertId"] = request.certId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cipherSuite)) {
            query["CipherSuite"] = request.cipherSuite!;
        }
        if (!TeaUtils.Client.isUnset(request.customCiphers)) {
            query["CustomCiphers"] = request.customCiphers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.enableTLSv3)) {
            query["EnableTLSv3"] = request.enableTLSv3!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.TLSVersion)) {
            query["TLSVersion"] = request.TLSVersion ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDefaultHttps",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDefaultHttpsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDefaultHttps(_ request: ModifyDefaultHttpsRequest) async throws -> ModifyDefaultHttpsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDefaultHttpsWithOptions(request as! ModifyDefaultHttpsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDefenseResourceGroupWithOptions(_ request: ModifyDefenseResourceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDefenseResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addList)) {
            query["AddList"] = request.addList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deleteList)) {
            query["DeleteList"] = request.deleteList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDefenseResourceGroup",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDefenseResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDefenseResourceGroup(_ request: ModifyDefenseResourceGroupRequest) async throws -> ModifyDefenseResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDefenseResourceGroupWithOptions(request as! ModifyDefenseResourceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDefenseResourceXffWithOptions(_ request: ModifyDefenseResourceXffRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDefenseResourceXffResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acwCookieStatus)) {
            query["AcwCookieStatus"] = request.acwCookieStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.acwSecureStatus)) {
            query["AcwSecureStatus"] = request.acwSecureStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.acwV3SecureStatus)) {
            query["AcwV3SecureStatus"] = request.acwV3SecureStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.customHeaders)) {
            query["CustomHeaders"] = request.customHeaders ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.responseHeaders)) {
            query["ResponseHeaders"] = request.responseHeaders ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.xffStatus)) {
            query["XffStatus"] = request.xffStatus!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDefenseResourceXff",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDefenseResourceXffResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDefenseResourceXff(_ request: ModifyDefenseResourceXffRequest) async throws -> ModifyDefenseResourceXffResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDefenseResourceXffWithOptions(request as! ModifyDefenseResourceXffRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDefenseRuleWithOptions(_ request: ModifyDefenseRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDefenseRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.defenseScene)) {
            query["DefenseScene"] = request.defenseScene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defenseType)) {
            query["DefenseType"] = request.defenseType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.rules)) {
            body["Rules"] = request.rules ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDefenseRule",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDefenseRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDefenseRule(_ request: ModifyDefenseRuleRequest) async throws -> ModifyDefenseRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDefenseRuleWithOptions(request as! ModifyDefenseRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDefenseRuleCacheWithOptions(_ request: ModifyDefenseRuleCacheRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDefenseRuleCacheResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId!;
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDefenseRuleCache",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDefenseRuleCacheResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDefenseRuleCache(_ request: ModifyDefenseRuleCacheRequest) async throws -> ModifyDefenseRuleCacheResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDefenseRuleCacheWithOptions(request as! ModifyDefenseRuleCacheRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDefenseRuleStatusWithOptions(_ request: ModifyDefenseRuleStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDefenseRuleStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.defenseType)) {
            query["DefenseType"] = request.defenseType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleStatus)) {
            query["RuleStatus"] = request.ruleStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDefenseRuleStatus",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDefenseRuleStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDefenseRuleStatus(_ request: ModifyDefenseRuleStatusRequest) async throws -> ModifyDefenseRuleStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDefenseRuleStatusWithOptions(request as! ModifyDefenseRuleStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDefenseSceneConfigWithOptions(_ request: ModifyDefenseSceneConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDefenseSceneConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configKey)) {
            query["ConfigKey"] = request.configKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configValue)) {
            query["ConfigValue"] = request.configValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defenseScene)) {
            query["DefenseScene"] = request.defenseScene ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDefenseSceneConfig",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDefenseSceneConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDefenseSceneConfig(_ request: ModifyDefenseSceneConfigRequest) async throws -> ModifyDefenseSceneConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDefenseSceneConfigWithOptions(request as! ModifyDefenseSceneConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDefenseTemplateWithOptions(_ request: ModifyDefenseTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDefenseTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            query["TemplateName"] = request.templateName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDefenseTemplate",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDefenseTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDefenseTemplate(_ request: ModifyDefenseTemplateRequest) async throws -> ModifyDefenseTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDefenseTemplateWithOptions(request as! ModifyDefenseTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDefenseTemplateStatusWithOptions(_ request: ModifyDefenseTemplateStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDefenseTemplateStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        if (!TeaUtils.Client.isUnset(request.templateStatus)) {
            query["TemplateStatus"] = request.templateStatus!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDefenseTemplateStatus",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDefenseTemplateStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDefenseTemplateStatus(_ request: ModifyDefenseTemplateStatusRequest) async throws -> ModifyDefenseTemplateStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDefenseTemplateStatusWithOptions(request as! ModifyDefenseTemplateStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDomainWithOptions(_ tmpReq: ModifyDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDomainResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyDomainShrinkRequest = ModifyDomainShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.listen)) {
            request.listenShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.listen, "Listen", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.redirect)) {
            request.redirectShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.redirect, "Redirect", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessType)) {
            query["AccessType"] = request.accessType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainId)) {
            query["DomainId"] = request.domainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.listenShrink)) {
            query["Listen"] = request.listenShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.redirectShrink)) {
            query["Redirect"] = request.redirectShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDomain",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDomain(_ request: ModifyDomainRequest) async throws -> ModifyDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDomainWithOptions(request as! ModifyDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDomainPunishStatusWithOptions(_ request: ModifyDomainPunishStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDomainPunishStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domain)) {
            query["Domain"] = request.domain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDomainPunishStatus",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDomainPunishStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDomainPunishStatus(_ request: ModifyDomainPunishStatusRequest) async throws -> ModifyDomainPunishStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDomainPunishStatusWithOptions(request as! ModifyDomainPunishStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHybridCloudClusterWithOptions(_ request: ModifyHybridCloudClusterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyHybridCloudClusterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessMode)) {
            query["AccessMode"] = request.accessMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.accessRegion)) {
            query["AccessRegion"] = request.accessRegion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clusterName)) {
            query["ClusterName"] = request.clusterName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.httpPorts)) {
            query["HttpPorts"] = request.httpPorts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.httpsPorts)) {
            query["HttpsPorts"] = request.httpsPorts ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logFieldsNotReturned)) {
            query["LogFieldsNotReturned"] = request.logFieldsNotReturned ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protectionServerCount)) {
            query["ProtectionServerCount"] = request.protectionServerCount!;
        }
        if (!TeaUtils.Client.isUnset(request.proxyStatus)) {
            query["ProxyStatus"] = request.proxyStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyType)) {
            query["ProxyType"] = request.proxyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleConfig)) {
            query["RuleConfig"] = request.ruleConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleStatus)) {
            query["RuleStatus"] = request.ruleStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyHybridCloudCluster",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyHybridCloudClusterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHybridCloudCluster(_ request: ModifyHybridCloudClusterRequest) async throws -> ModifyHybridCloudClusterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyHybridCloudClusterWithOptions(request as! ModifyHybridCloudClusterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHybridCloudClusterBypassStatusWithOptions(_ request: ModifyHybridCloudClusterBypassStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyHybridCloudClusterBypassStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterResourceId)) {
            query["ClusterResourceId"] = request.clusterResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleStatus)) {
            query["RuleStatus"] = request.ruleStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyHybridCloudClusterBypassStatus",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyHybridCloudClusterBypassStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHybridCloudClusterBypassStatus(_ request: ModifyHybridCloudClusterBypassStatusRequest) async throws -> ModifyHybridCloudClusterBypassStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyHybridCloudClusterBypassStatusWithOptions(request as! ModifyHybridCloudClusterBypassStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHybridCloudClusterRuleWithOptions(_ request: ModifyHybridCloudClusterRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyHybridCloudClusterRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId!;
        }
        if (!TeaUtils.Client.isUnset(request.clusterRuleResourceId)) {
            query["ClusterRuleResourceId"] = request.clusterRuleResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleConfig)) {
            query["RuleConfig"] = request.ruleConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleStatus)) {
            query["RuleStatus"] = request.ruleStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleType)) {
            query["RuleType"] = request.ruleType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyHybridCloudClusterRule",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyHybridCloudClusterRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHybridCloudClusterRule(_ request: ModifyHybridCloudClusterRuleRequest) async throws -> ModifyHybridCloudClusterRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyHybridCloudClusterRuleWithOptions(request as! ModifyHybridCloudClusterRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHybridCloudGroupWithOptions(_ request: ModifyHybridCloudGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyHybridCloudGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId!;
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            query["Remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyHybridCloudGroup",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyHybridCloudGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHybridCloudGroup(_ request: ModifyHybridCloudGroupRequest) async throws -> ModifyHybridCloudGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyHybridCloudGroupWithOptions(request as! ModifyHybridCloudGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHybridCloudGroupExpansionServerWithOptions(_ request: ModifyHybridCloudGroupExpansionServerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyHybridCloudGroupExpansionServerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId!;
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mids)) {
            query["Mids"] = request.mids ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyHybridCloudGroupExpansionServer",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyHybridCloudGroupExpansionServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHybridCloudGroupExpansionServer(_ request: ModifyHybridCloudGroupExpansionServerRequest) async throws -> ModifyHybridCloudGroupExpansionServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyHybridCloudGroupExpansionServerWithOptions(request as! ModifyHybridCloudGroupExpansionServerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHybridCloudGroupShrinkServerWithOptions(_ request: ModifyHybridCloudGroupShrinkServerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyHybridCloudGroupShrinkServerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterId)) {
            query["ClusterId"] = request.clusterId!;
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mids)) {
            query["Mids"] = request.mids ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyHybridCloudGroupShrinkServer",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyHybridCloudGroupShrinkServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHybridCloudGroupShrinkServer(_ request: ModifyHybridCloudGroupShrinkServerRequest) async throws -> ModifyHybridCloudGroupShrinkServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyHybridCloudGroupShrinkServerWithOptions(request as! ModifyHybridCloudGroupShrinkServerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHybridCloudSdkPullinStatusWithOptions(_ request: ModifyHybridCloudSdkPullinStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyHybridCloudSdkPullinStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mid)) {
            query["Mid"] = request.mid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pullinStatus)) {
            query["PullinStatus"] = request.pullinStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyHybridCloudSdkPullinStatus",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyHybridCloudSdkPullinStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHybridCloudSdkPullinStatus(_ request: ModifyHybridCloudSdkPullinStatusRequest) async throws -> ModifyHybridCloudSdkPullinStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyHybridCloudSdkPullinStatusWithOptions(request as! ModifyHybridCloudSdkPullinStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHybridCloudServerWithOptions(_ request: ModifyHybridCloudServerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyHybridCloudServerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.continents)) {
            query["Continents"] = request.continents ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customName)) {
            query["CustomName"] = request.customName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mid)) {
            query["Mid"] = request.mid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operator_)) {
            query["Operator"] = request.operator_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionCode)) {
            query["RegionCode"] = request.regionCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyHybridCloudServer",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyHybridCloudServerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyHybridCloudServer(_ request: ModifyHybridCloudServerRequest) async throws -> ModifyHybridCloudServerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyHybridCloudServerWithOptions(request as! ModifyHybridCloudServerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyMajorProtectionBlackIpWithOptions(_ request: ModifyMajorProtectionBlackIpRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyMajorProtectionBlackIpResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiredTime)) {
            query["ExpiredTime"] = request.expiredTime!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ipList)) {
            query["IpList"] = request.ipList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleId)) {
            query["RuleId"] = request.ruleId!;
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyMajorProtectionBlackIp",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyMajorProtectionBlackIpResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyMajorProtectionBlackIp(_ request: ModifyMajorProtectionBlackIpRequest) async throws -> ModifyMajorProtectionBlackIpResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyMajorProtectionBlackIpWithOptions(request as! ModifyMajorProtectionBlackIpRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyMemberAccountWithOptions(_ request: ModifyMemberAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyMemberAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memberAccountId)) {
            query["MemberAccountId"] = request.memberAccountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceIp)) {
            query["SourceIp"] = request.sourceIp ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyMemberAccount",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyMemberAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyMemberAccount(_ request: ModifyMemberAccountRequest) async throws -> ModifyMemberAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyMemberAccountWithOptions(request as! ModifyMemberAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPauseProtectionStatusWithOptions(_ request: ModifyPauseProtectionStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyPauseProtectionStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pauseStatus)) {
            query["PauseStatus"] = request.pauseStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyPauseProtectionStatus",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyPauseProtectionStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPauseProtectionStatus(_ request: ModifyPauseProtectionStatusRequest) async throws -> ModifyPauseProtectionStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyPauseProtectionStatusWithOptions(request as! ModifyPauseProtectionStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyResourceLogStatusWithOptions(_ request: ModifyResourceLogStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyResourceLogStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyResourceLogStatus",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyResourceLogStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyResourceLogStatus(_ request: ModifyResourceLogStatusRequest) async throws -> ModifyResourceLogStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyResourceLogStatusWithOptions(request as! ModifyResourceLogStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyTemplateResourcesWithOptions(_ request: ModifyTemplateResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyTemplateResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bindAssets)) {
            query["BindAssets"] = request.bindAssets ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.bindResourceGroups)) {
            query["BindResourceGroups"] = request.bindResourceGroups ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.bindResources)) {
            query["BindResources"] = request.bindResources ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateId)) {
            query["TemplateId"] = request.templateId!;
        }
        if (!TeaUtils.Client.isUnset(request.unbindAssets)) {
            query["UnbindAssets"] = request.unbindAssets ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.unbindResourceGroups)) {
            query["UnbindResourceGroups"] = request.unbindResourceGroups ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.unbindResources)) {
            query["UnbindResources"] = request.unbindResources ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyTemplateResources",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyTemplateResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyTemplateResources(_ request: ModifyTemplateResourcesRequest) async throws -> ModifyTemplateResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyTemplateResourcesWithOptions(request as! ModifyTemplateResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyUserLogFieldConfigWithOptions(_ request: ModifyUserLogFieldConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyUserLogFieldConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deliveryType)) {
            query["DeliveryType"] = request.deliveryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extendConfig)) {
            query["ExtendConfig"] = request.extendConfig ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fieldList)) {
            query["FieldList"] = request.fieldList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logDeliveryStrategy)) {
            query["LogDeliveryStrategy"] = request.logDeliveryStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyUserLogFieldConfig",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyUserLogFieldConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyUserLogFieldConfig(_ request: ModifyUserLogFieldConfigRequest) async throws -> ModifyUserLogFieldConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyUserLogFieldConfigWithOptions(request as! ModifyUserLogFieldConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyUserWafLogStatusWithOptions(_ request: ModifyUserWafLogStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyUserWafLogStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logRegionId)) {
            query["LogRegionId"] = request.logRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.logStatus)) {
            query["LogStatus"] = request.logStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyUserWafLogStatus",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyUserWafLogStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyUserWafLogStatus(_ request: ModifyUserWafLogStatusRequest) async throws -> ModifyUserWafLogStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyUserWafLogStatusWithOptions(request as! ModifyUserWafLogStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reCreateCloudResourceWithOptions(_ request: ReCreateCloudResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReCreateCloudResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.port)) {
            query["Port"] = request.port!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceInstanceId)) {
            query["ResourceInstanceId"] = request.resourceInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceProduct)) {
            query["ResourceProduct"] = request.resourceProduct ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReCreateCloudResource",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReCreateCloudResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func reCreateCloudResource(_ request: ReCreateCloudResourceRequest) async throws -> ReCreateCloudResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await reCreateCloudResourceWithOptions(request as! ReCreateCloudResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func releaseInstanceWithOptions(_ request: ReleaseInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ReleaseInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReleaseInstance",
            "version": "2021-10-01",
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
    public func syncProductInstanceWithOptions(_ request: SyncProductInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SyncProductInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceManagerResourceGroupId)) {
            query["ResourceManagerResourceGroupId"] = request.resourceManagerResourceGroupId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SyncProductInstance",
            "version": "2021-10-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyncProductInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncProductInstance(_ request: SyncProductInstanceRequest) async throws -> SyncProductInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await syncProductInstanceWithOptions(request as! SyncProductInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesWithOptions(_ request: TagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
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
            "version": "2021-10-01",
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
    public func untagResourcesWithOptions(_ request: UntagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UntagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.all)) {
            query["All"] = request.all!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
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
            "version": "2021-10-01",
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
}
