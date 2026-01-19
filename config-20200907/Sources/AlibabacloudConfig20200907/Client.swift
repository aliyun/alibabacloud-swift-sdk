import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = "central"
        self._endpointMap = [
            "cn-shanghai": "config.cn-shanghai.aliyuncs.com",
            "ap-southeast-1": "config.ap-southeast-1.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("config", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func activeAggregateConfigRulesWithOptions(_ request: ActiveAggregateConfigRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ActiveAggregateConfigRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliancePackId)) {
            query["CompliancePackId"] = request.compliancePackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleIds)) {
            query["ConfigRuleIds"] = request.configRuleIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ActiveAggregateConfigRules",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ActiveAggregateConfigRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func activeAggregateConfigRules(_ request: ActiveAggregateConfigRulesRequest) async throws -> ActiveAggregateConfigRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await activeAggregateConfigRulesWithOptions(request as! ActiveAggregateConfigRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func activeConfigRulesWithOptions(_ request: ActiveConfigRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ActiveConfigRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.compliancePackId)) {
            query["CompliancePackId"] = request.compliancePackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleIds)) {
            query["ConfigRuleIds"] = request.configRuleIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ActiveConfigRules",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ActiveConfigRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func activeConfigRules(_ request: ActiveConfigRulesRequest) async throws -> ActiveConfigRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await activeConfigRulesWithOptions(request as! ActiveConfigRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachAggregateConfigRuleToCompliancePackWithOptions(_ request: AttachAggregateConfigRuleToCompliancePackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachAggregateConfigRuleToCompliancePackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliancePackId)) {
            query["CompliancePackId"] = request.compliancePackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleIds)) {
            query["ConfigRuleIds"] = request.configRuleIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachAggregateConfigRuleToCompliancePack",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachAggregateConfigRuleToCompliancePackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachAggregateConfigRuleToCompliancePack(_ request: AttachAggregateConfigRuleToCompliancePackRequest) async throws -> AttachAggregateConfigRuleToCompliancePackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachAggregateConfigRuleToCompliancePackWithOptions(request as! AttachAggregateConfigRuleToCompliancePackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachConfigRuleToCompliancePackWithOptions(_ request: AttachConfigRuleToCompliancePackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachConfigRuleToCompliancePackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.compliancePackId)) {
            query["CompliancePackId"] = request.compliancePackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleIds)) {
            query["ConfigRuleIds"] = request.configRuleIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachConfigRuleToCompliancePack",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachConfigRuleToCompliancePackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachConfigRuleToCompliancePack(_ request: AttachConfigRuleToCompliancePackRequest) async throws -> AttachConfigRuleToCompliancePackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachConfigRuleToCompliancePackWithOptions(request as! AttachConfigRuleToCompliancePackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copyCompliancePacksWithOptions(_ request: CopyCompliancePacksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CopyCompliancePacksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desAggregatorIds)) {
            query["DesAggregatorIds"] = request.desAggregatorIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcAggregatorId)) {
            query["SrcAggregatorId"] = request.srcAggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcCompliancePackIds)) {
            query["SrcCompliancePackIds"] = request.srcCompliancePackIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CopyCompliancePacks",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CopyCompliancePacksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copyCompliancePacks(_ request: CopyCompliancePacksRequest) async throws -> CopyCompliancePacksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await copyCompliancePacksWithOptions(request as! CopyCompliancePacksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copyConfigRulesWithOptions(_ request: CopyConfigRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CopyConfigRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desAggregatorIds)) {
            query["DesAggregatorIds"] = request.desAggregatorIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcAggregatorId)) {
            query["SrcAggregatorId"] = request.srcAggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcConfigRuleIds)) {
            query["SrcConfigRuleIds"] = request.srcConfigRuleIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CopyConfigRules",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CopyConfigRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copyConfigRules(_ request: CopyConfigRulesRequest) async throws -> CopyConfigRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await copyConfigRulesWithOptions(request as! CopyConfigRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAdvancedSearchFileWithOptions(_ request: CreateAdvancedSearchFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAdvancedSearchFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sql)) {
            query["Sql"] = request.sql ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAdvancedSearchFile",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAdvancedSearchFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAdvancedSearchFile(_ request: CreateAdvancedSearchFileRequest) async throws -> CreateAdvancedSearchFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAdvancedSearchFileWithOptions(request as! CreateAdvancedSearchFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAggregateAdvancedSearchFileWithOptions(_ request: CreateAggregateAdvancedSearchFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAggregateAdvancedSearchFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sql)) {
            query["Sql"] = request.sql ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAggregateAdvancedSearchFile",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAggregateAdvancedSearchFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAggregateAdvancedSearchFile(_ request: CreateAggregateAdvancedSearchFileRequest) async throws -> CreateAggregateAdvancedSearchFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAggregateAdvancedSearchFileWithOptions(request as! CreateAggregateAdvancedSearchFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAggregateCompliancePackWithOptions(_ tmpReq: CreateAggregateCompliancePackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAggregateCompliancePackResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateAggregateCompliancePackShrinkRequest = CreateAggregateCompliancePackShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.configRules)) {
            request.configRulesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.configRules, "ConfigRules", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            body["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliancePackName)) {
            body["CompliancePackName"] = request.compliancePackName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliancePackTemplateId)) {
            body["CompliancePackTemplateId"] = request.compliancePackTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRulesShrink)) {
            body["ConfigRules"] = request.configRulesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultEnable)) {
            body["DefaultEnable"] = request.defaultEnable!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeRegionIdsScope)) {
            body["ExcludeRegionIdsScope"] = request.excludeRegionIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceGroupIdsScope)) {
            body["ExcludeResourceGroupIdsScope"] = request.excludeResourceGroupIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceIdsScope)) {
            body["ExcludeResourceIdsScope"] = request.excludeResourceIdsScope ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.excludeTagsScope)) {
            bodyFlat["ExcludeTagsScope"] = request.excludeTagsScope ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionIdsScope)) {
            body["RegionIdsScope"] = request.regionIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupIdsScope)) {
            body["ResourceGroupIdsScope"] = request.resourceGroupIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIdsScope)) {
            body["ResourceIdsScope"] = request.resourceIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskLevel)) {
            body["RiskLevel"] = request.riskLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.tagKeyScope)) {
            body["TagKeyScope"] = request.tagKeyScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagValueScope)) {
            body["TagValueScope"] = request.tagValueScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsScope)) {
            bodyFlat["TagsScope"] = request.tagsScope ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.templateContent)) {
            body["TemplateContent"] = request.templateContent ?? "";
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAggregateCompliancePack",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAggregateCompliancePackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAggregateCompliancePack(_ request: CreateAggregateCompliancePackRequest) async throws -> CreateAggregateCompliancePackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAggregateCompliancePackWithOptions(request as! CreateAggregateCompliancePackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAggregateConfigDeliveryChannelWithOptions(_ request: CreateAggregateConfigDeliveryChannelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAggregateConfigDeliveryChannelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliantSnapshot)) {
            query["CompliantSnapshot"] = request.compliantSnapshot!;
        }
        if (!TeaUtils.Client.isUnset(request.configurationItemChangeNotification)) {
            query["ConfigurationItemChangeNotification"] = request.configurationItemChangeNotification!;
        }
        if (!TeaUtils.Client.isUnset(request.configurationSnapshot)) {
            query["ConfigurationSnapshot"] = request.configurationSnapshot!;
        }
        if (!TeaUtils.Client.isUnset(request.deliveryChannelCondition)) {
            query["DeliveryChannelCondition"] = request.deliveryChannelCondition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryChannelName)) {
            query["DeliveryChannelName"] = request.deliveryChannelName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryChannelTargetArn)) {
            query["DeliveryChannelTargetArn"] = request.deliveryChannelTargetArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryChannelType)) {
            query["DeliveryChannelType"] = request.deliveryChannelType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliverySnapshotTime)) {
            query["DeliverySnapshotTime"] = request.deliverySnapshotTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nonCompliantNotification)) {
            query["NonCompliantNotification"] = request.nonCompliantNotification!;
        }
        if (!TeaUtils.Client.isUnset(request.oversizedDataOSSTargetArn)) {
            query["OversizedDataOSSTargetArn"] = request.oversizedDataOSSTargetArn ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAggregateConfigDeliveryChannel",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAggregateConfigDeliveryChannelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAggregateConfigDeliveryChannel(_ request: CreateAggregateConfigDeliveryChannelRequest) async throws -> CreateAggregateConfigDeliveryChannelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAggregateConfigDeliveryChannelWithOptions(request as! CreateAggregateConfigDeliveryChannelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAggregateConfigRuleWithOptions(_ tmpReq: CreateAggregateConfigRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAggregateConfigRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateAggregateConfigRuleShrinkRequest = CreateAggregateConfigRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.inputParameters)) {
            request.inputParametersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.inputParameters, "InputParameters", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.resourceTypesScope)) {
            request.resourceTypesScopeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resourceTypesScope, "ResourceTypesScope", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceNameScope)) {
            query["ResourceNameScope"] = request.resourceNameScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountIdsScope)) {
            body["AccountIdsScope"] = request.accountIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            body["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleName)) {
            body["ConfigRuleName"] = request.configRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleTriggerTypes)) {
            body["ConfigRuleTriggerTypes"] = request.configRuleTriggerTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeAccountIdsScope)) {
            body["ExcludeAccountIdsScope"] = request.excludeAccountIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeFolderIdsScope)) {
            body["ExcludeFolderIdsScope"] = request.excludeFolderIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeRegionIdsScope)) {
            body["ExcludeRegionIdsScope"] = request.excludeRegionIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceGroupIdsScope)) {
            body["ExcludeResourceGroupIdsScope"] = request.excludeResourceGroupIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceIdsScope)) {
            body["ExcludeResourceIdsScope"] = request.excludeResourceIdsScope ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.excludeTagsScope)) {
            bodyFlat["ExcludeTagsScope"] = request.excludeTagsScope ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.extendContent)) {
            body["ExtendContent"] = request.extendContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.folderIdsScope)) {
            body["FolderIdsScope"] = request.folderIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputParametersShrink)) {
            body["InputParameters"] = request.inputParametersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maximumExecutionFrequency)) {
            body["MaximumExecutionFrequency"] = request.maximumExecutionFrequency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionIdsScope)) {
            body["RegionIdsScope"] = request.regionIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupIdsScope)) {
            body["ResourceGroupIdsScope"] = request.resourceGroupIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIdsScope)) {
            body["ResourceIdsScope"] = request.resourceIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceTypesScopeShrink)) {
            body["ResourceTypesScope"] = request.resourceTypesScopeShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskLevel)) {
            body["RiskLevel"] = request.riskLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceIdentifier)) {
            body["SourceIdentifier"] = request.sourceIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceOwner)) {
            body["SourceOwner"] = request.sourceOwner ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKeyLogicScope)) {
            body["TagKeyLogicScope"] = request.tagKeyLogicScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKeyScope)) {
            body["TagKeyScope"] = request.tagKeyScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagValueScope)) {
            body["TagValueScope"] = request.tagValueScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsScope)) {
            bodyFlat["TagsScope"] = request.tagsScope ?? [];
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAggregateConfigRule",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAggregateConfigRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAggregateConfigRule(_ request: CreateAggregateConfigRuleRequest) async throws -> CreateAggregateConfigRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAggregateConfigRuleWithOptions(request as! CreateAggregateConfigRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAggregateRemediationWithOptions(_ request: CreateAggregateRemediationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAggregateRemediationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            body["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleId)) {
            body["ConfigRuleId"] = request.configRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.invokeType)) {
            body["InvokeType"] = request.invokeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["Params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remediationTemplateId)) {
            body["RemediationTemplateId"] = request.remediationTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remediationType)) {
            body["RemediationType"] = request.remediationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["SourceType"] = request.sourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAggregateRemediation",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAggregateRemediationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAggregateRemediation(_ request: CreateAggregateRemediationRequest) async throws -> CreateAggregateRemediationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAggregateRemediationWithOptions(request as! CreateAggregateRemediationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAggregatorWithOptions(_ tmpReq: CreateAggregatorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAggregatorResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateAggregatorShrinkRequest = CreateAggregatorShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.aggregatorAccounts)) {
            request.aggregatorAccountsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.aggregatorAccounts, "AggregatorAccounts", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorAccountsShrink)) {
            body["AggregatorAccounts"] = request.aggregatorAccountsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aggregatorName)) {
            body["AggregatorName"] = request.aggregatorName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aggregatorType)) {
            body["AggregatorType"] = request.aggregatorType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.folderId)) {
            body["FolderId"] = request.folderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAggregator",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAggregatorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAggregator(_ request: CreateAggregatorRequest) async throws -> CreateAggregatorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAggregatorWithOptions(request as! CreateAggregatorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCompliancePackWithOptions(_ tmpReq: CreateCompliancePackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCompliancePackResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateCompliancePackShrinkRequest = CreateCompliancePackShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.configRules)) {
            request.configRulesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.configRules, "ConfigRules", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliancePackName)) {
            body["CompliancePackName"] = request.compliancePackName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliancePackTemplateId)) {
            body["CompliancePackTemplateId"] = request.compliancePackTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRulesShrink)) {
            body["ConfigRules"] = request.configRulesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.defaultEnable)) {
            body["DefaultEnable"] = request.defaultEnable!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeRegionIdsScope)) {
            body["ExcludeRegionIdsScope"] = request.excludeRegionIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceGroupIdsScope)) {
            body["ExcludeResourceGroupIdsScope"] = request.excludeResourceGroupIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceIdsScope)) {
            body["ExcludeResourceIdsScope"] = request.excludeResourceIdsScope ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.excludeTagsScope)) {
            bodyFlat["ExcludeTagsScope"] = request.excludeTagsScope ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionIdsScope)) {
            body["RegionIdsScope"] = request.regionIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupIdsScope)) {
            body["ResourceGroupIdsScope"] = request.resourceGroupIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIdsScope)) {
            body["ResourceIdsScope"] = request.resourceIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskLevel)) {
            body["RiskLevel"] = request.riskLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.tagKeyScope)) {
            body["TagKeyScope"] = request.tagKeyScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagValueScope)) {
            body["TagValueScope"] = request.tagValueScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsScope)) {
            bodyFlat["TagsScope"] = request.tagsScope ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.templateContent)) {
            body["TemplateContent"] = request.templateContent ?? "";
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCompliancePack",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCompliancePackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCompliancePack(_ request: CreateCompliancePackRequest) async throws -> CreateCompliancePackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCompliancePackWithOptions(request as! CreateCompliancePackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConfigDeliveryChannelWithOptions(_ request: CreateConfigDeliveryChannelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateConfigDeliveryChannelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliantSnapshot)) {
            query["CompliantSnapshot"] = request.compliantSnapshot!;
        }
        if (!TeaUtils.Client.isUnset(request.configurationItemChangeNotification)) {
            query["ConfigurationItemChangeNotification"] = request.configurationItemChangeNotification!;
        }
        if (!TeaUtils.Client.isUnset(request.configurationSnapshot)) {
            query["ConfigurationSnapshot"] = request.configurationSnapshot!;
        }
        if (!TeaUtils.Client.isUnset(request.deliveryChannelCondition)) {
            query["DeliveryChannelCondition"] = request.deliveryChannelCondition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryChannelName)) {
            query["DeliveryChannelName"] = request.deliveryChannelName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryChannelTargetArn)) {
            query["DeliveryChannelTargetArn"] = request.deliveryChannelTargetArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryChannelType)) {
            query["DeliveryChannelType"] = request.deliveryChannelType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliverySnapshotTime)) {
            query["DeliverySnapshotTime"] = request.deliverySnapshotTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nonCompliantNotification)) {
            query["NonCompliantNotification"] = request.nonCompliantNotification!;
        }
        if (!TeaUtils.Client.isUnset(request.oversizedDataOSSTargetArn)) {
            query["OversizedDataOSSTargetArn"] = request.oversizedDataOSSTargetArn ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateConfigDeliveryChannel",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateConfigDeliveryChannelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConfigDeliveryChannel(_ request: CreateConfigDeliveryChannelRequest) async throws -> CreateConfigDeliveryChannelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createConfigDeliveryChannelWithOptions(request as! CreateConfigDeliveryChannelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConfigRuleWithOptions(_ tmpReq: CreateConfigRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateConfigRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateConfigRuleShrinkRequest = CreateConfigRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.inputParameters)) {
            request.inputParametersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.inputParameters, "InputParameters", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.resourceTypesScope)) {
            request.resourceTypesScopeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resourceTypesScope, "ResourceTypesScope", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleName)) {
            body["ConfigRuleName"] = request.configRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleTriggerTypes)) {
            body["ConfigRuleTriggerTypes"] = request.configRuleTriggerTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeRegionIdsScope)) {
            body["ExcludeRegionIdsScope"] = request.excludeRegionIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceGroupIdsScope)) {
            body["ExcludeResourceGroupIdsScope"] = request.excludeResourceGroupIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceIdsScope)) {
            body["ExcludeResourceIdsScope"] = request.excludeResourceIdsScope ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.excludeTagsScope)) {
            bodyFlat["ExcludeTagsScope"] = request.excludeTagsScope ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.extendContent)) {
            body["ExtendContent"] = request.extendContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputParametersShrink)) {
            body["InputParameters"] = request.inputParametersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maximumExecutionFrequency)) {
            body["MaximumExecutionFrequency"] = request.maximumExecutionFrequency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionIdsScope)) {
            body["RegionIdsScope"] = request.regionIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupIdsScope)) {
            body["ResourceGroupIdsScope"] = request.resourceGroupIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIdsScope)) {
            body["ResourceIdsScope"] = request.resourceIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceNameScope)) {
            body["ResourceNameScope"] = request.resourceNameScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceTypesScopeShrink)) {
            body["ResourceTypesScope"] = request.resourceTypesScopeShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskLevel)) {
            body["RiskLevel"] = request.riskLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceIdentifier)) {
            body["SourceIdentifier"] = request.sourceIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceOwner)) {
            body["SourceOwner"] = request.sourceOwner ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKeyLogicScope)) {
            body["TagKeyLogicScope"] = request.tagKeyLogicScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKeyScope)) {
            body["TagKeyScope"] = request.tagKeyScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagValueScope)) {
            body["TagValueScope"] = request.tagValueScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsScope)) {
            bodyFlat["TagsScope"] = request.tagsScope ?? [];
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateConfigRule",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateConfigRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createConfigRule(_ request: CreateConfigRuleRequest) async throws -> CreateConfigRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createConfigRuleWithOptions(request as! CreateConfigRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRemediationWithOptions(_ request: CreateRemediationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRemediationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleId)) {
            body["ConfigRuleId"] = request.configRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.invokeType)) {
            body["InvokeType"] = request.invokeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["Params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remediationTemplateId)) {
            body["RemediationTemplateId"] = request.remediationTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remediationType)) {
            body["RemediationType"] = request.remediationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["SourceType"] = request.sourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRemediation",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRemediationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRemediation(_ request: CreateRemediationRequest) async throws -> CreateRemediationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRemediationWithOptions(request as! CreateRemediationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deactiveAggregateConfigRulesWithOptions(_ request: DeactiveAggregateConfigRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeactiveAggregateConfigRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliancePackId)) {
            query["CompliancePackId"] = request.compliancePackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleIds)) {
            query["ConfigRuleIds"] = request.configRuleIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeactiveAggregateConfigRules",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeactiveAggregateConfigRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deactiveAggregateConfigRules(_ request: DeactiveAggregateConfigRulesRequest) async throws -> DeactiveAggregateConfigRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deactiveAggregateConfigRulesWithOptions(request as! DeactiveAggregateConfigRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deactiveConfigRulesWithOptions(_ request: DeactiveConfigRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeactiveConfigRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.compliancePackId)) {
            query["CompliancePackId"] = request.compliancePackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleIds)) {
            query["ConfigRuleIds"] = request.configRuleIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeactiveConfigRules",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeactiveConfigRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deactiveConfigRules(_ request: DeactiveConfigRulesRequest) async throws -> DeactiveConfigRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deactiveConfigRulesWithOptions(request as! DeactiveConfigRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAggregateCompliancePacksWithOptions(_ request: DeleteAggregateCompliancePacksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAggregateCompliancePacksResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            body["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliancePackIds)) {
            body["CompliancePackIds"] = request.compliancePackIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deleteRule)) {
            body["DeleteRule"] = request.deleteRule!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAggregateCompliancePacks",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAggregateCompliancePacksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAggregateCompliancePacks(_ request: DeleteAggregateCompliancePacksRequest) async throws -> DeleteAggregateCompliancePacksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAggregateCompliancePacksWithOptions(request as! DeleteAggregateCompliancePacksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAggregateConfigDeliveryChannelWithOptions(_ request: DeleteAggregateConfigDeliveryChannelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAggregateConfigDeliveryChannelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryChannelId)) {
            query["DeliveryChannelId"] = request.deliveryChannelId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAggregateConfigDeliveryChannel",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAggregateConfigDeliveryChannelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAggregateConfigDeliveryChannel(_ request: DeleteAggregateConfigDeliveryChannelRequest) async throws -> DeleteAggregateConfigDeliveryChannelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAggregateConfigDeliveryChannelWithOptions(request as! DeleteAggregateConfigDeliveryChannelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAggregateConfigRulesWithOptions(_ request: DeleteAggregateConfigRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAggregateConfigRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleIds)) {
            query["ConfigRuleIds"] = request.configRuleIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAggregateConfigRules",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAggregateConfigRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAggregateConfigRules(_ request: DeleteAggregateConfigRulesRequest) async throws -> DeleteAggregateConfigRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAggregateConfigRulesWithOptions(request as! DeleteAggregateConfigRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAggregateRemediationsWithOptions(_ request: DeleteAggregateRemediationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAggregateRemediationsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            body["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remediationIds)) {
            body["RemediationIds"] = request.remediationIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAggregateRemediations",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAggregateRemediationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAggregateRemediations(_ request: DeleteAggregateRemediationsRequest) async throws -> DeleteAggregateRemediationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAggregateRemediationsWithOptions(request as! DeleteAggregateRemediationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAggregatorsWithOptions(_ request: DeleteAggregatorsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteAggregatorsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorIds)) {
            body["AggregatorIds"] = request.aggregatorIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteAggregators",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteAggregatorsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteAggregators(_ request: DeleteAggregatorsRequest) async throws -> DeleteAggregatorsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteAggregatorsWithOptions(request as! DeleteAggregatorsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCompliancePacksWithOptions(_ request: DeleteCompliancePacksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCompliancePacksResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliancePackIds)) {
            body["CompliancePackIds"] = request.compliancePackIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deleteRule)) {
            body["DeleteRule"] = request.deleteRule!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCompliancePacks",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCompliancePacksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCompliancePacks(_ request: DeleteCompliancePacksRequest) async throws -> DeleteCompliancePacksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCompliancePacksWithOptions(request as! DeleteCompliancePacksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConfigDeliveryChannelWithOptions(_ request: DeleteConfigDeliveryChannelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteConfigDeliveryChannelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deliveryChannelId)) {
            query["DeliveryChannelId"] = request.deliveryChannelId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteConfigDeliveryChannel",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteConfigDeliveryChannelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConfigDeliveryChannel(_ request: DeleteConfigDeliveryChannelRequest) async throws -> DeleteConfigDeliveryChannelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteConfigDeliveryChannelWithOptions(request as! DeleteConfigDeliveryChannelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConfigRulesWithOptions(_ request: DeleteConfigRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteConfigRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configRuleIds)) {
            query["ConfigRuleIds"] = request.configRuleIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteConfigRules",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteConfigRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteConfigRules(_ request: DeleteConfigRulesRequest) async throws -> DeleteConfigRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteConfigRulesWithOptions(request as! DeleteConfigRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRemediationsWithOptions(_ request: DeleteRemediationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRemediationsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.remediationIds)) {
            body["RemediationIds"] = request.remediationIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRemediations",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRemediationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRemediations(_ request: DeleteRemediationsRequest) async throws -> DeleteRemediationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteRemediationsWithOptions(request as! DeleteRemediationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteReportTemplateWithOptions(_ request: DeleteReportTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteReportTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.reportTemplateId)) {
            body["ReportTemplateId"] = request.reportTemplateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteReportTemplate",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteReportTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteReportTemplate(_ request: DeleteReportTemplateRequest) async throws -> DeleteReportTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteReportTemplateWithOptions(request as! DeleteReportTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDiscoveredResourceBatchWithOptions(_ request: DescribeDiscoveredResourceBatchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDiscoveredResourceBatchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regions)) {
            query["Regions"] = request.regions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            query["ResourceIds"] = request.resourceIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceTypes)) {
            query["ResourceTypes"] = request.resourceTypes ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDiscoveredResourceBatch",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDiscoveredResourceBatchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDiscoveredResourceBatch(_ request: DescribeDiscoveredResourceBatchRequest) async throws -> DescribeDiscoveredResourceBatchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDiscoveredResourceBatchWithOptions(request as! DescribeDiscoveredResourceBatchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIntegratedServiceStatusWithOptions(_ request: DescribeIntegratedServiceStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeIntegratedServiceStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeIntegratedServiceStatus",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeIntegratedServiceStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeIntegratedServiceStatus(_ request: DescribeIntegratedServiceStatusRequest) async throws -> DescribeIntegratedServiceStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeIntegratedServiceStatusWithOptions(request as! DescribeIntegratedServiceStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRemediationWithOptions(_ request: DescribeRemediationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRemediationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRemediation",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRemediationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRemediation(_ request: DescribeRemediationRequest) async throws -> DescribeRemediationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRemediationWithOptions(request as! DescribeRemediationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachAggregateConfigRuleToCompliancePackWithOptions(_ request: DetachAggregateConfigRuleToCompliancePackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachAggregateConfigRuleToCompliancePackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliancePackId)) {
            query["CompliancePackId"] = request.compliancePackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleIds)) {
            query["ConfigRuleIds"] = request.configRuleIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachAggregateConfigRuleToCompliancePack",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachAggregateConfigRuleToCompliancePackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachAggregateConfigRuleToCompliancePack(_ request: DetachAggregateConfigRuleToCompliancePackRequest) async throws -> DetachAggregateConfigRuleToCompliancePackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachAggregateConfigRuleToCompliancePackWithOptions(request as! DetachAggregateConfigRuleToCompliancePackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachConfigRuleToCompliancePackWithOptions(_ request: DetachConfigRuleToCompliancePackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachConfigRuleToCompliancePackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.compliancePackId)) {
            query["CompliancePackId"] = request.compliancePackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleIds)) {
            query["ConfigRuleIds"] = request.configRuleIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachConfigRuleToCompliancePack",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachConfigRuleToCompliancePackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachConfigRuleToCompliancePack(_ request: DetachConfigRuleToCompliancePackRequest) async throws -> DetachConfigRuleToCompliancePackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachConfigRuleToCompliancePackWithOptions(request as! DetachConfigRuleToCompliancePackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dryRunConfigRuleWithOptions(_ request: DryRunConfigRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DryRunConfigRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configurationItem)) {
            body["ConfigurationItem"] = request.configurationItem ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DryRunConfigRule",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DryRunConfigRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dryRunConfigRule(_ request: DryRunConfigRuleRequest) async throws -> DryRunConfigRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await dryRunConfigRuleWithOptions(request as! DryRunConfigRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func evaluatePreConfigRulesWithOptions(_ tmpReq: EvaluatePreConfigRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EvaluatePreConfigRulesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: EvaluatePreConfigRulesShrinkRequest = EvaluatePreConfigRulesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.resourceEvaluateItems)) {
            request.resourceEvaluateItemsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resourceEvaluateItems, "ResourceEvaluateItems", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enableManagedRules)) {
            body["EnableManagedRules"] = request.enableManagedRules!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceEvaluateItemsShrink)) {
            body["ResourceEvaluateItems"] = request.resourceEvaluateItemsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceTypeFormat)) {
            body["ResourceTypeFormat"] = request.resourceTypeFormat ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EvaluatePreConfigRules",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EvaluatePreConfigRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func evaluatePreConfigRules(_ request: EvaluatePreConfigRulesRequest) async throws -> EvaluatePreConfigRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await evaluatePreConfigRulesWithOptions(request as! EvaluatePreConfigRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateAggregateCompliancePackReportWithOptions(_ request: GenerateAggregateCompliancePackReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateAggregateCompliancePackReportResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            body["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliancePackId)) {
            body["CompliancePackId"] = request.compliancePackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.multiFiles)) {
            body["MultiFiles"] = request.multiFiles!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateAggregateCompliancePackReport",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateAggregateCompliancePackReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateAggregateCompliancePackReport(_ request: GenerateAggregateCompliancePackReportRequest) async throws -> GenerateAggregateCompliancePackReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateAggregateCompliancePackReportWithOptions(request as! GenerateAggregateCompliancePackReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateAggregateConfigRulesReportWithOptions(_ request: GenerateAggregateConfigRulesReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateAggregateConfigRulesReportResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            body["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleIds)) {
            body["ConfigRuleIds"] = request.configRuleIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateAggregateConfigRulesReport",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateAggregateConfigRulesReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateAggregateConfigRulesReport(_ request: GenerateAggregateConfigRulesReportRequest) async throws -> GenerateAggregateConfigRulesReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateAggregateConfigRulesReportWithOptions(request as! GenerateAggregateConfigRulesReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateAggregateResourceInventoryWithOptions(_ request: GenerateAggregateResourceInventoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateAggregateResourceInventoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountIds)) {
            query["AccountIds"] = request.accountIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regions)) {
            query["Regions"] = request.regions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceDeleted)) {
            query["ResourceDeleted"] = request.resourceDeleted!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceTypes)) {
            query["ResourceTypes"] = request.resourceTypes ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateAggregateResourceInventory",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateAggregateResourceInventoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateAggregateResourceInventory(_ request: GenerateAggregateResourceInventoryRequest) async throws -> GenerateAggregateResourceInventoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateAggregateResourceInventoryWithOptions(request as! GenerateAggregateResourceInventoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateCompliancePackReportWithOptions(_ request: GenerateCompliancePackReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateCompliancePackReportResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliancePackId)) {
            body["CompliancePackId"] = request.compliancePackId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateCompliancePackReport",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateCompliancePackReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateCompliancePackReport(_ request: GenerateCompliancePackReportRequest) async throws -> GenerateCompliancePackReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateCompliancePackReportWithOptions(request as! GenerateCompliancePackReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateConfigRulesReportWithOptions(_ request: GenerateConfigRulesReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateConfigRulesReportResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleIds)) {
            body["ConfigRuleIds"] = request.configRuleIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateConfigRulesReport",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateConfigRulesReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateConfigRulesReport(_ request: GenerateConfigRulesReportRequest) async throws -> GenerateConfigRulesReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateConfigRulesReportWithOptions(request as! GenerateConfigRulesReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateReportFromTemplateWithOptions(_ request: GenerateReportFromTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateReportFromTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.reportTemplateId)) {
            body["ReportTemplateId"] = request.reportTemplateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateReportFromTemplate",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateReportFromTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateReportFromTemplate(_ request: GenerateReportFromTemplateRequest) async throws -> GenerateReportFromTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateReportFromTemplateWithOptions(request as! GenerateReportFromTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateResourceInventoryWithOptions(_ request: GenerateResourceInventoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateResourceInventoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regions)) {
            query["Regions"] = request.regions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceDeleted)) {
            query["ResourceDeleted"] = request.resourceDeleted!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceTypes)) {
            query["ResourceTypes"] = request.resourceTypes ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateResourceInventory",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateResourceInventoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateResourceInventory(_ request: GenerateResourceInventoryRequest) async throws -> GenerateResourceInventoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await generateResourceInventoryWithOptions(request as! GenerateResourceInventoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAdvancedSearchFileWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> GetAdvancedSearchFileResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAdvancedSearchFile",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAdvancedSearchFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAdvancedSearchFile() async throws -> GetAdvancedSearchFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAdvancedSearchFileWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateAccountComplianceByPackWithOptions(_ request: GetAggregateAccountComplianceByPackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggregateAccountComplianceByPackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggregateAccountComplianceByPack",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggregateAccountComplianceByPackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateAccountComplianceByPack(_ request: GetAggregateAccountComplianceByPackRequest) async throws -> GetAggregateAccountComplianceByPackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAggregateAccountComplianceByPackWithOptions(request as! GetAggregateAccountComplianceByPackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateAdvancedSearchFileWithOptions(_ request: GetAggregateAdvancedSearchFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggregateAdvancedSearchFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggregateAdvancedSearchFile",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggregateAdvancedSearchFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateAdvancedSearchFile(_ request: GetAggregateAdvancedSearchFileRequest) async throws -> GetAggregateAdvancedSearchFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAggregateAdvancedSearchFileWithOptions(request as! GetAggregateAdvancedSearchFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateCompliancePackWithOptions(_ tmpReq: GetAggregateCompliancePackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggregateCompliancePackResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetAggregateCompliancePackShrinkRequest = GetAggregateCompliancePackShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggregateCompliancePack",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggregateCompliancePackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateCompliancePack(_ request: GetAggregateCompliancePackRequest) async throws -> GetAggregateCompliancePackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAggregateCompliancePackWithOptions(request as! GetAggregateCompliancePackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateCompliancePackReportWithOptions(_ request: GetAggregateCompliancePackReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggregateCompliancePackReportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggregateCompliancePackReport",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggregateCompliancePackReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateCompliancePackReport(_ request: GetAggregateCompliancePackReportRequest) async throws -> GetAggregateCompliancePackReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAggregateCompliancePackReportWithOptions(request as! GetAggregateCompliancePackReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateComplianceSummaryWithOptions(_ request: GetAggregateComplianceSummaryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggregateComplianceSummaryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggregateComplianceSummary",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggregateComplianceSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateComplianceSummary(_ request: GetAggregateComplianceSummaryRequest) async throws -> GetAggregateComplianceSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAggregateComplianceSummaryWithOptions(request as! GetAggregateComplianceSummaryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateConfigDeliveryChannelWithOptions(_ request: GetAggregateConfigDeliveryChannelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggregateConfigDeliveryChannelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryChannelId)) {
            query["DeliveryChannelId"] = request.deliveryChannelId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggregateConfigDeliveryChannel",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggregateConfigDeliveryChannelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateConfigDeliveryChannel(_ request: GetAggregateConfigDeliveryChannelRequest) async throws -> GetAggregateConfigDeliveryChannelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAggregateConfigDeliveryChannelWithOptions(request as! GetAggregateConfigDeliveryChannelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateConfigRuleWithOptions(_ tmpReq: GetAggregateConfigRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggregateConfigRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetAggregateConfigRuleShrinkRequest = GetAggregateConfigRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleId)) {
            query["ConfigRuleId"] = request.configRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggregateConfigRule",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggregateConfigRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateConfigRule(_ request: GetAggregateConfigRuleRequest) async throws -> GetAggregateConfigRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAggregateConfigRuleWithOptions(request as! GetAggregateConfigRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateConfigRuleComplianceByPackWithOptions(_ request: GetAggregateConfigRuleComplianceByPackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggregateConfigRuleComplianceByPackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggregateConfigRuleComplianceByPack",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggregateConfigRuleComplianceByPackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateConfigRuleComplianceByPack(_ request: GetAggregateConfigRuleComplianceByPackRequest) async throws -> GetAggregateConfigRuleComplianceByPackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAggregateConfigRuleComplianceByPackWithOptions(request as! GetAggregateConfigRuleComplianceByPackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateConfigRuleSummaryByRiskLevelWithOptions(_ request: GetAggregateConfigRuleSummaryByRiskLevelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggregateConfigRuleSummaryByRiskLevelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggregateConfigRuleSummaryByRiskLevel",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggregateConfigRuleSummaryByRiskLevelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateConfigRuleSummaryByRiskLevel(_ request: GetAggregateConfigRuleSummaryByRiskLevelRequest) async throws -> GetAggregateConfigRuleSummaryByRiskLevelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAggregateConfigRuleSummaryByRiskLevelWithOptions(request as! GetAggregateConfigRuleSummaryByRiskLevelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateConfigRulesReportWithOptions(_ request: GetAggregateConfigRulesReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggregateConfigRulesReportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reportId)) {
            query["ReportId"] = request.reportId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggregateConfigRulesReport",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggregateConfigRulesReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateConfigRulesReport(_ request: GetAggregateConfigRulesReportRequest) async throws -> GetAggregateConfigRulesReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAggregateConfigRulesReportWithOptions(request as! GetAggregateConfigRulesReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateDiscoveredResourceWithOptions(_ request: GetAggregateDiscoveredResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggregateDiscoveredResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.complianceOption)) {
            query["ComplianceOption"] = request.complianceOption!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceAccountId)) {
            query["ResourceAccountId"] = request.resourceAccountId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggregateDiscoveredResource",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggregateDiscoveredResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateDiscoveredResource(_ request: GetAggregateDiscoveredResourceRequest) async throws -> GetAggregateDiscoveredResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAggregateDiscoveredResourceWithOptions(request as! GetAggregateDiscoveredResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateResourceComplianceByConfigRuleWithOptions(_ request: GetAggregateResourceComplianceByConfigRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggregateResourceComplianceByConfigRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.complianceType)) {
            query["ComplianceType"] = request.complianceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleId)) {
            query["ConfigRuleId"] = request.configRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceAccountId)) {
            query["ResourceAccountId"] = request.resourceAccountId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggregateResourceComplianceByConfigRule",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggregateResourceComplianceByConfigRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateResourceComplianceByConfigRule(_ request: GetAggregateResourceComplianceByConfigRuleRequest) async throws -> GetAggregateResourceComplianceByConfigRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAggregateResourceComplianceByConfigRuleWithOptions(request as! GetAggregateResourceComplianceByConfigRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateResourceComplianceByPackWithOptions(_ request: GetAggregateResourceComplianceByPackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggregateResourceComplianceByPackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggregateResourceComplianceByPack",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggregateResourceComplianceByPackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateResourceComplianceByPack(_ request: GetAggregateResourceComplianceByPackRequest) async throws -> GetAggregateResourceComplianceByPackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAggregateResourceComplianceByPackWithOptions(request as! GetAggregateResourceComplianceByPackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateResourceComplianceGroupByRegionWithOptions(_ request: GetAggregateResourceComplianceGroupByRegionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggregateResourceComplianceGroupByRegionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleIds)) {
            query["ConfigRuleIds"] = request.configRuleIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggregateResourceComplianceGroupByRegion",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggregateResourceComplianceGroupByRegionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateResourceComplianceGroupByRegion(_ request: GetAggregateResourceComplianceGroupByRegionRequest) async throws -> GetAggregateResourceComplianceGroupByRegionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAggregateResourceComplianceGroupByRegionWithOptions(request as! GetAggregateResourceComplianceGroupByRegionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateResourceComplianceGroupByResourceTypeWithOptions(_ request: GetAggregateResourceComplianceGroupByResourceTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggregateResourceComplianceGroupByResourceTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleIds)) {
            query["ConfigRuleIds"] = request.configRuleIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggregateResourceComplianceGroupByResourceType",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggregateResourceComplianceGroupByResourceTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateResourceComplianceGroupByResourceType(_ request: GetAggregateResourceComplianceGroupByResourceTypeRequest) async throws -> GetAggregateResourceComplianceGroupByResourceTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAggregateResourceComplianceGroupByResourceTypeWithOptions(request as! GetAggregateResourceComplianceGroupByResourceTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateResourceComplianceTimelineWithOptions(_ request: GetAggregateResourceComplianceTimelineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggregateResourceComplianceTimelineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggregateResourceComplianceTimeline",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggregateResourceComplianceTimelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateResourceComplianceTimeline(_ request: GetAggregateResourceComplianceTimelineRequest) async throws -> GetAggregateResourceComplianceTimelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAggregateResourceComplianceTimelineWithOptions(request as! GetAggregateResourceComplianceTimelineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateResourceConfigurationTimelineWithOptions(_ request: GetAggregateResourceConfigurationTimelineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggregateResourceConfigurationTimelineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggregateResourceConfigurationTimeline",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggregateResourceConfigurationTimelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateResourceConfigurationTimeline(_ request: GetAggregateResourceConfigurationTimelineRequest) async throws -> GetAggregateResourceConfigurationTimelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAggregateResourceConfigurationTimelineWithOptions(request as! GetAggregateResourceConfigurationTimelineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateResourceCountsGroupByRegionWithOptions(_ request: GetAggregateResourceCountsGroupByRegionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggregateResourceCountsGroupByRegionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.folderId)) {
            query["FolderId"] = request.folderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceAccountId)) {
            query["ResourceAccountId"] = request.resourceAccountId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggregateResourceCountsGroupByRegion",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggregateResourceCountsGroupByRegionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateResourceCountsGroupByRegion(_ request: GetAggregateResourceCountsGroupByRegionRequest) async throws -> GetAggregateResourceCountsGroupByRegionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAggregateResourceCountsGroupByRegionWithOptions(request as! GetAggregateResourceCountsGroupByRegionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateResourceCountsGroupByResourceTypeWithOptions(_ request: GetAggregateResourceCountsGroupByResourceTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggregateResourceCountsGroupByResourceTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.folderId)) {
            query["FolderId"] = request.folderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceAccountId)) {
            query["ResourceAccountId"] = request.resourceAccountId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggregateResourceCountsGroupByResourceType",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggregateResourceCountsGroupByResourceTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateResourceCountsGroupByResourceType(_ request: GetAggregateResourceCountsGroupByResourceTypeRequest) async throws -> GetAggregateResourceCountsGroupByResourceTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAggregateResourceCountsGroupByResourceTypeWithOptions(request as! GetAggregateResourceCountsGroupByResourceTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateResourceInventoryWithOptions(_ request: GetAggregateResourceInventoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggregateResourceInventoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggregateResourceInventory",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggregateResourceInventoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregateResourceInventory(_ request: GetAggregateResourceInventoryRequest) async throws -> GetAggregateResourceInventoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAggregateResourceInventoryWithOptions(request as! GetAggregateResourceInventoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregatorWithOptions(_ tmpReq: GetAggregatorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAggregatorResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetAggregatorShrinkRequest = GetAggregatorShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAggregator",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAggregatorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAggregator(_ request: GetAggregatorRequest) async throws -> GetAggregatorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAggregatorWithOptions(request as! GetAggregatorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCompliancePackWithOptions(_ tmpReq: GetCompliancePackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCompliancePackResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetCompliancePackShrinkRequest = GetCompliancePackShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCompliancePack",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCompliancePackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCompliancePack(_ request: GetCompliancePackRequest) async throws -> GetCompliancePackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCompliancePackWithOptions(request as! GetCompliancePackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCompliancePackReportWithOptions(_ request: GetCompliancePackReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCompliancePackReportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCompliancePackReport",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCompliancePackReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCompliancePackReport(_ request: GetCompliancePackReportRequest) async throws -> GetCompliancePackReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCompliancePackReportWithOptions(request as! GetCompliancePackReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getComplianceSummaryWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> GetComplianceSummaryResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetComplianceSummary",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetComplianceSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getComplianceSummary() async throws -> GetComplianceSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getComplianceSummaryWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConfigDeliveryChannelWithOptions(_ request: GetConfigDeliveryChannelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetConfigDeliveryChannelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deliveryChannelId)) {
            query["DeliveryChannelId"] = request.deliveryChannelId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetConfigDeliveryChannel",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetConfigDeliveryChannelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConfigDeliveryChannel(_ request: GetConfigDeliveryChannelRequest) async throws -> GetConfigDeliveryChannelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getConfigDeliveryChannelWithOptions(request as! GetConfigDeliveryChannelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConfigRuleWithOptions(_ tmpReq: GetConfigRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetConfigRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetConfigRuleShrinkRequest = GetConfigRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configRuleId)) {
            query["ConfigRuleId"] = request.configRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetConfigRule",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetConfigRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConfigRule(_ request: GetConfigRuleRequest) async throws -> GetConfigRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getConfigRuleWithOptions(request as! GetConfigRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConfigRuleComplianceByPackWithOptions(_ request: GetConfigRuleComplianceByPackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetConfigRuleComplianceByPackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetConfigRuleComplianceByPack",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetConfigRuleComplianceByPackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConfigRuleComplianceByPack(_ request: GetConfigRuleComplianceByPackRequest) async throws -> GetConfigRuleComplianceByPackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getConfigRuleComplianceByPackWithOptions(request as! GetConfigRuleComplianceByPackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConfigRuleSummaryByRiskLevelWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> GetConfigRuleSummaryByRiskLevelResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetConfigRuleSummaryByRiskLevel",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetConfigRuleSummaryByRiskLevelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConfigRuleSummaryByRiskLevel() async throws -> GetConfigRuleSummaryByRiskLevelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getConfigRuleSummaryByRiskLevelWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConfigRulesReportWithOptions(_ request: GetConfigRulesReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetConfigRulesReportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.reportId)) {
            query["ReportId"] = request.reportId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetConfigRulesReport",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetConfigRulesReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConfigRulesReport(_ request: GetConfigRulesReportRequest) async throws -> GetConfigRulesReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getConfigRulesReportWithOptions(request as! GetConfigRulesReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConfigurationRecorderWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> GetConfigurationRecorderResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetConfigurationRecorder",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetConfigurationRecorderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConfigurationRecorder() async throws -> GetConfigurationRecorderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getConfigurationRecorderWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDiscoveredResourceWithOptions(_ request: GetDiscoveredResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDiscoveredResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.complianceOption)) {
            query["ComplianceOption"] = request.complianceOption!;
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDiscoveredResource",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDiscoveredResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDiscoveredResource(_ request: GetDiscoveredResourceRequest) async throws -> GetDiscoveredResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDiscoveredResourceWithOptions(request as! GetDiscoveredResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDiscoveredResourceCountsGroupByRegionWithOptions(_ request: GetDiscoveredResourceCountsGroupByRegionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDiscoveredResourceCountsGroupByRegionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDiscoveredResourceCountsGroupByRegion",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDiscoveredResourceCountsGroupByRegionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDiscoveredResourceCountsGroupByRegion(_ request: GetDiscoveredResourceCountsGroupByRegionRequest) async throws -> GetDiscoveredResourceCountsGroupByRegionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDiscoveredResourceCountsGroupByRegionWithOptions(request as! GetDiscoveredResourceCountsGroupByRegionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDiscoveredResourceCountsGroupByResourceTypeWithOptions(_ request: GetDiscoveredResourceCountsGroupByResourceTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDiscoveredResourceCountsGroupByResourceTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDiscoveredResourceCountsGroupByResourceType",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDiscoveredResourceCountsGroupByResourceTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDiscoveredResourceCountsGroupByResourceType(_ request: GetDiscoveredResourceCountsGroupByResourceTypeRequest) async throws -> GetDiscoveredResourceCountsGroupByResourceTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDiscoveredResourceCountsGroupByResourceTypeWithOptions(request as! GetDiscoveredResourceCountsGroupByResourceTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIntegratedServiceStatusWithOptions(_ request: GetIntegratedServiceStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIntegratedServiceStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIntegratedServiceStatus",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIntegratedServiceStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIntegratedServiceStatus(_ request: GetIntegratedServiceStatusRequest) async throws -> GetIntegratedServiceStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getIntegratedServiceStatusWithOptions(request as! GetIntegratedServiceStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getManagedRuleWithOptions(_ request: GetManagedRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetManagedRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.identifier)) {
            query["Identifier"] = request.identifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetManagedRule",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetManagedRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getManagedRule(_ request: GetManagedRuleRequest) async throws -> GetManagedRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getManagedRuleWithOptions(request as! GetManagedRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRemediationTemplateWithOptions(_ request: GetRemediationTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRemediationTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.templateIdentifier)) {
            query["TemplateIdentifier"] = request.templateIdentifier ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRemediationTemplate",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRemediationTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRemediationTemplate(_ request: GetRemediationTemplateRequest) async throws -> GetRemediationTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getRemediationTemplateWithOptions(request as! GetRemediationTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getReportFromTemplateWithOptions(_ request: GetReportFromTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetReportFromTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.reportTemplateId)) {
            query["ReportTemplateId"] = request.reportTemplateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetReportFromTemplate",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetReportFromTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getReportFromTemplate(_ request: GetReportFromTemplateRequest) async throws -> GetReportFromTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getReportFromTemplateWithOptions(request as! GetReportFromTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceComplianceByConfigRuleWithOptions(_ request: GetResourceComplianceByConfigRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceComplianceByConfigRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceComplianceByConfigRule",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceComplianceByConfigRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceComplianceByConfigRule(_ request: GetResourceComplianceByConfigRuleRequest) async throws -> GetResourceComplianceByConfigRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourceComplianceByConfigRuleWithOptions(request as! GetResourceComplianceByConfigRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceComplianceByPackWithOptions(_ request: GetResourceComplianceByPackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceComplianceByPackResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceComplianceByPack",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceComplianceByPackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceComplianceByPack(_ request: GetResourceComplianceByPackRequest) async throws -> GetResourceComplianceByPackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourceComplianceByPackWithOptions(request as! GetResourceComplianceByPackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceComplianceGroupByRegionWithOptions(_ request: GetResourceComplianceGroupByRegionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceComplianceGroupByRegionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configRuleIds)) {
            query["ConfigRuleIds"] = request.configRuleIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceComplianceGroupByRegion",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceComplianceGroupByRegionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceComplianceGroupByRegion(_ request: GetResourceComplianceGroupByRegionRequest) async throws -> GetResourceComplianceGroupByRegionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourceComplianceGroupByRegionWithOptions(request as! GetResourceComplianceGroupByRegionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceComplianceGroupByResourceTypeWithOptions(_ request: GetResourceComplianceGroupByResourceTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceComplianceGroupByResourceTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configRuleIds)) {
            query["ConfigRuleIds"] = request.configRuleIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceComplianceGroupByResourceType",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceComplianceGroupByResourceTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceComplianceGroupByResourceType(_ request: GetResourceComplianceGroupByResourceTypeRequest) async throws -> GetResourceComplianceGroupByResourceTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourceComplianceGroupByResourceTypeWithOptions(request as! GetResourceComplianceGroupByResourceTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceComplianceTimelineWithOptions(_ request: GetResourceComplianceTimelineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceComplianceTimelineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceComplianceTimeline",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceComplianceTimelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceComplianceTimeline(_ request: GetResourceComplianceTimelineRequest) async throws -> GetResourceComplianceTimelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourceComplianceTimelineWithOptions(request as! GetResourceComplianceTimelineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceConfigurationSampleWithOptions(_ request: GetResourceConfigurationSampleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceConfigurationSampleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mockOnly)) {
            query["MockOnly"] = request.mockOnly ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceConfigurationSample",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceConfigurationSampleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceConfigurationSample(_ request: GetResourceConfigurationSampleRequest) async throws -> GetResourceConfigurationSampleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourceConfigurationSampleWithOptions(request as! GetResourceConfigurationSampleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceConfigurationTimelineWithOptions(_ request: GetResourceConfigurationTimelineRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceConfigurationTimelineResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceConfigurationTimeline",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceConfigurationTimelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceConfigurationTimeline(_ request: GetResourceConfigurationTimelineRequest) async throws -> GetResourceConfigurationTimelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourceConfigurationTimelineWithOptions(request as! GetResourceConfigurationTimelineRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceInventoryWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceInventoryResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceInventory",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceInventoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceInventory() async throws -> GetResourceInventoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourceInventoryWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceTypePropertiesWithOptions(_ request: GetResourceTypePropertiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceTypePropertiesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceTypeProperties",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceTypePropertiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceTypeProperties(_ request: GetResourceTypePropertiesRequest) async throws -> GetResourceTypePropertiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourceTypePropertiesWithOptions(request as! GetResourceTypePropertiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSupportedResourceRelationConfigWithOptions(_ request: GetSupportedResourceRelationConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSupportedResourceRelationConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSupportedResourceRelationConfig",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSupportedResourceRelationConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSupportedResourceRelationConfig(_ request: GetSupportedResourceRelationConfigRequest) async throws -> GetSupportedResourceRelationConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSupportedResourceRelationConfigWithOptions(request as! GetSupportedResourceRelationConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ignoreAggregateEvaluationResultsWithOptions(_ tmpReq: IgnoreAggregateEvaluationResultsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> IgnoreAggregateEvaluationResultsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: IgnoreAggregateEvaluationResultsShrinkRequest = IgnoreAggregateEvaluationResultsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.resources)) {
            request.resourcesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resources, "Resources", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            body["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleId)) {
            body["ConfigRuleId"] = request.configRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ignoreDate)) {
            body["IgnoreDate"] = request.ignoreDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reason)) {
            body["Reason"] = request.reason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourcesShrink)) {
            body["Resources"] = request.resourcesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IgnoreAggregateEvaluationResults",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IgnoreAggregateEvaluationResultsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ignoreAggregateEvaluationResults(_ request: IgnoreAggregateEvaluationResultsRequest) async throws -> IgnoreAggregateEvaluationResultsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await ignoreAggregateEvaluationResultsWithOptions(request as! IgnoreAggregateEvaluationResultsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ignoreEvaluationResultsWithOptions(_ tmpReq: IgnoreEvaluationResultsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> IgnoreEvaluationResultsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: IgnoreEvaluationResultsShrinkRequest = IgnoreEvaluationResultsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.resources)) {
            request.resourcesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resources, "Resources", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configRuleId)) {
            body["ConfigRuleId"] = request.configRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ignoreDate)) {
            body["IgnoreDate"] = request.ignoreDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reason)) {
            body["Reason"] = request.reason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourcesShrink)) {
            body["Resources"] = request.resourcesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IgnoreEvaluationResults",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IgnoreEvaluationResultsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ignoreEvaluationResults(_ request: IgnoreEvaluationResultsRequest) async throws -> IgnoreEvaluationResultsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await ignoreEvaluationResultsWithOptions(request as! IgnoreEvaluationResultsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateCompliancePacksWithOptions(_ tmpReq: ListAggregateCompliancePacksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAggregateCompliancePacksResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListAggregateCompliancePacksShrinkRequest = ListAggregateCompliancePacksShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.riskLevel)) {
            query["RiskLevel"] = request.riskLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAggregateCompliancePacks",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAggregateCompliancePacksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateCompliancePacks(_ request: ListAggregateCompliancePacksRequest) async throws -> ListAggregateCompliancePacksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAggregateCompliancePacksWithOptions(request as! ListAggregateCompliancePacksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateConfigDeliveryChannelsWithOptions(_ request: ListAggregateConfigDeliveryChannelsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAggregateConfigDeliveryChannelsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryChannelIds)) {
            query["DeliveryChannelIds"] = request.deliveryChannelIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAggregateConfigDeliveryChannels",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAggregateConfigDeliveryChannelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateConfigDeliveryChannels(_ request: ListAggregateConfigDeliveryChannelsRequest) async throws -> ListAggregateConfigDeliveryChannelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAggregateConfigDeliveryChannelsWithOptions(request as! ListAggregateConfigDeliveryChannelsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateConfigRuleEvaluationResultsWithOptions(_ request: ListAggregateConfigRuleEvaluationResultsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAggregateConfigRuleEvaluationResultsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliancePackId)) {
            query["CompliancePackId"] = request.compliancePackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.complianceType)) {
            query["ComplianceType"] = request.complianceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleId)) {
            query["ConfigRuleId"] = request.configRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regions)) {
            query["Regions"] = request.regions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceAccountId)) {
            query["ResourceAccountId"] = request.resourceAccountId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupIds)) {
            query["ResourceGroupIds"] = request.resourceGroupIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceTypes)) {
            query["ResourceTypes"] = request.resourceTypes ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAggregateConfigRuleEvaluationResults",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAggregateConfigRuleEvaluationResultsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateConfigRuleEvaluationResults(_ request: ListAggregateConfigRuleEvaluationResultsRequest) async throws -> ListAggregateConfigRuleEvaluationResultsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAggregateConfigRuleEvaluationResultsWithOptions(request as! ListAggregateConfigRuleEvaluationResultsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateConfigRuleEvaluationStatisticsWithOptions(_ request: ListAggregateConfigRuleEvaluationStatisticsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAggregateConfigRuleEvaluationStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAggregateConfigRuleEvaluationStatistics",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAggregateConfigRuleEvaluationStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateConfigRuleEvaluationStatistics(_ request: ListAggregateConfigRuleEvaluationStatisticsRequest) async throws -> ListAggregateConfigRuleEvaluationStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAggregateConfigRuleEvaluationStatisticsWithOptions(request as! ListAggregateConfigRuleEvaluationStatisticsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateConfigRulesWithOptions(_ tmpReq: ListAggregateConfigRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAggregateConfigRulesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListAggregateConfigRulesShrinkRequest = ListAggregateConfigRulesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliancePackId)) {
            query["CompliancePackId"] = request.compliancePackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.complianceType)) {
            query["ComplianceType"] = request.complianceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleName)) {
            query["ConfigRuleName"] = request.configRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleState)) {
            query["ConfigRuleState"] = request.configRuleState ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceTypes)) {
            query["ResourceTypes"] = request.resourceTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskLevel)) {
            query["RiskLevel"] = request.riskLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAggregateConfigRules",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAggregateConfigRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateConfigRules(_ request: ListAggregateConfigRulesRequest) async throws -> ListAggregateConfigRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAggregateConfigRulesWithOptions(request as! ListAggregateConfigRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateDiscoveredResourcesWithOptions(_ request: ListAggregateDiscoveredResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAggregateDiscoveredResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUpdateTimestamp)) {
            query["EndUpdateTimestamp"] = request.endUpdateTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceTypes)) {
            query["ExcludeResourceTypes"] = request.excludeResourceTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regions)) {
            query["Regions"] = request.regions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceAccountId)) {
            query["ResourceAccountId"] = request.resourceAccountId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceDeleted)) {
            query["ResourceDeleted"] = request.resourceDeleted!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceName)) {
            query["ResourceName"] = request.resourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceTypes)) {
            query["ResourceTypes"] = request.resourceTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startUpdateTimestamp)) {
            query["StartUpdateTimestamp"] = request.startUpdateTimestamp!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAggregateDiscoveredResources",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAggregateDiscoveredResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateDiscoveredResources(_ request: ListAggregateDiscoveredResourcesRequest) async throws -> ListAggregateDiscoveredResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAggregateDiscoveredResourcesWithOptions(request as! ListAggregateDiscoveredResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateRecommendManagedRulesWithOptions(_ request: ListAggregateRecommendManagedRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAggregateRecommendManagedRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeRegionIdsScope)) {
            query["ExcludeRegionIdsScope"] = request.excludeRegionIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceGroupIdsScope)) {
            query["ExcludeResourceGroupIdsScope"] = request.excludeResourceGroupIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceIdsScope)) {
            query["ExcludeResourceIdsScope"] = request.excludeResourceIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionIdsScope)) {
            query["RegionIdsScope"] = request.regionIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupIdsScope)) {
            query["ResourceGroupIdsScope"] = request.resourceGroupIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIdsScope)) {
            query["ResourceIdsScope"] = request.resourceIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.selectedManagedRuleIdentifiers)) {
            query["SelectedManagedRuleIdentifiers"] = request.selectedManagedRuleIdentifiers ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAggregateRecommendManagedRules",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAggregateRecommendManagedRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateRecommendManagedRules(_ request: ListAggregateRecommendManagedRulesRequest) async throws -> ListAggregateRecommendManagedRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAggregateRecommendManagedRulesWithOptions(request as! ListAggregateRecommendManagedRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateRemediationExecutionsWithOptions(_ request: ListAggregateRemediationExecutionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAggregateRemediationExecutionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleId)) {
            query["ConfigRuleId"] = request.configRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executionStatus)) {
            query["ExecutionStatus"] = request.executionStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceAccountId)) {
            query["ResourceAccountId"] = request.resourceAccountId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAggregateRemediationExecutions",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAggregateRemediationExecutionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateRemediationExecutions(_ request: ListAggregateRemediationExecutionsRequest) async throws -> ListAggregateRemediationExecutionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAggregateRemediationExecutionsWithOptions(request as! ListAggregateRemediationExecutionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateRemediationsWithOptions(_ request: ListAggregateRemediationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAggregateRemediationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleIds)) {
            query["ConfigRuleIds"] = request.configRuleIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAggregateRemediations",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAggregateRemediationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateRemediations(_ request: ListAggregateRemediationsRequest) async throws -> ListAggregateRemediationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAggregateRemediationsWithOptions(request as! ListAggregateRemediationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateResourceEvaluationResultsWithOptions(_ request: ListAggregateResourceEvaluationResultsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAggregateResourceEvaluationResultsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.complianceType)) {
            query["ComplianceType"] = request.complianceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskLevel)) {
            query["RiskLevel"] = request.riskLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAggregateResourceEvaluationResults",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAggregateResourceEvaluationResultsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateResourceEvaluationResults(_ request: ListAggregateResourceEvaluationResultsRequest) async throws -> ListAggregateResourceEvaluationResultsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAggregateResourceEvaluationResultsWithOptions(request as! ListAggregateResourceEvaluationResultsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateResourceRelationsWithOptions(_ request: ListAggregateResourceRelationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAggregateResourceRelationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relationType)) {
            query["RelationType"] = request.relationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceAccountId)) {
            query["ResourceAccountId"] = request.resourceAccountId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetResourceId)) {
            query["TargetResourceId"] = request.targetResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetResourceType)) {
            query["TargetResourceType"] = request.targetResourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAggregateResourceRelations",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAggregateResourceRelationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateResourceRelations(_ request: ListAggregateResourceRelationsRequest) async throws -> ListAggregateResourceRelationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAggregateResourceRelationsWithOptions(request as! ListAggregateResourceRelationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateResourcesByAdvancedSearchWithOptions(_ request: ListAggregateResourcesByAdvancedSearchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAggregateResourcesByAdvancedSearchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sql)) {
            query["Sql"] = request.sql ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAggregateResourcesByAdvancedSearch",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAggregateResourcesByAdvancedSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregateResourcesByAdvancedSearch(_ request: ListAggregateResourcesByAdvancedSearchRequest) async throws -> ListAggregateResourcesByAdvancedSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAggregateResourcesByAdvancedSearchWithOptions(request as! ListAggregateResourcesByAdvancedSearchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregatorsWithOptions(_ tmpReq: ListAggregatorsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAggregatorsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListAggregatorsShrinkRequest = ListAggregatorsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAggregators",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAggregatorsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAggregators(_ request: ListAggregatorsRequest) async throws -> ListAggregatorsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listAggregatorsWithOptions(request as! ListAggregatorsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCompliancePackTemplatesWithOptions(_ request: ListCompliancePackTemplatesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCompliancePackTemplatesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.compliancePackTemplateId)) {
            query["CompliancePackTemplateId"] = request.compliancePackTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterType)) {
            query["FilterType"] = request.filterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceTypes)) {
            query["ResourceTypes"] = request.resourceTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleRiskLevel)) {
            query["RuleRiskLevel"] = request.ruleRiskLevel!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCompliancePackTemplates",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCompliancePackTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCompliancePackTemplates(_ request: ListCompliancePackTemplatesRequest) async throws -> ListCompliancePackTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listCompliancePackTemplatesWithOptions(request as! ListCompliancePackTemplatesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCompliancePacksWithOptions(_ tmpReq: ListCompliancePacksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCompliancePacksResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListCompliancePacksShrinkRequest = ListCompliancePacksShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.riskLevel)) {
            query["RiskLevel"] = request.riskLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCompliancePacks",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCompliancePacksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCompliancePacks(_ request: ListCompliancePacksRequest) async throws -> ListCompliancePacksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listCompliancePacksWithOptions(request as! ListCompliancePacksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConfigDeliveryChannelsWithOptions(_ request: ListConfigDeliveryChannelsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListConfigDeliveryChannelsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deliveryChannelIds)) {
            query["DeliveryChannelIds"] = request.deliveryChannelIds ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListConfigDeliveryChannels",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListConfigDeliveryChannelsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConfigDeliveryChannels(_ request: ListConfigDeliveryChannelsRequest) async throws -> ListConfigDeliveryChannelsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listConfigDeliveryChannelsWithOptions(request as! ListConfigDeliveryChannelsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConfigRuleEvaluationResultsWithOptions(_ request: ListConfigRuleEvaluationResultsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListConfigRuleEvaluationResultsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.compliancePackId)) {
            query["CompliancePackId"] = request.compliancePackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.complianceType)) {
            query["ComplianceType"] = request.complianceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleId)) {
            query["ConfigRuleId"] = request.configRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regions)) {
            query["Regions"] = request.regions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupIds)) {
            query["ResourceGroupIds"] = request.resourceGroupIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceTypes)) {
            query["ResourceTypes"] = request.resourceTypes ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListConfigRuleEvaluationResults",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListConfigRuleEvaluationResultsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConfigRuleEvaluationResults(_ request: ListConfigRuleEvaluationResultsRequest) async throws -> ListConfigRuleEvaluationResultsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listConfigRuleEvaluationResultsWithOptions(request as! ListConfigRuleEvaluationResultsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConfigRuleEvaluationStatisticsWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListConfigRuleEvaluationStatisticsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListConfigRuleEvaluationStatistics",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListConfigRuleEvaluationStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConfigRuleEvaluationStatistics() async throws -> ListConfigRuleEvaluationStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listConfigRuleEvaluationStatisticsWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConfigRuleOperatorsWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListConfigRuleOperatorsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListConfigRuleOperators",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListConfigRuleOperatorsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConfigRuleOperators() async throws -> ListConfigRuleOperatorsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listConfigRuleOperatorsWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConfigRulesWithOptions(_ tmpReq: ListConfigRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListConfigRulesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListConfigRulesShrinkRequest = ListConfigRulesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.compliancePackId)) {
            query["CompliancePackId"] = request.compliancePackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.complianceType)) {
            query["ComplianceType"] = request.complianceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleName)) {
            query["ConfigRuleName"] = request.configRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleState)) {
            query["ConfigRuleState"] = request.configRuleState ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceTypes)) {
            query["ResourceTypes"] = request.resourceTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskLevel)) {
            query["RiskLevel"] = request.riskLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListConfigRules",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListConfigRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConfigRules(_ request: ListConfigRulesRequest) async throws -> ListConfigRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listConfigRulesWithOptions(request as! ListConfigRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDiscoveredResourcesWithOptions(_ request: ListDiscoveredResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDiscoveredResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endUpdateTimestamp)) {
            query["EndUpdateTimestamp"] = request.endUpdateTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceTypes)) {
            query["ExcludeResourceTypes"] = request.excludeResourceTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regions)) {
            query["Regions"] = request.regions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceDeleted)) {
            query["ResourceDeleted"] = request.resourceDeleted!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceName)) {
            query["ResourceName"] = request.resourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceTypes)) {
            query["ResourceTypes"] = request.resourceTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startUpdateTimestamp)) {
            query["StartUpdateTimestamp"] = request.startUpdateTimestamp!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDiscoveredResources",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDiscoveredResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDiscoveredResources(_ request: ListDiscoveredResourcesRequest) async throws -> ListDiscoveredResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDiscoveredResourcesWithOptions(request as! ListDiscoveredResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegratedServiceWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> ListIntegratedServiceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIntegratedService",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIntegratedServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegratedService() async throws -> ListIntegratedServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listIntegratedServiceWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listManagedRulesWithOptions(_ request: ListManagedRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListManagedRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filterType)) {
            query["FilterType"] = request.filterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            query["Keyword"] = request.keyword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceTypes)) {
            query["ResourceTypes"] = request.resourceTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskLevel)) {
            query["RiskLevel"] = request.riskLevel!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListManagedRules",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListManagedRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listManagedRules(_ request: ListManagedRulesRequest) async throws -> ListManagedRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listManagedRulesWithOptions(request as! ListManagedRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPreManagedRulesWithOptions(_ tmpReq: ListPreManagedRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPreManagedRulesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListPreManagedRulesShrinkRequest = ListPreManagedRulesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.resourceTypes)) {
            request.resourceTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resourceTypes, "ResourceTypes", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceTypesShrink)) {
            body["ResourceTypes"] = request.resourceTypesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPreManagedRules",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPreManagedRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPreManagedRules(_ request: ListPreManagedRulesRequest) async throws -> ListPreManagedRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPreManagedRulesWithOptions(request as! ListPreManagedRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRecommendManagedRulesWithOptions(_ request: ListRecommendManagedRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRecommendManagedRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.excludeRegionIdsScope)) {
            query["ExcludeRegionIdsScope"] = request.excludeRegionIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceGroupIdsScope)) {
            query["ExcludeResourceGroupIdsScope"] = request.excludeResourceGroupIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceIdsScope)) {
            query["ExcludeResourceIdsScope"] = request.excludeResourceIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionIdsScope)) {
            query["RegionIdsScope"] = request.regionIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupIdsScope)) {
            query["ResourceGroupIdsScope"] = request.resourceGroupIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIdsScope)) {
            query["ResourceIdsScope"] = request.resourceIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.selectedManagedRuleIdentifiers)) {
            query["SelectedManagedRuleIdentifiers"] = request.selectedManagedRuleIdentifiers ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRecommendManagedRules",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRecommendManagedRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRecommendManagedRules(_ request: ListRecommendManagedRulesRequest) async throws -> ListRecommendManagedRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRecommendManagedRulesWithOptions(request as! ListRecommendManagedRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRemediationExecutionsWithOptions(_ request: ListRemediationExecutionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRemediationExecutionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configRuleId)) {
            query["ConfigRuleId"] = request.configRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executionStatus)) {
            query["ExecutionStatus"] = request.executionStatus ?? "";
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
            "action": "ListRemediationExecutions",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRemediationExecutionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRemediationExecutions(_ request: ListRemediationExecutionsRequest) async throws -> ListRemediationExecutionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRemediationExecutionsWithOptions(request as! ListRemediationExecutionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRemediationTemplatesWithOptions(_ request: ListRemediationTemplatesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRemediationTemplatesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.managedRuleIdentifier)) {
            query["ManagedRuleIdentifier"] = request.managedRuleIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.remediationType)) {
            query["RemediationType"] = request.remediationType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRemediationTemplates",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRemediationTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRemediationTemplates(_ request: ListRemediationTemplatesRequest) async throws -> ListRemediationTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRemediationTemplatesWithOptions(request as! ListRemediationTemplatesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRemediationsWithOptions(_ request: ListRemediationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRemediationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configRuleIds)) {
            query["ConfigRuleIds"] = request.configRuleIds ?? "";
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
            "action": "ListRemediations",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRemediationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRemediations(_ request: ListRemediationsRequest) async throws -> ListRemediationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listRemediationsWithOptions(request as! ListRemediationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceEvaluationResultsWithOptions(_ request: ListResourceEvaluationResultsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourceEvaluationResultsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.complianceType)) {
            query["ComplianceType"] = request.complianceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskLevel)) {
            query["RiskLevel"] = request.riskLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResourceEvaluationResults",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourceEvaluationResultsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceEvaluationResults(_ request: ListResourceEvaluationResultsRequest) async throws -> ListResourceEvaluationResultsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listResourceEvaluationResultsWithOptions(request as! ListResourceEvaluationResultsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceRelationsWithOptions(_ request: ListResourceRelationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourceRelationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            query["Region"] = request.region ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relationType)) {
            query["RelationType"] = request.relationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetResourceId)) {
            query["TargetResourceId"] = request.targetResourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetResourceType)) {
            query["TargetResourceType"] = request.targetResourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResourceRelations",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourceRelationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceRelations(_ request: ListResourceRelationsRequest) async throws -> ListResourceRelationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listResourceRelationsWithOptions(request as! ListResourceRelationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourcesByAdvancedSearchWithOptions(_ request: ListResourcesByAdvancedSearchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourcesByAdvancedSearchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sql)) {
            query["Sql"] = request.sql ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResourcesByAdvancedSearch",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourcesByAdvancedSearchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourcesByAdvancedSearch(_ request: ListResourcesByAdvancedSearchRequest) async throws -> ListResourcesByAdvancedSearchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listResourcesByAdvancedSearchWithOptions(request as! ListResourcesByAdvancedSearchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSupportedProductsWithOptions(_ request: ListSupportedProductsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSupportedProductsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
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
            "action": "ListSupportedProducts",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSupportedProductsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSupportedProducts(_ request: ListSupportedProductsRequest) async throws -> ListSupportedProductsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSupportedProductsWithOptions(request as! ListSupportedProductsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResourcesWithOptions(_ tmpReq: ListTagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagResourcesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListTagResourcesShrinkRequest = ListTagResourcesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            body["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            body["Tag"] = request.tagShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagResources",
            "version": "2020-09-07",
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
    public func putEvaluationsWithOptions(_ request: PutEvaluationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PutEvaluationsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deleteMode)) {
            body["DeleteMode"] = request.deleteMode!;
        }
        if (!TeaUtils.Client.isUnset(request.evaluations)) {
            body["Evaluations"] = request.evaluations ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resultToken)) {
            body["ResultToken"] = request.resultToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutEvaluations",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutEvaluationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putEvaluations(_ request: PutEvaluationsRequest) async throws -> PutEvaluationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await putEvaluationsWithOptions(request as! PutEvaluationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revertAggregateEvaluationResultsWithOptions(_ tmpReq: RevertAggregateEvaluationResultsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RevertAggregateEvaluationResultsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RevertAggregateEvaluationResultsShrinkRequest = RevertAggregateEvaluationResultsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.resources)) {
            request.resourcesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resources, "Resources", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            body["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleId)) {
            body["ConfigRuleId"] = request.configRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourcesShrink)) {
            body["Resources"] = request.resourcesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevertAggregateEvaluationResults",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevertAggregateEvaluationResultsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revertAggregateEvaluationResults(_ request: RevertAggregateEvaluationResultsRequest) async throws -> RevertAggregateEvaluationResultsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await revertAggregateEvaluationResultsWithOptions(request as! RevertAggregateEvaluationResultsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revertEvaluationResultsWithOptions(_ tmpReq: RevertEvaluationResultsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RevertEvaluationResultsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RevertEvaluationResultsShrinkRequest = RevertEvaluationResultsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.resources)) {
            request.resourcesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resources, "Resources", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configRuleId)) {
            body["ConfigRuleId"] = request.configRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourcesShrink)) {
            body["Resources"] = request.resourcesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevertEvaluationResults",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevertEvaluationResultsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revertEvaluationResults(_ request: RevertEvaluationResultsRequest) async throws -> RevertEvaluationResultsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await revertEvaluationResultsWithOptions(request as! RevertEvaluationResultsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startAggregateConfigRuleEvaluationWithOptions(_ request: StartAggregateConfigRuleEvaluationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartAggregateConfigRuleEvaluationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliancePackId)) {
            query["CompliancePackId"] = request.compliancePackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleId)) {
            query["ConfigRuleId"] = request.configRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.revertEvaluation)) {
            query["RevertEvaluation"] = request.revertEvaluation!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartAggregateConfigRuleEvaluation",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartAggregateConfigRuleEvaluationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startAggregateConfigRuleEvaluation(_ request: StartAggregateConfigRuleEvaluationRequest) async throws -> StartAggregateConfigRuleEvaluationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startAggregateConfigRuleEvaluationWithOptions(request as! StartAggregateConfigRuleEvaluationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startAggregateRemediationWithOptions(_ request: StartAggregateRemediationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartAggregateRemediationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleId)) {
            query["ConfigRuleId"] = request.configRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceAccountId)) {
            query["ResourceAccountId"] = request.resourceAccountId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartAggregateRemediation",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartAggregateRemediationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startAggregateRemediation(_ request: StartAggregateRemediationRequest) async throws -> StartAggregateRemediationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startAggregateRemediationWithOptions(request as! StartAggregateRemediationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startConfigRuleEvaluationWithOptions(_ request: StartConfigRuleEvaluationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartConfigRuleEvaluationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.compliancePackId)) {
            query["CompliancePackId"] = request.compliancePackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleId)) {
            query["ConfigRuleId"] = request.configRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.revertEvaluation)) {
            query["RevertEvaluation"] = request.revertEvaluation!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartConfigRuleEvaluation",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartConfigRuleEvaluationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startConfigRuleEvaluation(_ request: StartConfigRuleEvaluationRequest) async throws -> StartConfigRuleEvaluationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startConfigRuleEvaluationWithOptions(request as! StartConfigRuleEvaluationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startConfigRuleEvaluationByResourceWithOptions(_ request: StartConfigRuleEvaluationByResourceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartConfigRuleEvaluationByResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["ResourceId"] = request.resourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartConfigRuleEvaluationByResource",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartConfigRuleEvaluationByResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startConfigRuleEvaluationByResource(_ request: StartConfigRuleEvaluationByResourceRequest) async throws -> StartConfigRuleEvaluationByResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startConfigRuleEvaluationByResourceWithOptions(request as! StartConfigRuleEvaluationByResourceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startConfigurationRecorderWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> StartConfigurationRecorderResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartConfigurationRecorder",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartConfigurationRecorderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startConfigurationRecorder() async throws -> StartConfigurationRecorderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startConfigurationRecorderWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startRemediationWithOptions(_ request: StartRemediationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartRemediationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.configRuleId)) {
            query["ConfigRuleId"] = request.configRuleId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartRemediation",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartRemediationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startRemediation(_ request: StartRemediationRequest) async throws -> StartRemediationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startRemediationWithOptions(request as! StartRemediationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopConfigurationRecorderWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> StopConfigurationRecorderResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopConfigurationRecorder",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopConfigurationRecorderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopConfigurationRecorder() async throws -> StopConfigurationRecorderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopConfigurationRecorderWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesWithOptions(_ tmpReq: TagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TagResourcesShrinkRequest = TagResourcesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            body["Tag"] = request.tagShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagResources",
            "version": "2020-09-07",
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
    public func triggerReportSendWithOptions(_ request: TriggerReportSendRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TriggerReportSendResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.reportTemplateId)) {
            body["ReportTemplateId"] = request.reportTemplateId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TriggerReportSend",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TriggerReportSendResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func triggerReportSend(_ request: TriggerReportSendRequest) async throws -> TriggerReportSendResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await triggerReportSendWithOptions(request as! TriggerReportSendRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResourcesWithOptions(_ request: UntagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UntagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.all)) {
            body["All"] = request.all!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            body["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKey)) {
            body["TagKey"] = request.tagKey ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UntagResources",
            "version": "2020-09-07",
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
    public func updateAggregateCompliancePackWithOptions(_ tmpReq: UpdateAggregateCompliancePackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAggregateCompliancePackResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateAggregateCompliancePackShrinkRequest = UpdateAggregateCompliancePackShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.configRules)) {
            request.configRulesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.configRules, "ConfigRules", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            body["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliancePackId)) {
            body["CompliancePackId"] = request.compliancePackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliancePackName)) {
            body["CompliancePackName"] = request.compliancePackName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRulesShrink)) {
            body["ConfigRules"] = request.configRulesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeRegionIdsScope)) {
            body["ExcludeRegionIdsScope"] = request.excludeRegionIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceGroupIdsScope)) {
            body["ExcludeResourceGroupIdsScope"] = request.excludeResourceGroupIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceIdsScope)) {
            body["ExcludeResourceIdsScope"] = request.excludeResourceIdsScope ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.excludeTagsScope)) {
            bodyFlat["ExcludeTagsScope"] = request.excludeTagsScope ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionIdsScope)) {
            body["RegionIdsScope"] = request.regionIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupIdsScope)) {
            body["ResourceGroupIdsScope"] = request.resourceGroupIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIdsScope)) {
            body["ResourceIdsScope"] = request.resourceIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskLevel)) {
            body["RiskLevel"] = request.riskLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.tagKeyScope)) {
            body["TagKeyScope"] = request.tagKeyScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagValueScope)) {
            body["TagValueScope"] = request.tagValueScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsScope)) {
            bodyFlat["TagsScope"] = request.tagsScope ?? [];
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAggregateCompliancePack",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAggregateCompliancePackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAggregateCompliancePack(_ request: UpdateAggregateCompliancePackRequest) async throws -> UpdateAggregateCompliancePackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAggregateCompliancePackWithOptions(request as! UpdateAggregateCompliancePackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAggregateConfigDeliveryChannelWithOptions(_ request: UpdateAggregateConfigDeliveryChannelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAggregateConfigDeliveryChannelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            query["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliantSnapshot)) {
            query["CompliantSnapshot"] = request.compliantSnapshot!;
        }
        if (!TeaUtils.Client.isUnset(request.configurationItemChangeNotification)) {
            query["ConfigurationItemChangeNotification"] = request.configurationItemChangeNotification!;
        }
        if (!TeaUtils.Client.isUnset(request.configurationSnapshot)) {
            query["ConfigurationSnapshot"] = request.configurationSnapshot!;
        }
        if (!TeaUtils.Client.isUnset(request.deliveryChannelCondition)) {
            query["DeliveryChannelCondition"] = request.deliveryChannelCondition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryChannelId)) {
            query["DeliveryChannelId"] = request.deliveryChannelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryChannelName)) {
            query["DeliveryChannelName"] = request.deliveryChannelName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryChannelTargetArn)) {
            query["DeliveryChannelTargetArn"] = request.deliveryChannelTargetArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliverySnapshotTime)) {
            query["DeliverySnapshotTime"] = request.deliverySnapshotTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nonCompliantNotification)) {
            query["NonCompliantNotification"] = request.nonCompliantNotification!;
        }
        if (!TeaUtils.Client.isUnset(request.oversizedDataOSSTargetArn)) {
            query["OversizedDataOSSTargetArn"] = request.oversizedDataOSSTargetArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAggregateConfigDeliveryChannel",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAggregateConfigDeliveryChannelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAggregateConfigDeliveryChannel(_ request: UpdateAggregateConfigDeliveryChannelRequest) async throws -> UpdateAggregateConfigDeliveryChannelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAggregateConfigDeliveryChannelWithOptions(request as! UpdateAggregateConfigDeliveryChannelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAggregateConfigRuleWithOptions(_ tmpReq: UpdateAggregateConfigRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAggregateConfigRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateAggregateConfigRuleShrinkRequest = UpdateAggregateConfigRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.inputParameters)) {
            request.inputParametersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.inputParameters, "InputParameters", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.resourceTypesScope)) {
            request.resourceTypesScopeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resourceTypesScope, "ResourceTypesScope", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountIdsScope)) {
            body["AccountIdsScope"] = request.accountIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            body["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleId)) {
            body["ConfigRuleId"] = request.configRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleName)) {
            body["ConfigRuleName"] = request.configRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleTriggerTypes)) {
            body["ConfigRuleTriggerTypes"] = request.configRuleTriggerTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeAccountIdsScope)) {
            body["ExcludeAccountIdsScope"] = request.excludeAccountIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeFolderIdsScope)) {
            body["ExcludeFolderIdsScope"] = request.excludeFolderIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeRegionIdsScope)) {
            body["ExcludeRegionIdsScope"] = request.excludeRegionIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceGroupIdsScope)) {
            body["ExcludeResourceGroupIdsScope"] = request.excludeResourceGroupIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceIdsScope)) {
            body["ExcludeResourceIdsScope"] = request.excludeResourceIdsScope ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.excludeTagsScope)) {
            bodyFlat["ExcludeTagsScope"] = request.excludeTagsScope ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.folderIdsScope)) {
            body["FolderIdsScope"] = request.folderIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputParametersShrink)) {
            body["InputParameters"] = request.inputParametersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maximumExecutionFrequency)) {
            body["MaximumExecutionFrequency"] = request.maximumExecutionFrequency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionIdsScope)) {
            body["RegionIdsScope"] = request.regionIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupIdsScope)) {
            body["ResourceGroupIdsScope"] = request.resourceGroupIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIdsScope)) {
            body["ResourceIdsScope"] = request.resourceIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceNameScope)) {
            body["ResourceNameScope"] = request.resourceNameScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceTypesScopeShrink)) {
            body["ResourceTypesScope"] = request.resourceTypesScopeShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskLevel)) {
            body["RiskLevel"] = request.riskLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.tagKeyLogicScope)) {
            body["TagKeyLogicScope"] = request.tagKeyLogicScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKeyScope)) {
            body["TagKeyScope"] = request.tagKeyScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagValueScope)) {
            body["TagValueScope"] = request.tagValueScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsScope)) {
            bodyFlat["TagsScope"] = request.tagsScope ?? [];
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAggregateConfigRule",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAggregateConfigRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAggregateConfigRule(_ request: UpdateAggregateConfigRuleRequest) async throws -> UpdateAggregateConfigRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAggregateConfigRuleWithOptions(request as! UpdateAggregateConfigRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAggregateRemediationWithOptions(_ request: UpdateAggregateRemediationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAggregateRemediationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            body["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.invokeType)) {
            body["InvokeType"] = request.invokeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["Params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remediationId)) {
            body["RemediationId"] = request.remediationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remediationTemplateId)) {
            body["RemediationTemplateId"] = request.remediationTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remediationType)) {
            body["RemediationType"] = request.remediationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["SourceType"] = request.sourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAggregateRemediation",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAggregateRemediationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAggregateRemediation(_ request: UpdateAggregateRemediationRequest) async throws -> UpdateAggregateRemediationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAggregateRemediationWithOptions(request as! UpdateAggregateRemediationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAggregatorWithOptions(_ tmpReq: UpdateAggregatorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAggregatorResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateAggregatorShrinkRequest = UpdateAggregatorShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.aggregatorAccounts)) {
            request.aggregatorAccountsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.aggregatorAccounts, "AggregatorAccounts", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorAccountsShrink)) {
            body["AggregatorAccounts"] = request.aggregatorAccountsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aggregatorId)) {
            body["AggregatorId"] = request.aggregatorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.aggregatorName)) {
            body["AggregatorName"] = request.aggregatorName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.folderId)) {
            body["FolderId"] = request.folderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAggregator",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAggregatorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAggregator(_ request: UpdateAggregatorRequest) async throws -> UpdateAggregatorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAggregatorWithOptions(request as! UpdateAggregatorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCompliancePackWithOptions(_ tmpReq: UpdateCompliancePackRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateCompliancePackResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateCompliancePackShrinkRequest = UpdateCompliancePackShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.configRules)) {
            request.configRulesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.configRules, "ConfigRules", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliancePackId)) {
            body["CompliancePackId"] = request.compliancePackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliancePackName)) {
            body["CompliancePackName"] = request.compliancePackName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRulesShrink)) {
            body["ConfigRules"] = request.configRulesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeRegionIdsScope)) {
            body["ExcludeRegionIdsScope"] = request.excludeRegionIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceGroupIdsScope)) {
            body["ExcludeResourceGroupIdsScope"] = request.excludeResourceGroupIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceIdsScope)) {
            body["ExcludeResourceIdsScope"] = request.excludeResourceIdsScope ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.excludeTagsScope)) {
            bodyFlat["ExcludeTagsScope"] = request.excludeTagsScope ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionIdsScope)) {
            body["RegionIdsScope"] = request.regionIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupIdsScope)) {
            body["ResourceGroupIdsScope"] = request.resourceGroupIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIdsScope)) {
            body["ResourceIdsScope"] = request.resourceIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskLevel)) {
            body["RiskLevel"] = request.riskLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.tagKeyScope)) {
            body["TagKeyScope"] = request.tagKeyScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagValueScope)) {
            body["TagValueScope"] = request.tagValueScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsScope)) {
            bodyFlat["TagsScope"] = request.tagsScope ?? [];
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateCompliancePack",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateCompliancePackResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCompliancePack(_ request: UpdateCompliancePackRequest) async throws -> UpdateCompliancePackResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateCompliancePackWithOptions(request as! UpdateCompliancePackRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConfigDeliveryChannelWithOptions(_ request: UpdateConfigDeliveryChannelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateConfigDeliveryChannelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.compliantSnapshot)) {
            query["CompliantSnapshot"] = request.compliantSnapshot!;
        }
        if (!TeaUtils.Client.isUnset(request.configurationItemChangeNotification)) {
            query["ConfigurationItemChangeNotification"] = request.configurationItemChangeNotification!;
        }
        if (!TeaUtils.Client.isUnset(request.configurationSnapshot)) {
            query["ConfigurationSnapshot"] = request.configurationSnapshot!;
        }
        if (!TeaUtils.Client.isUnset(request.deliveryChannelCondition)) {
            query["DeliveryChannelCondition"] = request.deliveryChannelCondition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryChannelId)) {
            query["DeliveryChannelId"] = request.deliveryChannelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryChannelName)) {
            query["DeliveryChannelName"] = request.deliveryChannelName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryChannelTargetArn)) {
            query["DeliveryChannelTargetArn"] = request.deliveryChannelTargetArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliverySnapshotTime)) {
            query["DeliverySnapshotTime"] = request.deliverySnapshotTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nonCompliantNotification)) {
            query["NonCompliantNotification"] = request.nonCompliantNotification!;
        }
        if (!TeaUtils.Client.isUnset(request.oversizedDataOSSTargetArn)) {
            query["OversizedDataOSSTargetArn"] = request.oversizedDataOSSTargetArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateConfigDeliveryChannel",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateConfigDeliveryChannelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConfigDeliveryChannel(_ request: UpdateConfigDeliveryChannelRequest) async throws -> UpdateConfigDeliveryChannelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateConfigDeliveryChannelWithOptions(request as! UpdateConfigDeliveryChannelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConfigRuleWithOptions(_ tmpReq: UpdateConfigRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateConfigRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateConfigRuleShrinkRequest = UpdateConfigRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.inputParameters)) {
            request.inputParametersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.inputParameters, "InputParameters", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.resourceTypesScope)) {
            request.resourceTypesScopeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resourceTypesScope, "ResourceTypesScope", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tag)) {
            request.tagShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tag, "Tag", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tagShrink)) {
            query["Tag"] = request.tagShrink ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleId)) {
            body["ConfigRuleId"] = request.configRuleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleName)) {
            body["ConfigRuleName"] = request.configRuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.configRuleTriggerTypes)) {
            body["ConfigRuleTriggerTypes"] = request.configRuleTriggerTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeRegionIdsScope)) {
            body["ExcludeRegionIdsScope"] = request.excludeRegionIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceGroupIdsScope)) {
            body["ExcludeResourceGroupIdsScope"] = request.excludeResourceGroupIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.excludeResourceIdsScope)) {
            body["ExcludeResourceIdsScope"] = request.excludeResourceIdsScope ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.excludeTagsScope)) {
            bodyFlat["ExcludeTagsScope"] = request.excludeTagsScope ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.extendContent)) {
            body["ExtendContent"] = request.extendContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputParametersShrink)) {
            body["InputParameters"] = request.inputParametersShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maximumExecutionFrequency)) {
            body["MaximumExecutionFrequency"] = request.maximumExecutionFrequency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionIdsScope)) {
            body["RegionIdsScope"] = request.regionIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupIdsScope)) {
            body["ResourceGroupIdsScope"] = request.resourceGroupIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIdsScope)) {
            body["ResourceIdsScope"] = request.resourceIdsScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceNameScope)) {
            body["ResourceNameScope"] = request.resourceNameScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceTypesScopeShrink)) {
            body["ResourceTypesScope"] = request.resourceTypesScopeShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskLevel)) {
            body["RiskLevel"] = request.riskLevel!;
        }
        if (!TeaUtils.Client.isUnset(request.tagKeyLogicScope)) {
            body["TagKeyLogicScope"] = request.tagKeyLogicScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKeyScope)) {
            body["TagKeyScope"] = request.tagKeyScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagValueScope)) {
            body["TagValueScope"] = request.tagValueScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsScope)) {
            bodyFlat["TagsScope"] = request.tagsScope ?? [];
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateConfigRule",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateConfigRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConfigRule(_ request: UpdateConfigRuleRequest) async throws -> UpdateConfigRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateConfigRuleWithOptions(request as! UpdateConfigRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConfigurationRecorderWithOptions(_ request: UpdateConfigurationRecorderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateConfigurationRecorderResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceTypes)) {
            body["ResourceTypes"] = request.resourceTypes ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateConfigurationRecorder",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateConfigurationRecorderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConfigurationRecorder(_ request: UpdateConfigurationRecorderRequest) async throws -> UpdateConfigurationRecorderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateConfigurationRecorderWithOptions(request as! UpdateConfigurationRecorderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIntegratedServiceStatusWithOptions(_ request: UpdateIntegratedServiceStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateIntegratedServiceStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aggregatorDeliveryDataType)) {
            body["AggregatorDeliveryDataType"] = request.aggregatorDeliveryDataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.integratedTypes)) {
            body["IntegratedTypes"] = request.integratedTypes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceCode)) {
            body["ServiceCode"] = request.serviceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateIntegratedServiceStatus",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateIntegratedServiceStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIntegratedServiceStatus(_ request: UpdateIntegratedServiceStatusRequest) async throws -> UpdateIntegratedServiceStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateIntegratedServiceStatusWithOptions(request as! UpdateIntegratedServiceStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRemediationWithOptions(_ request: UpdateRemediationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRemediationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.invokeType)) {
            body["InvokeType"] = request.invokeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.params)) {
            body["Params"] = request.params ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remediationId)) {
            body["RemediationId"] = request.remediationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remediationTemplateId)) {
            body["RemediationTemplateId"] = request.remediationTemplateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remediationType)) {
            body["RemediationType"] = request.remediationType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            body["SourceType"] = request.sourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRemediation",
            "version": "2020-09-07",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRemediationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRemediation(_ request: UpdateRemediationRequest) async throws -> UpdateRemediationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateRemediationWithOptions(request as! UpdateRemediationRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
