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
        self._endpoint = try getEndpoint("dytnsapi", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func describeNumberHLRWithOptions(_ request: DescribeNumberHLRRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNumberHLRResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authCode)) {
            query["AuthCode"] = request.authCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            query["PhoneNumber"] = request.phoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNumberHLR",
            "version": "2023-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNumberHLRResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNumberHLR(_ request: DescribeNumberHLRRequest) async throws -> DescribeNumberHLRResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNumberHLRWithOptions(request as! DescribeNumberHLRRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNumberMccMncWithOptions(_ request: DescribeNumberMccMncRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNumberMccMncResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authCode)) {
            query["AuthCode"] = request.authCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            query["PhoneNumber"] = request.phoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNumberMccMnc",
            "version": "2023-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNumberMccMncResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNumberMccMnc(_ request: DescribeNumberMccMncRequest) async throws -> DescribeNumberMccMncResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNumberMccMncWithOptions(request as! DescribeNumberMccMncRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIdentificationResultWithOptions(_ request: GetIdentificationResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIdentificationResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authCode)) {
            query["AuthCode"] = request.authCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["SessionId"] = request.sessionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIdentificationResult",
            "version": "2023-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIdentificationResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIdentificationResult(_ request: GetIdentificationResultRequest) async throws -> GetIdentificationResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getIdentificationResultWithOptions(request as! GetIdentificationResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIdentificationSessionWithOptions(_ request: GetIdentificationSessionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIdentificationSessionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authCode)) {
            query["AuthCode"] = request.authCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIdentificationSession",
            "version": "2023-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIdentificationSessionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIdentificationSession(_ request: GetIdentificationSessionRequest) async throws -> GetIdentificationSessionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getIdentificationSessionWithOptions(request as! GetIdentificationSessionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhoneNumberIdentificationResultWithOptions(_ request: GetPhoneNumberIdentificationResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPhoneNumberIdentificationResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authCode)) {
            query["AuthCode"] = request.authCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            query["PhoneNumber"] = request.phoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["SessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionPayload)) {
            query["SessionPayload"] = request.sessionPayload ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPhoneNumberIdentificationResult",
            "version": "2023-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPhoneNumberIdentificationResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhoneNumberIdentificationResult(_ request: GetPhoneNumberIdentificationResultRequest) async throws -> GetPhoneNumberIdentificationResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPhoneNumberIdentificationResultWithOptions(request as! GetPhoneNumberIdentificationResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhoneNumberIdentificationUrlWithOptions(_ request: GetPhoneNumberIdentificationUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPhoneNumberIdentificationUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authCode)) {
            query["AuthCode"] = request.authCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ip)) {
            query["Ip"] = request.ip ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            query["PhoneNumber"] = request.phoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rememberPhoneNumber)) {
            query["RememberPhoneNumber"] = request.rememberPhoneNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPhoneNumberIdentificationUrl",
            "version": "2023-01-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPhoneNumberIdentificationUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhoneNumberIdentificationUrl(_ request: GetPhoneNumberIdentificationUrlRequest) async throws -> GetPhoneNumberIdentificationUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPhoneNumberIdentificationUrlWithOptions(request as! GetPhoneNumberIdentificationUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
