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
            "ap-northeast-2-pop": "acc.aliyuncs.com",
            "ap-south-1": "acc.aliyuncs.com",
            "ap-southeast-2": "acc.aliyuncs.com",
            "cn-beijing-finance-1": "acc.aliyuncs.com",
            "cn-beijing-finance-pop": "acc.aliyuncs.com",
            "cn-beijing-gov-1": "acc.aliyuncs.com",
            "cn-beijing-nu16-b01": "acc.aliyuncs.com",
            "cn-edge-1": "acc.aliyuncs.com",
            "cn-fujian": "acc.aliyuncs.com",
            "cn-haidian-cm12-c01": "acc.aliyuncs.com",
            "cn-hangzhou-bj-b01": "acc.aliyuncs.com",
            "cn-hangzhou-finance": "acc.aliyuncs.com",
            "cn-hangzhou-internal-prod-1": "acc.aliyuncs.com",
            "cn-hangzhou-internal-test-1": "acc.aliyuncs.com",
            "cn-hangzhou-internal-test-2": "acc.aliyuncs.com",
            "cn-hangzhou-internal-test-3": "acc.aliyuncs.com",
            "cn-hangzhou-test-306": "acc.aliyuncs.com",
            "cn-hongkong-finance-pop": "acc.aliyuncs.com",
            "cn-huhehaote-nebula-1": "acc.aliyuncs.com",
            "cn-qingdao-nebula": "acc.aliyuncs.com",
            "cn-shanghai-et15-b01": "acc.aliyuncs.com",
            "cn-shanghai-et2-b01": "acc.aliyuncs.com",
            "cn-shanghai-inner": "acc.aliyuncs.com",
            "cn-shanghai-internal-test-1": "acc.aliyuncs.com",
            "cn-shenzhen-finance-1": "acc.aliyuncs.com",
            "cn-shenzhen-inner": "acc.aliyuncs.com",
            "cn-shenzhen-st4-d01": "acc.aliyuncs.com",
            "cn-shenzhen-su18-b01": "acc.aliyuncs.com",
            "cn-wuhan": "acc.aliyuncs.com",
            "cn-yushanfang": "acc.aliyuncs.com",
            "cn-zhangbei": "acc.aliyuncs.com",
            "cn-zhangbei-na61-b01": "acc.aliyuncs.com",
            "cn-zhangjiakou-na62-a01": "acc.aliyuncs.com",
            "cn-zhengzhou-nebula-1": "acc.aliyuncs.com",
            "eu-west-1-oxs": "acc.aliyuncs.com",
            "rus-west-1-pop": "acc.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("acc", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createImageCacheWithOptions(_ tmpReq: CreateImageCacheRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateImageCacheResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateImageCacheShrinkRequest = CreateImageCacheShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.networkConfig)) {
            request.networkConfigShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.networkConfig, "NetworkConfig", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acrRegistryInfos)) {
            query["AcrRegistryInfos"] = request.acrRegistryInfos ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageCacheName)) {
            query["ImageCacheName"] = request.imageCacheName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageRegistryCredentials)) {
            query["ImageRegistryCredentials"] = request.imageRegistryCredentials ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.images)) {
            query["Images"] = request.images ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.networkConfigShrink)) {
            query["NetworkConfig"] = request.networkConfigShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateImageCache",
            "version": "2024-04-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateImageCacheResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createImageCache(_ request: CreateImageCacheRequest) async throws -> CreateImageCacheResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createImageCacheWithOptions(request as! CreateImageCacheRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteImageCacheWithOptions(_ request: DeleteImageCacheRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteImageCacheResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.force)) {
            query["Force"] = request.force!;
        }
        if (!TeaUtils.Client.isUnset(request.imageCacheId)) {
            query["ImageCacheId"] = request.imageCacheId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteImageCache",
            "version": "2024-04-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteImageCacheResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteImageCache(_ request: DeleteImageCacheRequest) async throws -> DeleteImageCacheResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteImageCacheWithOptions(request as! DeleteImageCacheRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageCacheWithOptions(_ request: GetImageCacheRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetImageCacheResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageCacheId)) {
            query["ImageCacheId"] = request.imageCacheId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetImageCache",
            "version": "2024-04-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetImageCacheResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageCache(_ request: GetImageCacheRequest) async throws -> GetImageCacheResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getImageCacheWithOptions(request as! GetImageCacheRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listImageCachesWithOptions(_ request: ListImageCachesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListImageCachesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageCacheName)) {
            query["ImageCacheName"] = request.imageCacheName ?? "";
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
        if (!TeaUtils.Client.isUnset(request.resourceGroupId)) {
            query["ResourceGroupId"] = request.resourceGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tags)) {
            query["Tags"] = request.tags ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListImageCaches",
            "version": "2024-04-02",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListImageCachesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listImageCaches(_ request: ListImageCachesRequest) async throws -> ListImageCachesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listImageCachesWithOptions(request as! ListImageCachesRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
