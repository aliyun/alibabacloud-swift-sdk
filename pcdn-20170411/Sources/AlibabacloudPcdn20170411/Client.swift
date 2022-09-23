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
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("pcdn", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addConsumerWithOptions(_ request: AddConsumerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddConsumerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddConsumer",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddConsumerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addConsumer(_ request: AddConsumerRequest) async throws -> AddConsumerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addConsumerWithOptions(request as! AddConsumerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDomainWithOptions(_ request: AddDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddDomain",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addDomain(_ request: AddDomainRequest) async throws -> AddDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addDomainWithOptions(request as! AddDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addPcdnControlRuleWithOptions(_ request: AddPcdnControlRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddPcdnControlRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddPcdnControlRule",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddPcdnControlRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addPcdnControlRule(_ request: AddPcdnControlRuleRequest) async throws -> AddPcdnControlRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addPcdnControlRuleWithOptions(request as! AddPcdnControlRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDomainWithOptions(_ request: DeleteDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDomain",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
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
    public func deletePcdnControlRuleWithOptions(_ request: DeletePcdnControlRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePcdnControlRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePcdnControlRule",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePcdnControlRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePcdnControlRule(_ request: DeletePcdnControlRuleRequest) async throws -> DeletePcdnControlRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deletePcdnControlRuleWithOptions(request as! DeletePcdnControlRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disablePcdnControlRuleWithOptions(_ request: DisablePcdnControlRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisablePcdnControlRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisablePcdnControlRule",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisablePcdnControlRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disablePcdnControlRule(_ request: DisablePcdnControlRuleRequest) async throws -> DisablePcdnControlRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disablePcdnControlRuleWithOptions(request as! DisablePcdnControlRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func editPcdnControlRuleWithOptions(_ request: EditPcdnControlRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EditPcdnControlRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EditPcdnControlRule",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EditPcdnControlRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func editPcdnControlRule(_ request: EditPcdnControlRuleRequest) async throws -> EditPcdnControlRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await editPcdnControlRuleWithOptions(request as! EditPcdnControlRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enablePcdnControlRuleWithOptions(_ request: EnablePcdnControlRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnablePcdnControlRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnablePcdnControlRule",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnablePcdnControlRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enablePcdnControlRule(_ request: EnablePcdnControlRuleRequest) async throws -> EnablePcdnControlRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enablePcdnControlRuleWithOptions(request as! EnablePcdnControlRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAccessDataWithOptions(_ request: GetAccessDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAccessDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAccessData",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAccessDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAccessData(_ request: GetAccessDataRequest) async throws -> GetAccessDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAccessDataWithOptions(request as! GetAccessDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAllAppVersionsWithOptions(_ request: GetAllAppVersionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAllAppVersionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAllAppVersions",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAllAppVersionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAllAppVersions(_ request: GetAllAppVersionsRequest) async throws -> GetAllAppVersionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAllAppVersionsWithOptions(request as! GetAllAppVersionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAllIspWithOptions(_ request: GetAllIspRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAllIspResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAllIsp",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAllIspResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAllIsp(_ request: GetAllIspRequest) async throws -> GetAllIspResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAllIspWithOptions(request as! GetAllIspRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAllMarketsWithOptions(_ request: GetAllMarketsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAllMarketsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAllMarkets",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAllMarketsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAllMarkets(_ request: GetAllMarketsRequest) async throws -> GetAllMarketsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAllMarketsWithOptions(request as! GetAllMarketsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAllPlatformTypesWithOptions(_ request: GetAllPlatformTypesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAllPlatformTypesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAllPlatformTypes",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAllPlatformTypesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAllPlatformTypes(_ request: GetAllPlatformTypesRequest) async throws -> GetAllPlatformTypesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAllPlatformTypesWithOptions(request as! GetAllPlatformTypesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAllRegionsWithOptions(_ request: GetAllRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetAllRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetAllRegions",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetAllRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getAllRegions(_ request: GetAllRegionsRequest) async throws -> GetAllRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getAllRegionsWithOptions(request as! GetAllRegionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBalanceBandwidthDataWithOptions(_ request: GetBalanceBandwidthDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBalanceBandwidthDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBalanceBandwidthData",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBalanceBandwidthDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBalanceBandwidthData(_ request: GetBalanceBandwidthDataRequest) async throws -> GetBalanceBandwidthDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBalanceBandwidthDataWithOptions(request as! GetBalanceBandwidthDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBalanceTrafficDataWithOptions(_ request: GetBalanceTrafficDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBalanceTrafficDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBalanceTrafficData",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBalanceTrafficDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBalanceTrafficData(_ request: GetBalanceTrafficDataRequest) async throws -> GetBalanceTrafficDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBalanceTrafficDataWithOptions(request as! GetBalanceTrafficDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBandwidthDataWithOptions(_ request: GetBandwidthDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetBandwidthDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetBandwidthData",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetBandwidthDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getBandwidthData(_ request: GetBandwidthDataRequest) async throws -> GetBandwidthDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getBandwidthDataWithOptions(request as! GetBandwidthDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClientsRatioWithOptions(_ request: GetClientsRatioRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetClientsRatioResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetClientsRatio",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetClientsRatioResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getClientsRatio(_ request: GetClientsRatioRequest) async throws -> GetClientsRatioResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getClientsRatioWithOptions(request as! GetClientsRatioRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConsumerStatusWithOptions(_ request: GetConsumerStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetConsumerStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetConsumerStatus",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetConsumerStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConsumerStatus(_ request: GetConsumerStatusRequest) async throws -> GetConsumerStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getConsumerStatusWithOptions(request as! GetConsumerStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getControlRulesWithOptions(_ request: GetControlRulesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetControlRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetControlRules",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetControlRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getControlRules(_ request: GetControlRulesRequest) async throws -> GetControlRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getControlRulesWithOptions(request as! GetControlRulesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCoverRateDataWithOptions(_ request: GetCoverRateDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCoverRateDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCoverRateData",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCoverRateDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCoverRateData(_ request: GetCoverRateDataRequest) async throws -> GetCoverRateDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCoverRateDataWithOptions(request as! GetCoverRateDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCurrentModeWithOptions(_ request: GetCurrentModeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCurrentModeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetCurrentMode",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCurrentModeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCurrentMode(_ request: GetCurrentModeRequest) async throws -> GetCurrentModeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCurrentModeWithOptions(request as! GetCurrentModeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDomainCountWithOptions(_ request: GetDomainCountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDomainCountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDomainCount",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDomainCountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDomainCount(_ request: GetDomainCountRequest) async throws -> GetDomainCountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDomainCountWithOptions(request as! GetDomainCountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDomainsWithOptions(_ request: GetDomainsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDomainsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDomains",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDomainsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDomains(_ request: GetDomainsRequest) async throws -> GetDomainsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDomainsWithOptions(request as! GetDomainsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getExpenseSummaryWithOptions(_ request: GetExpenseSummaryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetExpenseSummaryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetExpenseSummary",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetExpenseSummaryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getExpenseSummary(_ request: GetExpenseSummaryRequest) async throws -> GetExpenseSummaryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getExpenseSummaryWithOptions(request as! GetExpenseSummaryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFeeHistoryWithOptions(_ request: GetFeeHistoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFeeHistoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFeeHistory",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFeeHistoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFeeHistory(_ request: GetFeeHistoryRequest) async throws -> GetFeeHistoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFeeHistoryWithOptions(request as! GetFeeHistoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFirstFrameDelayDataWithOptions(_ request: GetFirstFrameDelayDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFirstFrameDelayDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFirstFrameDelayData",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFirstFrameDelayDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFirstFrameDelayData(_ request: GetFirstFrameDelayDataRequest) async throws -> GetFirstFrameDelayDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFirstFrameDelayDataWithOptions(request as! GetFirstFrameDelayDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFluencyDataWithOptions(_ request: GetFluencyDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFluencyDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFluencyData",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFluencyDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFluencyData(_ request: GetFluencyDataRequest) async throws -> GetFluencyDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFluencyDataWithOptions(request as! GetFluencyDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLogsListWithOptions(_ request: GetLogsListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetLogsListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetLogsList",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetLogsListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getLogsList(_ request: GetLogsListRequest) async throws -> GetLogsListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getLogsListWithOptions(request as! GetLogsListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getShareRateDataWithOptions(_ request: GetShareRateDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetShareRateDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetShareRateData",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetShareRateDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getShareRateData(_ request: GetShareRateDataRequest) async throws -> GetShareRateDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getShareRateDataWithOptions(request as! GetShareRateDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTokenListWithOptions(_ request: GetTokenListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTokenListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTokenList",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTokenListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTokenList(_ request: GetTokenListRequest) async throws -> GetTokenListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTokenListWithOptions(request as! GetTokenListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrafficByRegionWithOptions(_ request: GetTrafficByRegionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTrafficByRegionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTrafficByRegion",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTrafficByRegionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrafficByRegion(_ request: GetTrafficByRegionRequest) async throws -> GetTrafficByRegionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTrafficByRegionWithOptions(request as! GetTrafficByRegionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrafficDataWithOptions(_ request: GetTrafficDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTrafficDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTrafficData",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTrafficDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTrafficData(_ request: GetTrafficDataRequest) async throws -> GetTrafficDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTrafficDataWithOptions(request as! GetTrafficDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startDomainWithOptions(_ request: StartDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartDomain",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startDomain(_ request: StartDomainRequest) async throws -> StartDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startDomainWithOptions(request as! StartDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopDomainWithOptions(_ request: StopDomainRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopDomainResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopDomain",
            "version": "2017-04-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopDomainResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopDomain(_ request: StopDomainRequest) async throws -> StopDomainResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopDomainWithOptions(request as! StopDomainRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
