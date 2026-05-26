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
        self._endpoint = try getEndpoint("agentretailvision", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func importProductsWithOptions(_ tmpReq: ImportProductsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ImportProductsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ImportProductsShrinkRequest = ImportProductsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extraImages)) {
            request.extraImagesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extraImages, "ExtraImages", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.mainImage)) {
            request.mainImageShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.mainImage, "MainImage", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.multiViewImages)) {
            request.multiViewImagesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.multiViewImages, "MultiViewImages", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            query["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraImagesShrink)) {
            query["ExtraImages"] = request.extraImagesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageTitle)) {
            query["ImageTitle"] = request.imageTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemUniqueId)) {
            query["ItemUniqueId"] = request.itemUniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mainImageShrink)) {
            query["MainImage"] = request.mainImageShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.multiViewImagesShrink)) {
            query["MultiViewImages"] = request.multiViewImagesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImportProducts",
            "version": "2026-05-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImportProductsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func importProducts(_ request: ImportProductsRequest) async throws -> ImportProductsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await importProductsWithOptions(request as! ImportProductsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecognitionResultWithOptions(_ request: QueryRecognitionResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRecognitionResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderUniqueId)) {
            query["OrderUniqueId"] = request.orderUniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRecognitionResult",
            "version": "2026-05-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRecognitionResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRecognitionResult(_ request: QueryRecognitionResultRequest) async throws -> QueryRecognitionResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRecognitionResultWithOptions(request as! QueryRecognitionResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeOrderWithOptions(_ tmpReq: RecognizeOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecognizeOrderResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RecognizeOrderShrinkRequest = RecognizeOrderShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.candidateItems)) {
            request.candidateItemsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.candidateItems, "CandidateItems", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.videoUrls)) {
            request.videoUrlsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.videoUrls, "VideoUrls", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callbackUrl)) {
            query["CallbackUrl"] = request.callbackUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.candidateItemsShrink)) {
            query["CandidateItems"] = request.candidateItemsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            query["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderUniqueId)) {
            query["OrderUniqueId"] = request.orderUniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoUrlsShrink)) {
            query["VideoUrls"] = request.videoUrlsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecognizeOrder",
            "version": "2026-05-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecognizeOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recognizeOrder(_ request: RecognizeOrderRequest) async throws -> RecognizeOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recognizeOrderWithOptions(request as! RecognizeOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerWebhookWithOptions(_ request: RegisterWebhookRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RegisterWebhookResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callbackSecret)) {
            query["CallbackSecret"] = request.callbackSecret ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callbackUrl)) {
            query["CallbackUrl"] = request.callbackUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RegisterWebhook",
            "version": "2026-05-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RegisterWebhookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerWebhook(_ request: RegisterWebhookRequest) async throws -> RegisterWebhookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await registerWebhookWithOptions(request as! RegisterWebhookRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProductWithOptions(_ tmpReq: UpdateProductRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProductResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateProductShrinkRequest = UpdateProductShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.extraImages)) {
            request.extraImagesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.extraImages, "ExtraImages", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.mainImage)) {
            request.mainImageShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.mainImage, "MainImage", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.multiViewImages)) {
            request.multiViewImagesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.multiViewImages, "MultiViewImages", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.deviceId)) {
            query["DeviceId"] = request.deviceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraImagesShrink)) {
            query["ExtraImages"] = request.extraImagesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageTitle)) {
            query["ImageTitle"] = request.imageTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemUniqueId)) {
            query["ItemUniqueId"] = request.itemUniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mainImageShrink)) {
            query["MainImage"] = request.mainImageShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.multiViewImagesShrink)) {
            query["MultiViewImages"] = request.multiViewImagesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.platformItemId)) {
            query["PlatformItemId"] = request.platformItemId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProduct",
            "version": "2026-05-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProductResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProduct(_ request: UpdateProductRequest) async throws -> UpdateProductResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateProductWithOptions(request as! UpdateProductRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
