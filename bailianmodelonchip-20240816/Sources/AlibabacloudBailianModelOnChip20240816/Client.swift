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
        self._endpoint = try getEndpoint("bailianmodelonchip", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func createChannelSignWithOptions(_ request: CreateChannelSignRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateChannelSignResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channelName)) {
            body["channelName"] = request.channelName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contact)) {
            body["contact"] = request.contact ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            body["phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            body["remark"] = request.remark ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateChannelSign",
            "version": "2024-08-16",
            "protocol": "HTTPS",
            "pathname": "/open/api/v1/channel/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateChannelSignResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createChannelSign(_ request: CreateChannelSignRequest) async throws -> CreateChannelSignResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createChannelSignWithOptions(request as! CreateChannelSignRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProductWithOptions(_ request: CreateProductRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProductResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.euid)) {
            body["euid"] = request.euid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productName)) {
            body["productName"] = request.productName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["tenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProduct",
            "version": "2024-08-16",
            "protocol": "HTTPS",
            "pathname": "/open/api/v1/product/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProductResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProduct(_ request: CreateProductRequest) async throws -> CreateProductResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createProductWithOptions(request as! CreateProductRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProductWithOptions(_ request: DeleteProductRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProductResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            body["productKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["tenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProduct",
            "version": "2024-08-16",
            "protocol": "HTTPS",
            "pathname": "/open/api/v1/product/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProductResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProduct(_ request: DeleteProductRequest) async throws -> DeleteProductResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteProductWithOptions(request as! DeleteProductRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deviceRegisterWithOptions(_ request: DeviceRegisterRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeviceRegisterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            query["productKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestTime)) {
            query["requestTime"] = request.requestTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signature)) {
            query["signature"] = request.signature ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.nonce)) {
            body["nonce"] = request.nonce ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeviceRegister",
            "version": "2024-08-16",
            "protocol": "HTTPS",
            "pathname": "/open/api/device/v1/register",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeviceRegisterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deviceRegister(_ request: DeviceRegisterRequest) async throws -> DeviceRegisterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deviceRegisterWithOptions(request as! DeviceRegisterRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChannelSignWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetChannelSignResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetChannelSign",
            "version": "2024-08-16",
            "protocol": "HTTPS",
            "pathname": "/open/api/v1/channel/get",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetChannelSignResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChannelSign() async throws -> GetChannelSignResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getChannelSignWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQuotaInfoWithOptions(_ request: GetQuotaInfoRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetQuotaInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.recordId)) {
            body["recordId"] = request.recordId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetQuotaInfo",
            "version": "2024-08-16",
            "protocol": "HTTPS",
            "pathname": "/open/api/v1/quota/get",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetQuotaInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQuotaInfo(_ request: GetQuotaInfoRequest) async throws -> GetQuotaInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getQuotaInfoWithOptions(request as! GetQuotaInfoRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTokenWithOptions(_ request: GetTokenRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            body["deviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nonce)) {
            body["nonce"] = request.nonce ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            body["productKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestTime)) {
            body["requestTime"] = request.requestTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.signature)) {
            body["signature"] = request.signature ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tokenKey)) {
            body["tokenKey"] = request.tokenKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tokenType)) {
            body["tokenType"] = request.tokenType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetToken",
            "version": "2024-08-16",
            "protocol": "HTTPS",
            "pathname": "/open/api/auth/v1/token/get",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getToken(_ request: GetTokenRequest) async throws -> GetTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTokenWithOptions(request as! GetTokenRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func halfLLMAppCallWithOptions(_ tmpReq: HalfLLMAppCallRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> HalfLLMAppCallResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: HalfLLMAppCallShrinkRequest = HalfLLMAppCallShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.bizParam)) {
            request.bizParamShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.bizParam, "bizParam", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.modelTypeList)) {
            request.modelTypeListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.modelTypeList, "modelTypeList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appId)) {
            body["appId"] = request.appId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bizParamShrink)) {
            body["bizParam"] = request.bizParamShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            body["deviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelTypeListShrink)) {
            body["modelTypeList"] = request.modelTypeListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            body["productKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["tenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["text"] = request.text ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HalfLLMAppCall",
            "version": "2024-08-16",
            "protocol": "HTTPS",
            "pathname": "/open/api/device/v1/half/llm/app/call",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HalfLLMAppCallResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func halfLLMAppCall(_ request: HalfLLMAppCallRequest) async throws -> HalfLLMAppCallResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await halfLLMAppCallWithOptions(request as! HalfLLMAppCallRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func halfLLMChatWithOptions(_ request: HalfLLMChatRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> HalfLLMChatResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            body["deviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableSearch)) {
            body["enableSearch"] = request.enableSearch!;
        }
        if (!TeaUtils.Client.isUnset(request.inputText)) {
            body["inputText"] = request.inputText ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            body["productKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            body["stream"] = request.stream!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HalfLLMChat",
            "version": "2024-08-16",
            "protocol": "HTTPS",
            "pathname": "/open/api/device/v1/half/llm/chat",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HalfLLMChatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func halfLLMChat(_ request: HalfLLMChatRequest) async throws -> HalfLLMChatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await halfLLMChatWithOptions(request as! HalfLLMChatRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func halfLLMImageChatWithOptions(_ request: HalfLLMImageChatRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> HalfLLMImageChatResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            body["deviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableSearch)) {
            body["enableSearch"] = request.enableSearch!;
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["imageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputText)) {
            body["inputText"] = request.inputText ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            body["productKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HalfLLMImageChat",
            "version": "2024-08-16",
            "protocol": "HTTPS",
            "pathname": "/open/api/device/v1/half/llm/image/chat",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HalfLLMImageChatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func halfLLMImageChat(_ request: HalfLLMImageChatRequest) async throws -> HalfLLMImageChatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await halfLLMImageChatWithOptions(request as! HalfLLMImageChatRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func halfLLMImageOcrWithOptions(_ request: HalfLLMImageOcrRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> HalfLLMImageOcrResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            body["deviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["imageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            body["productKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HalfLLMImageOcr",
            "version": "2024-08-16",
            "protocol": "HTTPS",
            "pathname": "/open/api/device/v1/half/llm/image/ocr",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HalfLLMImageOcrResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func halfLLMImageOcr(_ request: HalfLLMImageOcrRequest) async throws -> HalfLLMImageOcrResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await halfLLMImageOcrWithOptions(request as! HalfLLMImageOcrRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func halfLLMTTSChatWithOptions(_ request: HalfLLMTTSChatRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> HalfLLMTTSChatResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            body["deviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableSearch)) {
            body["enableSearch"] = request.enableSearch!;
        }
        if (!TeaUtils.Client.isUnset(request.format)) {
            body["format"] = request.format ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            body["model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pitchRate)) {
            body["pitchRate"] = request.pitchRate!;
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            body["productKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prompt)) {
            body["prompt"] = request.prompt ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sampleRate)) {
            body["sampleRate"] = request.sampleRate!;
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.speechRate)) {
            body["speechRate"] = request.speechRate!;
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            body["stream"] = request.stream!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["tenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.text)) {
            body["text"] = request.text ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            body["url"] = request.url ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.voice)) {
            body["voice"] = request.voice ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.volume)) {
            body["volume"] = request.volume!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HalfLLMTTSChat",
            "version": "2024-08-16",
            "protocol": "HTTPS",
            "pathname": "/open/api/device/v1/half/llm/tts/chat",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HalfLLMTTSChatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func halfLLMTTSChat(_ request: HalfLLMTTSChatRequest) async throws -> HalfLLMTTSChatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await halfLLMTTSChatWithOptions(request as! HalfLLMTTSChatRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDevicePageWithOptions(_ request: QueryDevicePageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryDevicePageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            body["deviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disableStatus)) {
            body["disableStatus"] = request.disableStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            body["pageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            body["productKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productName)) {
            body["productName"] = request.productName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryDevicePage",
            "version": "2024-08-16",
            "protocol": "HTTPS",
            "pathname": "/open/api/device/v1/page",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryDevicePageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryDevicePage(_ request: QueryDevicePageRequest) async throws -> QueryDevicePageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryDevicePageWithOptions(request as! QueryDevicePageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryProductPageWithOptions(_ request: QueryProductPageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryProductPageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modelType)) {
            body["modelType"] = request.modelType!;
        }
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            body["pageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productName)) {
            body["productName"] = request.productName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["tenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryProductPage",
            "version": "2024-08-16",
            "protocol": "HTTPS",
            "pathname": "/open/api/v1/product/page",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryProductPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryProductPage(_ request: QueryProductPageRequest) async throws -> QueryProductPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryProductPageWithOptions(request as! QueryProductPageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryProductQuotaPageWithOptions(_ request: QueryProductQuotaPageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryProductQuotaPageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageIndex)) {
            body["pageIndex"] = request.pageIndex!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            body["productKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productName)) {
            body["productName"] = request.productName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.purchaseTimeEnd)) {
            body["purchaseTimeEnd"] = request.purchaseTimeEnd ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.purchaseTimeStart)) {
            body["purchaseTimeStart"] = request.purchaseTimeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.purchaseType)) {
            body["purchaseType"] = request.purchaseType!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["tenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryProductQuotaPage",
            "version": "2024-08-16",
            "protocol": "HTTPS",
            "pathname": "/open/api/v1/product/quotaPage",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryProductQuotaPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryProductQuotaPage(_ request: QueryProductQuotaPageRequest) async throws -> QueryProductQuotaPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryProductQuotaPageWithOptions(request as! QueryProductQuotaPageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTokenUsageWithOptions(_ request: QueryTokenUsageRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryTokenUsageResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endDate)) {
            body["endDate"] = request.endDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            body["productKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startDate)) {
            body["startDate"] = request.startDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["tenantId"] = request.tenantId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryTokenUsage",
            "version": "2024-08-16",
            "protocol": "HTTPS",
            "pathname": "/open/api/v1/token/usage/query",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryTokenUsageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryTokenUsage(_ request: QueryTokenUsageRequest) async throws -> QueryTokenUsageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await queryTokenUsageWithOptions(request as! QueryTokenUsageRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeChannelSignWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeChannelSignResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokeChannelSign",
            "version": "2024-08-16",
            "protocol": "HTTPS",
            "pathname": "/open/api/v1/channel/revoke",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokeChannelSignResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeChannelSign() async throws -> RevokeChannelSignResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await revokeChannelSignWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDeviceStatusWithOptions(_ request: UpdateDeviceStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateDeviceStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceName)) {
            body["deviceName"] = request.deviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            body["productKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            body["remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateDeviceStatus",
            "version": "2024-08-16",
            "protocol": "HTTPS",
            "pathname": "/open/api/device/v1/update/status",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateDeviceStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateDeviceStatus(_ request: UpdateDeviceStatusRequest) async throws -> UpdateDeviceStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateDeviceStatusWithOptions(request as! UpdateDeviceStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateImageQuotaWithOptions(_ request: UpdateImageQuotaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateImageQuotaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.duration)) {
            body["duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.durationType)) {
            body["durationType"] = request.durationType!;
        }
        if (!TeaUtils.Client.isUnset(request.imageCount)) {
            body["imageCount"] = request.imageCount!;
        }
        if (!TeaUtils.Client.isUnset(request.licenseCount)) {
            body["licenseCount"] = request.licenseCount!;
        }
        if (!TeaUtils.Client.isUnset(request.packageType)) {
            body["packageType"] = request.packageType!;
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            body["productKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.purchaseType)) {
            body["purchaseType"] = request.purchaseType!;
        }
        if (!TeaUtils.Client.isUnset(request.recordId)) {
            body["recordId"] = request.recordId!;
        }
        if (!TeaUtils.Client.isUnset(request.settlementAmount)) {
            body["settlementAmount"] = request.settlementAmount!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["tenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.unitPrice)) {
            body["unitPrice"] = request.unitPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateImageQuota",
            "version": "2024-08-16",
            "protocol": "HTTPS",
            "pathname": "/open/api/v1/quota/update/image",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateImageQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateImageQuota(_ request: UpdateImageQuotaRequest) async throws -> UpdateImageQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateImageQuotaWithOptions(request as! UpdateImageQuotaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateQuotaWithOptions(_ request: UpdateQuotaRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateQuotaResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.duration)) {
            body["duration"] = request.duration!;
        }
        if (!TeaUtils.Client.isUnset(request.durationType)) {
            body["durationType"] = request.durationType!;
        }
        if (!TeaUtils.Client.isUnset(request.licenseCount)) {
            body["licenseCount"] = request.licenseCount!;
        }
        if (!TeaUtils.Client.isUnset(request.maxQps)) {
            body["maxQps"] = request.maxQps!;
        }
        if (!TeaUtils.Client.isUnset(request.packageType)) {
            body["packageType"] = request.packageType!;
        }
        if (!TeaUtils.Client.isUnset(request.productKey)) {
            body["productKey"] = request.productKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.purchaseType)) {
            body["purchaseType"] = request.purchaseType!;
        }
        if (!TeaUtils.Client.isUnset(request.recordId)) {
            body["recordId"] = request.recordId!;
        }
        if (!TeaUtils.Client.isUnset(request.settlementAmount)) {
            body["settlementAmount"] = request.settlementAmount!;
        }
        if (!TeaUtils.Client.isUnset(request.tenantId)) {
            body["tenantId"] = request.tenantId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tokenNumber)) {
            body["tokenNumber"] = request.tokenNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.unitPrice)) {
            body["unitPrice"] = request.unitPrice!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateQuota",
            "version": "2024-08-16",
            "protocol": "HTTPS",
            "pathname": "/open/api/v1/quota/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateQuotaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateQuota(_ request: UpdateQuotaRequest) async throws -> UpdateQuotaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateQuotaWithOptions(request as! UpdateQuotaRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
