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
        self._endpoint = try getEndpoint("resourcecenter", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func disableMultiAccountResourceCenterWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DisableMultiAccountResourceCenterResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableMultiAccountResourceCenter",
            "version": "2022-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableMultiAccountResourceCenterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableMultiAccountResourceCenter() async throws -> DisableMultiAccountResourceCenterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableMultiAccountResourceCenterWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableResourceCenterWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> DisableResourceCenterResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableResourceCenter",
            "version": "2022-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableResourceCenterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableResourceCenter() async throws -> DisableResourceCenterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableResourceCenterWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableMultiAccountResourceCenterWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> EnableMultiAccountResourceCenterResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableMultiAccountResourceCenter",
            "version": "2022-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableMultiAccountResourceCenterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableMultiAccountResourceCenter() async throws -> EnableMultiAccountResourceCenterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableMultiAccountResourceCenterWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableResourceCenterWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> EnableResourceCenterResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableResourceCenter",
            "version": "2022-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableResourceCenterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableResourceCenter() async throws -> EnableResourceCenterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableResourceCenterWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMultiAccountResourceCenterServiceStatusWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> GetMultiAccountResourceCenterServiceStatusResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMultiAccountResourceCenterServiceStatus",
            "version": "2022-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMultiAccountResourceCenterServiceStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMultiAccountResourceCenterServiceStatus() async throws -> GetMultiAccountResourceCenterServiceStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMultiAccountResourceCenterServiceStatusWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMultiAccountResourceConfigurationWithOptions(_ request: GetMultiAccountResourceConfigurationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMultiAccountResourceConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceRegionId)) {
            query["ResourceRegionId"] = request.resourceRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMultiAccountResourceConfiguration",
            "version": "2022-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMultiAccountResourceConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMultiAccountResourceConfiguration(_ request: GetMultiAccountResourceConfigurationRequest) async throws -> GetMultiAccountResourceConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMultiAccountResourceConfigurationWithOptions(request as! GetMultiAccountResourceConfigurationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceCenterServiceStatusWithOptions(_ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceCenterServiceStatusResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([:])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceCenterServiceStatus",
            "version": "2022-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceCenterServiceStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceCenterServiceStatus() async throws -> GetResourceCenterServiceStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourceCenterServiceStatusWithOptions(runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceConfigurationWithOptions(_ request: GetResourceConfigurationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceConfigurationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceRegionId)) {
            query["ResourceRegionId"] = request.resourceRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceConfiguration",
            "version": "2022-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceConfigurationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceConfiguration(_ request: GetResourceConfigurationRequest) async throws -> GetResourceConfigurationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourceConfigurationWithOptions(request as! GetResourceConfigurationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceCountsWithOptions(_ request: GetResourceCountsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceCountsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filter)) {
            query["Filter"] = request.filter ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.groupByKey)) {
            query["GroupByKey"] = request.groupByKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceCounts",
            "version": "2022-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceCountsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceCounts(_ request: GetResourceCountsRequest) async throws -> GetResourceCountsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getResourceCountsWithOptions(request as! GetResourceCountsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMultiAccountResourceGroupsWithOptions(_ request: ListMultiAccountResourceGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMultiAccountResourceGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["AccountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupIds)) {
            query["ResourceGroupIds"] = request.resourceGroupIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMultiAccountResourceGroups",
            "version": "2022-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMultiAccountResourceGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMultiAccountResourceGroups(_ request: ListMultiAccountResourceGroupsRequest) async throws -> ListMultiAccountResourceGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMultiAccountResourceGroupsWithOptions(request as! ListMultiAccountResourceGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMultiAccountTagKeysWithOptions(_ request: ListMultiAccountTagKeysRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMultiAccountTagKeysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.matchType)) {
            query["MatchType"] = request.matchType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            query["Scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKey)) {
            query["TagKey"] = request.tagKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMultiAccountTagKeys",
            "version": "2022-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMultiAccountTagKeysResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMultiAccountTagKeys(_ request: ListMultiAccountTagKeysRequest) async throws -> ListMultiAccountTagKeysResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMultiAccountTagKeysWithOptions(request as! ListMultiAccountTagKeysRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMultiAccountTagValuesWithOptions(_ request: ListMultiAccountTagValuesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMultiAccountTagValuesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.matchType)) {
            query["MatchType"] = request.matchType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            query["Scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKey)) {
            query["TagKey"] = request.tagKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagValue)) {
            query["TagValue"] = request.tagValue ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMultiAccountTagValues",
            "version": "2022-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMultiAccountTagValuesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMultiAccountTagValues(_ request: ListMultiAccountTagValuesRequest) async throws -> ListMultiAccountTagValuesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listMultiAccountTagValuesWithOptions(request as! ListMultiAccountTagValuesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceTypesWithOptions(_ request: ListResourceTypesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListResourceTypesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            query["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.query)) {
            query["Query"] = request.query ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListResourceTypes",
            "version": "2022-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListResourceTypesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listResourceTypes(_ request: ListResourceTypesRequest) async throws -> ListResourceTypesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listResourceTypesWithOptions(request as! ListResourceTypesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagKeysWithOptions(_ request: ListTagKeysRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagKeysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.matchType)) {
            query["MatchType"] = request.matchType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKey)) {
            query["TagKey"] = request.tagKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagKeys",
            "version": "2022-12-01",
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
    public func listTagValuesWithOptions(_ request: ListTagValuesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagValuesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.matchType)) {
            query["MatchType"] = request.matchType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKey)) {
            query["TagKey"] = request.tagKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagValue)) {
            query["TagValue"] = request.tagValue ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagValues",
            "version": "2022-12-01",
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
    public func searchMultiAccountResourcesWithOptions(_ request: SearchMultiAccountResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchMultiAccountResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filter)) {
            query["Filter"] = request.filter ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            query["Scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortCriterion)) {
            query["SortCriterion"] = request.sortCriterion!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchMultiAccountResources",
            "version": "2022-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchMultiAccountResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchMultiAccountResources(_ request: SearchMultiAccountResourcesRequest) async throws -> SearchMultiAccountResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchMultiAccountResourcesWithOptions(request as! SearchMultiAccountResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchResourcesWithOptions(_ request: SearchResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SearchResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filter)) {
            query["Filter"] = request.filter ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortCriterion)) {
            query["SortCriterion"] = request.sortCriterion!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SearchResources",
            "version": "2022-12-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SearchResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func searchResources(_ request: SearchResourcesRequest) async throws -> SearchResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await searchResourcesWithOptions(request as! SearchResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
