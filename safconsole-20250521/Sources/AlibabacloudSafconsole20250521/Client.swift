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
        self._endpoint = try getEndpoint("safconsole", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createCustomerModuleBasicInfoWithOptions(_ request: CreateCustomerModuleBasicInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCustomerModuleBasicInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customerModuleName)) {
            query["CustomerModuleName"] = request.customerModuleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.moduleType)) {
            query["ModuleType"] = request.moduleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storePath)) {
            query["StorePath"] = request.storePath ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCustomerModuleBasicInfo",
            "version": "2025-05-21",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCustomerModuleBasicInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCustomerModuleBasicInfo(_ request: CreateCustomerModuleBasicInfoRequest) async throws -> CreateCustomerModuleBasicInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCustomerModuleBasicInfoWithOptions(request as! CreateCustomerModuleBasicInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCustomerModuleMetaInfoWithOptions(_ request: CreateCustomerModuleMetaInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCustomerModuleMetaInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customerModuleId)) {
            query["CustomerModuleId"] = request.customerModuleId!;
        }
        if (!TeaUtils.Client.isUnset(request.featureString)) {
            query["FeatureString"] = request.featureString ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.featureTemplate)) {
            query["FeatureTemplate"] = request.featureTemplate ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCustomerModuleMetaInfo",
            "version": "2025-05-21",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCustomerModuleMetaInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCustomerModuleMetaInfo(_ request: CreateCustomerModuleMetaInfoRequest) async throws -> CreateCustomerModuleMetaInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCustomerModuleMetaInfoWithOptions(request as! CreateCustomerModuleMetaInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCustomerModuleOutputInfoWithOptions(_ request: CreateCustomerModuleOutputInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCustomerModuleOutputInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customerModuleId)) {
            query["CustomerModuleId"] = request.customerModuleId!;
        }
        if (!TeaUtils.Client.isUnset(request.finalScoreFormat)) {
            query["FinalScoreFormat"] = request.finalScoreFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.processExpression)) {
            query["ProcessExpression"] = request.processExpression ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.testFileUrl)) {
            query["TestFileUrl"] = request.testFileUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCustomerModuleOutputInfo",
            "version": "2025-05-21",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCustomerModuleOutputInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCustomerModuleOutputInfo(_ request: CreateCustomerModuleOutputInfoRequest) async throws -> CreateCustomerModuleOutputInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCustomerModuleOutputInfoWithOptions(request as! CreateCustomerModuleOutputInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModelWithOptions(_ request: DeleteModelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteModelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customerModuleId)) {
            query["CustomerModuleId"] = request.customerModuleId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteModel",
            "version": "2025-05-21",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteModelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModel(_ request: DeleteModelRequest) async throws -> DeleteModelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteModelWithOptions(request as! DeleteModelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCustomerModuleBasicInfoWithOptions(_ request: DescribeCustomerModuleBasicInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCustomerModuleBasicInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authType)) {
            query["AuthType"] = request.authType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerModuleId)) {
            query["CustomerModuleId"] = request.customerModuleId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCustomerModuleBasicInfo",
            "version": "2025-05-21",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCustomerModuleBasicInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCustomerModuleBasicInfo(_ request: DescribeCustomerModuleBasicInfoRequest) async throws -> DescribeCustomerModuleBasicInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCustomerModuleBasicInfoWithOptions(request as! DescribeCustomerModuleBasicInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
