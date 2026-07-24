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
            "cn-beijing": "aidge.cn-beijing.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("aidge", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func assetOptimizeLiteWithOptions(_ request: AssetOptimizeLiteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AssetOptimizeLiteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.glossary)) {
            query["Glossary"] = request.glossary ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includingProductArea)) {
            query["IncludingProductArea"] = request.includingProductArea!;
        }
        if (!TeaUtils.Client.isUnset(request.needTrans)) {
            query["NeedTrans"] = request.needTrans!;
        }
        if (!TeaUtils.Client.isUnset(request.productUrl)) {
            query["ProductUrl"] = request.productUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            query["SourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourcePlatform)) {
            query["SourcePlatform"] = request.sourcePlatform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            query["TargetLanguage"] = request.targetLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetPlatform)) {
            query["TargetPlatform"] = request.targetPlatform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.translatingBrandInTheProduct)) {
            query["TranslatingBrandInTheProduct"] = request.translatingBrandInTheProduct!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AssetOptimizeLite",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AssetOptimizeLiteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assetOptimizeLite(_ request: AssetOptimizeLiteRequest) async throws -> AssetOptimizeLiteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await assetOptimizeLiteWithOptions(request as! AssetOptimizeLiteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assetOptimizeProWithOptions(_ tmpReq: AssetOptimizeProRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AssetOptimizeProResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AssetOptimizeProShrinkRequest = AssetOptimizeProShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.columnNameList)) {
            request.columnNameListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.columnNameList, "ColumnNameList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.columnNameListShrink)) {
            query["ColumnNameList"] = request.columnNameListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.glossary)) {
            query["Glossary"] = request.glossary ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includingProductArea)) {
            query["IncludingProductArea"] = request.includingProductArea!;
        }
        if (!TeaUtils.Client.isUnset(request.languageModel)) {
            query["LanguageModel"] = request.languageModel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needTrans)) {
            query["NeedTrans"] = request.needTrans!;
        }
        if (!TeaUtils.Client.isUnset(request.productUrl)) {
            query["ProductUrl"] = request.productUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            query["SourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourcePlatform)) {
            query["SourcePlatform"] = request.sourcePlatform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            query["TargetLanguage"] = request.targetLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetPlatform)) {
            query["TargetPlatform"] = request.targetPlatform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.threshold)) {
            query["Threshold"] = request.threshold!;
        }
        if (!TeaUtils.Client.isUnset(request.translatingBrandInTheProduct)) {
            query["TranslatingBrandInTheProduct"] = request.translatingBrandInTheProduct!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AssetOptimizePro",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AssetOptimizeProResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func assetOptimizePro(_ request: AssetOptimizeProRequest) async throws -> AssetOptimizeProResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await assetOptimizeProWithOptions(request as! AssetOptimizeProRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func categoryAttributeMatchWithOptions(_ tmpReq: CategoryAttributeMatchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CategoryAttributeMatchResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CategoryAttributeMatchShrinkRequest = CategoryAttributeMatchShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.imageUrl)) {
            request.imageUrlShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.imageUrl, "ImageUrl", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrlShrink)) {
            body["ImageUrl"] = request.imageUrlShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemSpec)) {
            body["ItemSpec"] = request.itemSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sku)) {
            body["Sku"] = request.sku ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceCategory)) {
            body["SourceCategory"] = request.sourceCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourcePlatform)) {
            body["SourcePlatform"] = request.sourcePlatform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetPlatform)) {
            body["TargetPlatform"] = request.targetPlatform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CategoryAttributeMatch",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CategoryAttributeMatchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func categoryAttributeMatch(_ request: CategoryAttributeMatchRequest) async throws -> CategoryAttributeMatchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await categoryAttributeMatchWithOptions(request as! CategoryAttributeMatchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func categoryMatchWithOptions(_ request: CategoryMatchRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CategoryMatchResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.itemSpec)) {
            query["ItemSpec"] = request.itemSpec ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sku)) {
            query["Sku"] = request.sku ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceCategory)) {
            query["SourceCategory"] = request.sourceCategory ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourcePlatform)) {
            query["SourcePlatform"] = request.sourcePlatform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetPlatform)) {
            query["TargetPlatform"] = request.targetPlatform ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            query["Title"] = request.title ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CategoryMatch",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CategoryMatchResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func categoryMatch(_ request: CategoryMatchRequest) async throws -> CategoryMatchResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await categoryMatchWithOptions(request as! CategoryMatchRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func documentTranslateWithOptions(_ request: DocumentTranslateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DocumentTranslateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileType)) {
            query["FileType"] = request.fileType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.glossary)) {
            query["Glossary"] = request.glossary ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            query["TargetLanguage"] = request.targetLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.url)) {
            query["Url"] = request.url ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DocumentTranslate",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DocumentTranslateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func documentTranslate(_ request: DocumentTranslateRequest) async throws -> DocumentTranslateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await documentTranslateWithOptions(request as! DocumentTranslateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func imageCroppingWithOptions(_ request: ImageCroppingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ImageCroppingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetHeight)) {
            query["TargetHeight"] = request.targetHeight!;
        }
        if (!TeaUtils.Client.isUnset(request.targetWidth)) {
            query["TargetWidth"] = request.targetWidth!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImageCropping",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImageCroppingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func imageCropping(_ request: ImageCroppingRequest) async throws -> ImageCroppingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await imageCroppingWithOptions(request as! ImageCroppingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func imageMattingWithOptions(_ request: ImageMattingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ImageMattingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backGroundType)) {
            query["BackGroundType"] = request.backGroundType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bgColor)) {
            query["BgColor"] = request.bgColor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetHeight)) {
            query["TargetHeight"] = request.targetHeight!;
        }
        if (!TeaUtils.Client.isUnset(request.targetWidth)) {
            query["TargetWidth"] = request.targetWidth!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImageMatting",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImageMattingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func imageMatting(_ request: ImageMattingRequest) async throws -> ImageMattingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await imageMattingWithOptions(request as! ImageMattingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func imageRecognitionWithOptions(_ tmpReq: ImageRecognitionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ImageRecognitionResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ImageRecognitionShrinkRequest = ImageRecognitionShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.nonObjectDetectElements)) {
            request.nonObjectDetectElementsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.nonObjectDetectElements, "NonObjectDetectElements", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.objectDetectElements)) {
            request.objectDetectElementsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.objectDetectElements, "ObjectDetectElements", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nonObjectDetectElementsShrink)) {
            query["NonObjectDetectElements"] = request.nonObjectDetectElementsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectDetectElementsShrink)) {
            query["ObjectDetectElements"] = request.objectDetectElementsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.returnBorderPixel)) {
            query["ReturnBorderPixel"] = request.returnBorderPixel!;
        }
        if (!TeaUtils.Client.isUnset(request.returnCharacter)) {
            query["ReturnCharacter"] = request.returnCharacter!;
        }
        if (!TeaUtils.Client.isUnset(request.returnCharacterProp)) {
            query["ReturnCharacterProp"] = request.returnCharacterProp!;
        }
        if (!TeaUtils.Client.isUnset(request.returnProductNum)) {
            query["ReturnProductNum"] = request.returnProductNum!;
        }
        if (!TeaUtils.Client.isUnset(request.returnProductProp)) {
            query["ReturnProductProp"] = request.returnProductProp!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImageRecognition",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImageRecognitionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func imageRecognition(_ request: ImageRecognitionRequest) async throws -> ImageRecognitionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await imageRecognitionWithOptions(request as! ImageRecognitionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func imageRemovalProWithOptions(_ request: ImageRemovalProRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ImageRemovalProResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.async)) {
            query["Async"] = request.async!;
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImageRemovalPro",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImageRemovalProResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func imageRemovalPro(_ request: ImageRemovalProRequest) async throws -> ImageRemovalProResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await imageRemovalProWithOptions(request as! ImageRemovalProRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func imageRemoveWithOptions(_ tmpReq: ImageRemoveRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ImageRemoveResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ImageRemoveShrinkRequest = ImageRemoveShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.nonObjectRemoveElements)) {
            request.nonObjectRemoveElementsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.nonObjectRemoveElements, "NonObjectRemoveElements", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.objectRemoveElements)) {
            request.objectRemoveElementsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.objectRemoveElements, "ObjectRemoveElements", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mask)) {
            query["Mask"] = request.mask ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nonObjectRemoveElementsShrink)) {
            query["NonObjectRemoveElements"] = request.nonObjectRemoveElementsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectRemoveElementsShrink)) {
            query["ObjectRemoveElements"] = request.objectRemoveElementsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImageRemove",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImageRemoveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func imageRemove(_ request: ImageRemoveRequest) async throws -> ImageRemoveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await imageRemoveWithOptions(request as! ImageRemoveRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func imageTranslationProWithOptions(_ request: ImageTranslationProRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ImageTranslationProResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.async)) {
            body["Async"] = request.async!;
        }
        if (!TeaUtils.Client.isUnset(request.glossary)) {
            body["Glossary"] = request.glossary ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            body["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includingProductArea)) {
            body["IncludingProductArea"] = request.includingProductArea!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["SourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["TargetLanguage"] = request.targetLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.translatingBrandInTheProduct)) {
            body["TranslatingBrandInTheProduct"] = request.translatingBrandInTheProduct!;
        }
        if (!TeaUtils.Client.isUnset(request.useImageEditor)) {
            body["UseImageEditor"] = request.useImageEditor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImageTranslationPro",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImageTranslationProResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func imageTranslationPro(_ request: ImageTranslationProRequest) async throws -> ImageTranslationProResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await imageTranslationProWithOptions(request as! ImageTranslationProRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func imageTranslationStandardWithOptions(_ request: ImageTranslationStandardRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ImageTranslationStandardResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.glossary)) {
            query["Glossary"] = request.glossary ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includingProductArea)) {
            query["IncludingProductArea"] = request.includingProductArea!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            query["SourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            query["TargetLanguage"] = request.targetLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.translatingBrandInTheProduct)) {
            query["TranslatingBrandInTheProduct"] = request.translatingBrandInTheProduct!;
        }
        if (!TeaUtils.Client.isUnset(request.useImageEditor)) {
            query["UseImageEditor"] = request.useImageEditor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ImageTranslationStandard",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ImageTranslationStandardResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func imageTranslationStandard(_ request: ImageTranslationStandardRequest) async throws -> ImageTranslationStandardResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await imageTranslationStandardWithOptions(request as! ImageTranslationStandardRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func languageDetectWithOptions(_ request: LanguageDetectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> LanguageDetectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sourceText)) {
            query["SourceText"] = request.sourceText ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LanguageDetect",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LanguageDetectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func languageDetect(_ request: LanguageDetectRequest) async throws -> LanguageDetectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await languageDetectWithOptions(request as! LanguageDetectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func materialInspectionWithOptions(_ request: MaterialInspectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MaterialInspectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageRefer)) {
            query["ImageRefer"] = request.imageRefer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reqId)) {
            query["ReqId"] = request.reqId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rules)) {
            query["Rules"] = request.rules ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MaterialInspection",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MaterialInspectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func materialInspection(_ request: MaterialInspectionRequest) async throws -> MaterialInspectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await materialInspectionWithOptions(request as! MaterialInspectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func merchandisePlacementDetectionWithOptions(_ request: MerchandisePlacementDetectionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MerchandisePlacementDetectionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.apiId)) {
            query["ApiId"] = request.apiId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ragId)) {
            query["RagId"] = request.ragId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MerchandisePlacementDetection",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MerchandisePlacementDetectionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func merchandisePlacementDetection(_ request: MerchandisePlacementDetectionRequest) async throws -> MerchandisePlacementDetectionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await merchandisePlacementDetectionWithOptions(request as! MerchandisePlacementDetectionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func packageWeightSizeCheckWithOptions(_ request: PackageWeightSizeCheckRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PackageWeightSizeCheckResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.annotatedImageUrl)) {
            query["AnnotatedImageUrl"] = request.annotatedImageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rawImageUrl)) {
            query["RawImageUrl"] = request.rawImageUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PackageWeightSizeCheck",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PackageWeightSizeCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func packageWeightSizeCheck(_ request: PackageWeightSizeCheckRequest) async throws -> PackageWeightSizeCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await packageWeightSizeCheckWithOptions(request as! PackageWeightSizeCheckRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAsyncTaskResultWithOptions(_ request: QueryAsyncTaskResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryAsyncTaskResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryAsyncTaskResult",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryAsyncTaskResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryAsyncTaskResult(_ request: QueryAsyncTaskResultRequest) async throws -> QueryAsyncTaskResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryAsyncTaskResultWithOptions(request as! QueryAsyncTaskResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sizeChartDetectWithOptions(_ request: SizeChartDetectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SizeChartDetectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.threshold)) {
            query["Threshold"] = request.threshold!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SizeChartDetect",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SizeChartDetectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sizeChartDetect(_ request: SizeChartDetectRequest) async throws -> SizeChartDetectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sizeChartDetectWithOptions(request as! SizeChartDetectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sizeChartExtractWithOptions(_ tmpReq: SizeChartExtractRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SizeChartExtractResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SizeChartExtractShrinkRequest = SizeChartExtractShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.columnNameList)) {
            request.columnNameListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.columnNameList, "ColumnNameList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.columnNameListShrink)) {
            query["ColumnNameList"] = request.columnNameListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.languageModel)) {
            query["LanguageModel"] = request.languageModel ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SizeChartExtract",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SizeChartExtractResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sizeChartExtract(_ request: SizeChartExtractRequest) async throws -> SizeChartExtractResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sizeChartExtractWithOptions(request as! SizeChartExtractRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func textCorrectWithOptions(_ request: TextCorrectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TextCorrectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            query["SourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceText)) {
            query["SourceText"] = request.sourceText ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TextCorrect",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TextCorrectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func textCorrect(_ request: TextCorrectRequest) async throws -> TextCorrectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await textCorrectWithOptions(request as! TextCorrectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func textTranslateWithOptions(_ tmpReq: TextTranslateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TextTranslateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TextTranslateShrinkRequest = TextTranslateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.sourceTextList)) {
            request.sourceTextListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sourceTextList, "SourceTextList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizName)) {
            body["BizName"] = request.bizName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.formatType)) {
            body["FormatType"] = request.formatType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.glossary)) {
            body["Glossary"] = request.glossary ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["SourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceTextListShrink)) {
            body["SourceTextList"] = request.sourceTextListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["TargetLanguage"] = request.targetLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.translateScene)) {
            body["TranslateScene"] = request.translateScene ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TextTranslate",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TextTranslateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func textTranslate(_ request: TextTranslateRequest) async throws -> TextTranslateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await textTranslateWithOptions(request as! TextTranslateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func videoTranslationWithOptions(_ tmpReq: VideoTranslationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VideoTranslationResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: VideoTranslationShrinkRequest = VideoTranslationShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.capabilities)) {
            request.capabilitiesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.capabilities, "Capabilities", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.capabilitiesShrink)) {
            body["Capabilities"] = request.capabilitiesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            body["SourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            body["TargetLanguage"] = request.targetLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoUrl)) {
            body["VideoUrl"] = request.videoUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VideoTranslation",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VideoTranslationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func videoTranslation(_ request: VideoTranslationRequest) async throws -> VideoTranslationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await videoTranslationWithOptions(request as! VideoTranslationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func visionFlowWithOptions(_ tmpReq: VisionFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VisionFlowResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: VisionFlowShrinkRequest = VisionFlowShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.ability)) {
            request.abilityShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.ability, "Ability", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.nonobjectDetectElements)) {
            request.nonobjectDetectElementsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.nonobjectDetectElements, "NonobjectDetectElements", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.nonobjectRemoveElements)) {
            request.nonobjectRemoveElementsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.nonobjectRemoveElements, "NonobjectRemoveElements", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.objectDetectElements)) {
            request.objectDetectElementsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.objectDetectElements, "ObjectDetectElements", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.objectRemoveElements)) {
            request.objectRemoveElementsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.objectRemoveElements, "ObjectRemoveElements", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.abilityShrink)) {
            query["Ability"] = request.abilityShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backGroundType)) {
            query["BackGroundType"] = request.backGroundType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.glossary)) {
            query["Glossary"] = request.glossary ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUrl)) {
            query["ImageUrl"] = request.imageUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includingProductArea)) {
            query["IncludingProductArea"] = request.includingProductArea!;
        }
        if (!TeaUtils.Client.isUnset(request.isFilter)) {
            query["IsFilter"] = request.isFilter!;
        }
        if (!TeaUtils.Client.isUnset(request.mask)) {
            query["Mask"] = request.mask ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nonobjectDetectElementsShrink)) {
            query["NonobjectDetectElements"] = request.nonobjectDetectElementsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nonobjectRemoveElementsShrink)) {
            query["NonobjectRemoveElements"] = request.nonobjectRemoveElementsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectDetectElementsShrink)) {
            query["ObjectDetectElements"] = request.objectDetectElementsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.objectRemoveElementsShrink)) {
            query["ObjectRemoveElements"] = request.objectRemoveElementsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceLanguage)) {
            query["SourceLanguage"] = request.sourceLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetHeight)) {
            query["TargetHeight"] = request.targetHeight!;
        }
        if (!TeaUtils.Client.isUnset(request.targetLanguage)) {
            query["TargetLanguage"] = request.targetLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetWidth)) {
            query["TargetWidth"] = request.targetWidth!;
        }
        if (!TeaUtils.Client.isUnset(request.translatingBrandInTheProduct)) {
            query["TranslatingBrandInTheProduct"] = request.translatingBrandInTheProduct!;
        }
        if (!TeaUtils.Client.isUnset(request.upscaleFactor)) {
            query["UpscaleFactor"] = request.upscaleFactor!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VisionFlow",
            "version": "2026-04-28",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VisionFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func visionFlow(_ request: VisionFlowRequest) async throws -> VisionFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await visionFlowWithOptions(request as! VisionFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
