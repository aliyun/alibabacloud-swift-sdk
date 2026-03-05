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
            "cn-hangzhou": "cloudcode.cn-hangzhou.aliyuncs.com",
            "cn-shanghai": "cloudcode.cn-shanghai.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("unimkt", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createProxyBrandUserWithOptions(_ request: CreateProxyBrandUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProxyBrandUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.brandUserNick)) {
            query["BrandUserNick"] = request.brandUserNick ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.company)) {
            query["Company"] = request.company ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactName)) {
            query["ContactName"] = request.contactName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactPhone)) {
            query["ContactPhone"] = request.contactPhone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.industry)) {
            query["Industry"] = request.industry ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyUserId)) {
            query["ProxyUserId"] = request.proxyUserId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProxyBrandUser",
            "version": "2018-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProxyBrandUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProxyBrandUser(_ request: CreateProxyBrandUserRequest) async throws -> CreateProxyBrandUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createProxyBrandUserWithOptions(request as! CreateProxyBrandUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUnionTaskWithOptions(_ tmpReq: CreateUnionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUnionTaskResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateUnionTaskShrinkRequest = CreateUnionTaskShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.mediaIdBlackList)) {
            request.mediaIdBlackListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.mediaIdBlackList, "MediaIdBlackList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.mediaIdWhiteList)) {
            request.mediaIdWhiteListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.mediaIdWhiteList, "MediaIdWhiteList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.anchorId)) {
            query["AnchorId"] = request.anchorId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.brandUserId)) {
            query["BrandUserId"] = request.brandUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.brandUserNick)) {
            query["BrandUserNick"] = request.brandUserNick ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channel)) {
            query["Channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chargePloy)) {
            query["ChargePloy"] = request.chargePloy!;
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contentId)) {
            query["ContentId"] = request.contentId!;
        }
        if (!TeaUtils.Client.isUnset(request.contentUrl)) {
            query["ContentUrl"] = request.contentUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customCreativeType)) {
            query["CustomCreativeType"] = request.customCreativeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.industryLabelBagId)) {
            query["IndustryLabelBagId"] = request.industryLabelBagId!;
        }
        if (!TeaUtils.Client.isUnset(request.mediaIdBlackListShrink)) {
            query["MediaIdBlackList"] = request.mediaIdBlackListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mediaIdWhiteListShrink)) {
            query["MediaIdWhiteList"] = request.mediaIdWhiteListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mediaIndustry)) {
            query["MediaIndustry"] = request.mediaIndustry ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optimizationSwitch)) {
            query["OptimizationSwitch"] = request.optimizationSwitch!;
        }
        if (!TeaUtils.Client.isUnset(request.proxyUserId)) {
            query["ProxyUserId"] = request.proxyUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.quota)) {
            query["Quota"] = request.quota!;
        }
        if (!TeaUtils.Client.isUnset(request.quotaDay)) {
            query["QuotaDay"] = request.quotaDay!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskBizType)) {
            query["TaskBizType"] = request.taskBizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskRuleType)) {
            query["TaskRuleType"] = request.taskRuleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUnionTask",
            "version": "2018-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUnionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUnionTask(_ request: CreateUnionTaskRequest) async throws -> CreateUnionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createUnionTaskWithOptions(request as! CreateUnionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUnionBrandWithOptions(_ request: DeleteUnionBrandRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUnionBrandResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.brandMainId)) {
            query["BrandMainId"] = request.brandMainId!;
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyUserId)) {
            query["ProxyUserId"] = request.proxyUserId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUnionBrand",
            "version": "2018-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUnionBrandResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUnionBrand(_ request: DeleteUnionBrandRequest) async throws -> DeleteUnionBrandResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteUnionBrandWithOptions(request as! DeleteUnionBrandRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func endUnionTaskWithOptions(_ request: EndUnionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EndUnionTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyUserId)) {
            query["ProxyUserId"] = request.proxyUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EndUnionTask",
            "version": "2018-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EndUnionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func endUnionTask(_ request: EndUnionTaskRequest) async throws -> EndUnionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await endUnionTaskWithOptions(request as! EndUnionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUnionMediaIndustryWithOptions(_ request: ListUnionMediaIndustryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUnionMediaIndustryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyUserId)) {
            query["ProxyUserId"] = request.proxyUserId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUnionMediaIndustry",
            "version": "2018-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUnionMediaIndustryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUnionMediaIndustry(_ request: ListUnionMediaIndustryRequest) async throws -> ListUnionMediaIndustryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUnionMediaIndustryWithOptions(request as! ListUnionMediaIndustryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAvailableBalanceWithOptions(_ request: QueryAvailableBalanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAvailableBalanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyUserId)) {
            query["ProxyUserId"] = request.proxyUserId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAvailableBalance",
            "version": "2018-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAvailableBalanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAvailableBalance(_ request: QueryAvailableBalanceRequest) async throws -> QueryAvailableBalanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAvailableBalanceWithOptions(request as! QueryAvailableBalanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryContentListWithOptions(_ request: QueryContentListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryContentListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.brandUserId)) {
            query["BrandUserId"] = request.brandUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.brandUserNick)) {
            query["BrandUserNick"] = request.brandUserNick ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyUserId)) {
            query["ProxyUserId"] = request.proxyUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskBizType)) {
            query["TaskBizType"] = request.taskBizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryContentList",
            "version": "2018-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryContentListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryContentList(_ request: QueryContentListRequest) async throws -> QueryContentListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryContentListWithOptions(request as! QueryContentListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryIndustryLabelBagWithOptions(_ request: QueryIndustryLabelBagRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryIndustryLabelBagResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryIndustryLabelBag",
            "version": "2018-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryIndustryLabelBagResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryIndustryLabelBag(_ request: QueryIndustryLabelBagRequest) async throws -> QueryIndustryLabelBagResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryIndustryLabelBagWithOptions(request as! QueryIndustryLabelBagRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTaskBizTypeWithOptions(_ request: QueryTaskBizTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTaskBizTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTaskBizType",
            "version": "2018-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTaskBizTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTaskBizType(_ request: QueryTaskBizTypeRequest) async throws -> QueryTaskBizTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTaskBizTypeWithOptions(request as! QueryTaskBizTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTaskRuleLimitWithOptions(_ request: QueryTaskRuleLimitRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTaskRuleLimitResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTaskRuleLimit",
            "version": "2018-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTaskRuleLimitResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTaskRuleLimit(_ request: QueryTaskRuleLimitRequest) async throws -> QueryTaskRuleLimitResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryTaskRuleLimitWithOptions(request as! QueryTaskRuleLimitRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUnionChannelWithOptions(_ request: QueryUnionChannelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUnionChannelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUnionChannel",
            "version": "2018-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUnionChannelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUnionChannel(_ request: QueryUnionChannelRequest) async throws -> QueryUnionChannelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryUnionChannelWithOptions(request as! QueryUnionChannelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUnionContentInfoWithOptions(_ request: QueryUnionContentInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUnionContentInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contentId)) {
            query["ContentId"] = request.contentId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyUserId)) {
            query["ProxyUserId"] = request.proxyUserId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUnionContentInfo",
            "version": "2018-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUnionContentInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUnionContentInfo(_ request: QueryUnionContentInfoRequest) async throws -> QueryUnionContentInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryUnionContentInfoWithOptions(request as! QueryUnionContentInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUnionTaskInfoWithOptions(_ request: QueryUnionTaskInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUnionTaskInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyUserId)) {
            query["ProxyUserId"] = request.proxyUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUnionTaskInfo",
            "version": "2018-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUnionTaskInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUnionTaskInfo(_ request: QueryUnionTaskInfoRequest) async throws -> QueryUnionTaskInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryUnionTaskInfoWithOptions(request as! QueryUnionTaskInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUnionTaskListWithOptions(_ request: QueryUnionTaskListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryUnionTaskListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.brandUserId)) {
            query["BrandUserId"] = request.brandUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.brandUserNick)) {
            query["BrandUserNick"] = request.brandUserNick ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            query["PageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.proxyUserId)) {
            query["ProxyUserId"] = request.proxyUserId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryUnionTaskList",
            "version": "2018-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryUnionTaskListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryUnionTaskList(_ request: QueryUnionTaskListRequest) async throws -> QueryUnionTaskListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryUnionTaskListWithOptions(request as! QueryUnionTaskListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startUnionTaskWithOptions(_ request: StartUnionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartUnionTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyUserId)) {
            query["ProxyUserId"] = request.proxyUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartUnionTask",
            "version": "2018-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartUnionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startUnionTask(_ request: StartUnionTaskRequest) async throws -> StartUnionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startUnionTaskWithOptions(request as! StartUnionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopUnionTaskWithOptions(_ request: StopUnionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopUnionTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.proxyUserId)) {
            query["ProxyUserId"] = request.proxyUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopUnionTask",
            "version": "2018-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopUnionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopUnionTask(_ request: StopUnionTaskRequest) async throws -> StopUnionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopUnionTaskWithOptions(request as! StopUnionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUnionTaskWithOptions(_ request: UpdateUnionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUnionTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channelId)) {
            query["ChannelId"] = request.channelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chargePloy)) {
            query["ChargePloy"] = request.chargePloy!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.optimizationSwitch)) {
            query["OptimizationSwitch"] = request.optimizationSwitch!;
        }
        if (!TeaUtils.Client.isUnset(request.proxyUserId)) {
            query["ProxyUserId"] = request.proxyUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.quota)) {
            query["Quota"] = request.quota!;
        }
        if (!TeaUtils.Client.isUnset(request.quotaDay)) {
            query["QuotaDay"] = request.quotaDay!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUnionTask",
            "version": "2018-12-12",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUnionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUnionTask(_ request: UpdateUnionTaskRequest) async throws -> UpdateUnionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateUnionTaskWithOptions(request as! UpdateUnionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
