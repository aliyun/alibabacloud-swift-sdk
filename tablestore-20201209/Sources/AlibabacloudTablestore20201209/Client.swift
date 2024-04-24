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
        self._endpoint = try getEndpoint("tablestore", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func changeResourceGroupWithOptions(_ request: ChangeResourceGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeResourceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.newResourceGroupId)) {
            body["NewResourceGroupId"] = request.newResourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            body["ResourceId"] = request.resourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeResourceGroup",
            "version": "2020-12-09",
            "protocol": "HTTPS",
            "pathname": "/v2/openapi/changeresourcegroup",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeResourceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeResourceGroup(_ request: ChangeResourceGroupRequest) async throws -> ChangeResourceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await changeResourceGroupWithOptions(request as! ChangeResourceGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstanceWithOptions(_ request: CreateInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clusterType)) {
            body["ClusterType"] = request.clusterType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disableReplication)) {
            body["DisableReplication"] = request.disableReplication!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceDescription)) {
            body["InstanceDescription"] = request.instanceDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.network)) {
            body["Network"] = request.network ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkSourceACL)) {
            body["NetworkSourceACL"] = request.networkSourceACL ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.networkTypeACL)) {
            body["NetworkTypeACL"] = request.networkTypeACL ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.policy)) {
            body["Policy"] = request.policy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            body["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["Tags"] = request.tags ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateInstance",
            "version": "2020-12-09",
            "protocol": "HTTPS",
            "pathname": "/v2/openapi/createinstance",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createInstance(_ request: CreateInstanceRequest) async throws -> CreateInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createInstanceWithOptions(request as! CreateInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstanceWithOptions(_ request: DeleteInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["InstanceName"] = request.instanceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteInstance",
            "version": "2020-12-09",
            "protocol": "HTTPS",
            "pathname": "/v2/openapi/deleteinstance",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteInstance(_ request: DeleteInstanceRequest) async throws -> DeleteInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteInstanceWithOptions(request as! DeleteInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ request: DescribeRegionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2020-12-09",
            "protocol": "HTTPS",
            "pathname": "/region/DescribeRegions",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegions(_ request: DescribeRegionsRequest) async throws -> DescribeRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await describeRegionsWithOptions(request as! DescribeRegionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstanceWithOptions(_ request: GetInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetInstance",
            "version": "2020-12-09",
            "protocol": "HTTPS",
            "pathname": "/v2/openapi/getinstance",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getInstance(_ request: GetInstanceRequest) async throws -> GetInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getInstanceWithOptions(request as! GetInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstancesWithOptions(_ request: ListInstancesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListInstancesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            query["InstanceName"] = request.instanceName ?? "";
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
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListInstances",
            "version": "2020-12-09",
            "protocol": "HTTPS",
            "pathname": "/v2/openapi/listinstances",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListInstancesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listInstances(_ request: ListInstancesRequest) async throws -> ListInstancesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listInstancesWithOptions(request as! ListInstancesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResourcesWithOptions(_ tmpReq: ListTagResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagResourcesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListTagResourcesShrinkRequest = ListTagResourcesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.resourceIds)) {
            request.resourceIdsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.resourceIds, "ResourceIds", "simple")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tags)) {
            request.tagsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tags, "Tags", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceIdsShrink)) {
            query["ResourceIds"] = request.resourceIdsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsShrink)) {
            query["Tags"] = request.tagsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagResources",
            "version": "2020-12-09",
            "protocol": "HTTPS",
            "pathname": "/v2/openapi/listtagresources",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResources(_ request: ListTagResourcesRequest) async throws -> ListTagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTagResourcesWithOptions(request as! ListTagResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesWithOptions(_ request: TagResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            body["ResourceIds"] = request.resourceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            body["Tags"] = request.tags ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagResources",
            "version": "2020-12-09",
            "protocol": "HTTPS",
            "pathname": "/v2/openapi/tagresources",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResources(_ request: TagResourcesRequest) async throws -> TagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await tagResourcesWithOptions(request as! TagResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResourcesWithOptions(_ request: UntagResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UntagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.all)) {
            body["All"] = request.all!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceIds)) {
            body["ResourceIds"] = request.resourceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            body["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKeys)) {
            body["TagKeys"] = request.tagKeys ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UntagResources",
            "version": "2020-12-09",
            "protocol": "HTTPS",
            "pathname": "/v2/openapi/untagresources",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UntagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResources(_ request: UntagResourcesRequest) async throws -> UntagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await untagResourcesWithOptions(request as! UntagResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstanceWithOptions(_ request: UpdateInstanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliasName)) {
            body["AliasName"] = request.aliasName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceDescription)) {
            body["InstanceDescription"] = request.instanceDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceName)) {
            body["InstanceName"] = request.instanceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.network)) {
            body["Network"] = request.network ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.networkSourceACL)) {
            body["NetworkSourceACL"] = request.networkSourceACL ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.networkTypeACL)) {
            body["NetworkTypeACL"] = request.networkTypeACL ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateInstance",
            "version": "2020-12-09",
            "protocol": "HTTPS",
            "pathname": "/v2/openapi/updateinstance",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateInstance(_ request: UpdateInstanceRequest) async throws -> UpdateInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateInstanceWithOptions(request as! UpdateInstanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
