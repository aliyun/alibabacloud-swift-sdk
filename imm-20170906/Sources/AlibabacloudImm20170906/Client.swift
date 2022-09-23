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
            "cn-beijing-gov-1": "imm-vpc.cn-beijing-gov-1.aliyuncs.com"
        ]
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("imm", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func compareImageFacesWithOptions(_ request: CompareImageFacesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CompareImageFacesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.faceIdA)) {
            query["FaceIdA"] = request.faceIdA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.faceIdB)) {
            query["FaceIdB"] = request.faceIdB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUriA)) {
            query["ImageUriA"] = request.imageUriA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUriB)) {
            query["ImageUriB"] = request.imageUriB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setId)) {
            query["SetId"] = request.setId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CompareImageFaces",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CompareImageFacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func compareImageFaces(_ request: CompareImageFacesRequest) async throws -> CompareImageFacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await compareImageFacesWithOptions(request as! CompareImageFacesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func convertOfficeFormatWithOptions(_ request: ConvertOfficeFormatRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConvertOfficeFormatResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endPage)) {
            query["EndPage"] = request.endPage!;
        }
        if (!TeaUtils.Client.isUnset(request.fitToPagesTall)) {
            query["FitToPagesTall"] = request.fitToPagesTall!;
        }
        if (!TeaUtils.Client.isUnset(request.fitToPagesWide)) {
            query["FitToPagesWide"] = request.fitToPagesWide!;
        }
        if (!TeaUtils.Client.isUnset(request.hidecomments)) {
            query["Hidecomments"] = request.hidecomments!;
        }
        if (!TeaUtils.Client.isUnset(request.maxSheetCol)) {
            query["MaxSheetCol"] = request.maxSheetCol!;
        }
        if (!TeaUtils.Client.isUnset(request.maxSheetCount)) {
            query["MaxSheetCount"] = request.maxSheetCount!;
        }
        if (!TeaUtils.Client.isUnset(request.maxSheetRow)) {
            query["MaxSheetRow"] = request.maxSheetRow!;
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            query["ModelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pdfVector)) {
            query["PdfVector"] = request.pdfVector!;
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sheetOnePage)) {
            query["SheetOnePage"] = request.sheetOnePage!;
        }
        if (!TeaUtils.Client.isUnset(request.srcType)) {
            query["SrcType"] = request.srcType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUri)) {
            query["SrcUri"] = request.srcUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startPage)) {
            query["StartPage"] = request.startPage!;
        }
        if (!TeaUtils.Client.isUnset(request.tgtFilePages)) {
            query["TgtFilePages"] = request.tgtFilePages ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tgtFilePrefix)) {
            query["TgtFilePrefix"] = request.tgtFilePrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tgtFileSuffix)) {
            query["TgtFileSuffix"] = request.tgtFileSuffix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tgtType)) {
            query["TgtType"] = request.tgtType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tgtUri)) {
            query["TgtUri"] = request.tgtUri ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConvertOfficeFormat",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConvertOfficeFormatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func convertOfficeFormat(_ request: ConvertOfficeFormatRequest) async throws -> ConvertOfficeFormatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await convertOfficeFormatWithOptions(request as! ConvertOfficeFormatRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGrabFrameTaskWithOptions(_ request: CreateGrabFrameTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGrabFrameTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customMessage)) {
            query["CustomMessage"] = request.customMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyEndpoint)) {
            query["NotifyEndpoint"] = request.notifyEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyTopicName)) {
            query["NotifyTopicName"] = request.notifyTopicName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetList)) {
            query["TargetList"] = request.targetList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoUri)) {
            query["VideoUri"] = request.videoUri ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGrabFrameTask",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGrabFrameTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGrabFrameTask(_ request: CreateGrabFrameTaskRequest) async throws -> CreateGrabFrameTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createGrabFrameTaskWithOptions(request as! CreateGrabFrameTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGroupFacesJobWithOptions(_ request: CreateGroupFacesJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateGroupFacesJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.notifyEndpoint)) {
            query["NotifyEndpoint"] = request.notifyEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyTopicName)) {
            query["NotifyTopicName"] = request.notifyTopicName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setId)) {
            query["SetId"] = request.setId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateGroupFacesJob",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateGroupFacesJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createGroupFacesJob(_ request: CreateGroupFacesJobRequest) async throws -> CreateGroupFacesJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createGroupFacesJobWithOptions(request as! CreateGroupFacesJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMergeFaceGroupsJobWithOptions(_ request: CreateMergeFaceGroupsJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMergeFaceGroupsJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customMessage)) {
            query["CustomMessage"] = request.customMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupIdFrom)) {
            query["GroupIdFrom"] = request.groupIdFrom ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupIdTo)) {
            query["GroupIdTo"] = request.groupIdTo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyEndpoint)) {
            query["NotifyEndpoint"] = request.notifyEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyTopicName)) {
            query["NotifyTopicName"] = request.notifyTopicName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setId)) {
            query["SetId"] = request.setId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMergeFaceGroupsJob",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMergeFaceGroupsJobResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMergeFaceGroupsJob(_ request: CreateMergeFaceGroupsJobRequest) async throws -> CreateMergeFaceGroupsJobResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMergeFaceGroupsJobWithOptions(request as! CreateMergeFaceGroupsJobRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOfficeConversionTaskWithOptions(_ request: CreateOfficeConversionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOfficeConversionTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.displayDpi)) {
            query["DisplayDpi"] = request.displayDpi!;
        }
        if (!TeaUtils.Client.isUnset(request.endPage)) {
            query["EndPage"] = request.endPage!;
        }
        if (!TeaUtils.Client.isUnset(request.fitToPagesTall)) {
            query["FitToPagesTall"] = request.fitToPagesTall!;
        }
        if (!TeaUtils.Client.isUnset(request.fitToPagesWide)) {
            query["FitToPagesWide"] = request.fitToPagesWide!;
        }
        if (!TeaUtils.Client.isUnset(request.hidecomments)) {
            query["Hidecomments"] = request.hidecomments!;
        }
        if (!TeaUtils.Client.isUnset(request.idempotentToken)) {
            query["IdempotentToken"] = request.idempotentToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxSheetCol)) {
            query["MaxSheetCol"] = request.maxSheetCol!;
        }
        if (!TeaUtils.Client.isUnset(request.maxSheetCount)) {
            query["MaxSheetCount"] = request.maxSheetCount!;
        }
        if (!TeaUtils.Client.isUnset(request.maxSheetRow)) {
            query["MaxSheetRow"] = request.maxSheetRow!;
        }
        if (!TeaUtils.Client.isUnset(request.modelId)) {
            query["ModelId"] = request.modelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyEndpoint)) {
            query["NotifyEndpoint"] = request.notifyEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyTopicName)) {
            query["NotifyTopicName"] = request.notifyTopicName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pdfVector)) {
            query["PdfVector"] = request.pdfVector!;
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sheetOnePage)) {
            query["SheetOnePage"] = request.sheetOnePage!;
        }
        if (!TeaUtils.Client.isUnset(request.srcType)) {
            query["SrcType"] = request.srcType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUri)) {
            query["SrcUri"] = request.srcUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startPage)) {
            query["StartPage"] = request.startPage!;
        }
        if (!TeaUtils.Client.isUnset(request.tgtFilePages)) {
            query["TgtFilePages"] = request.tgtFilePages ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tgtFilePrefix)) {
            query["TgtFilePrefix"] = request.tgtFilePrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tgtFileSuffix)) {
            query["TgtFileSuffix"] = request.tgtFileSuffix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tgtType)) {
            query["TgtType"] = request.tgtType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tgtUri)) {
            query["TgtUri"] = request.tgtUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOfficeConversionTask",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOfficeConversionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOfficeConversionTask(_ request: CreateOfficeConversionTaskRequest) async throws -> CreateOfficeConversionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createOfficeConversionTaskWithOptions(request as! CreateOfficeConversionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSetWithOptions(_ request: CreateSetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setId)) {
            query["SetId"] = request.setId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setName)) {
            query["SetName"] = request.setName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSet",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSet(_ request: CreateSetRequest) async throws -> CreateSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSetWithOptions(request as! CreateSetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVideoCompressTaskWithOptions(_ request: CreateVideoCompressTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateVideoCompressTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.customMessage)) {
            query["CustomMessage"] = request.customMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyEndpoint)) {
            query["NotifyEndpoint"] = request.notifyEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyTopicName)) {
            query["NotifyTopicName"] = request.notifyTopicName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetList)) {
            query["TargetList"] = request.targetList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetSegment)) {
            query["TargetSegment"] = request.targetSegment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetSubtitle)) {
            query["TargetSubtitle"] = request.targetSubtitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoUri)) {
            query["VideoUri"] = request.videoUri ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateVideoCompressTask",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateVideoCompressTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createVideoCompressTask(_ request: CreateVideoCompressTaskRequest) async throws -> CreateVideoCompressTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createVideoCompressTaskWithOptions(request as! CreateVideoCompressTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func decodeBlindWatermarkWithOptions(_ request: DecodeBlindWatermarkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DecodeBlindWatermarkResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageQuality)) {
            query["ImageQuality"] = request.imageQuality!;
        }
        if (!TeaUtils.Client.isUnset(request.imageUri)) {
            query["ImageUri"] = request.imageUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            query["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.originalImageUri)) {
            query["OriginalImageUri"] = request.originalImageUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetUri)) {
            query["TargetUri"] = request.targetUri ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DecodeBlindWatermark",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DecodeBlindWatermarkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func decodeBlindWatermark(_ request: DecodeBlindWatermarkRequest) async throws -> DecodeBlindWatermarkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await decodeBlindWatermarkWithOptions(request as! DecodeBlindWatermarkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteImageWithOptions(_ request: DeleteImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteImageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageUri)) {
            query["ImageUri"] = request.imageUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setId)) {
            query["SetId"] = request.setId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteImage",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteImage(_ request: DeleteImageRequest) async throws -> DeleteImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteImageWithOptions(request as! DeleteImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteOfficeConversionTaskWithOptions(_ request: DeleteOfficeConversionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteOfficeConversionTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteOfficeConversionTask",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteOfficeConversionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteOfficeConversionTask(_ request: DeleteOfficeConversionTaskRequest) async throws -> DeleteOfficeConversionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteOfficeConversionTaskWithOptions(request as! DeleteOfficeConversionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProjectWithOptions(_ request: DeleteProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProject",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProject(_ request: DeleteProjectRequest) async throws -> DeleteProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteProjectWithOptions(request as! DeleteProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSetWithOptions(_ request: DeleteSetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setId)) {
            query["SetId"] = request.setId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSet",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSet(_ request: DeleteSetRequest) async throws -> DeleteSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSetWithOptions(request as! DeleteSetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVideoWithOptions(_ request: DeleteVideoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteVideoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resources)) {
            query["Resources"] = request.resources!;
        }
        if (!TeaUtils.Client.isUnset(request.setId)) {
            query["SetId"] = request.setId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoUri)) {
            query["VideoUri"] = request.videoUri ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteVideo",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteVideoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVideo(_ request: DeleteVideoRequest) async throws -> DeleteVideoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteVideoWithOptions(request as! DeleteVideoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVideoTaskWithOptions(_ request: DeleteVideoTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteVideoTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteVideoTask",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteVideoTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVideoTask(_ request: DeleteVideoTaskRequest) async throws -> DeleteVideoTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteVideoTaskWithOptions(request as! DeleteVideoTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageBodiesWithOptions(_ request: DetectImageBodiesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectImageBodiesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageUri)) {
            query["ImageUri"] = request.imageUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectImageBodies",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectImageBodiesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageBodies(_ request: DetectImageBodiesRequest) async throws -> DetectImageBodiesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectImageBodiesWithOptions(request as! DetectImageBodiesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageFacesWithOptions(_ request: DetectImageFacesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectImageFacesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageUri)) {
            query["ImageUri"] = request.imageUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectImageFaces",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectImageFacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageFaces(_ request: DetectImageFacesRequest) async throws -> DetectImageFacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectImageFacesWithOptions(request as! DetectImageFacesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageQRCodesWithOptions(_ request: DetectImageQRCodesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectImageQRCodesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageUri)) {
            query["ImageUri"] = request.imageUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectImageQRCodes",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectImageQRCodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageQRCodes(_ request: DetectImageQRCodesRequest) async throws -> DetectImageQRCodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectImageQRCodesWithOptions(request as! DetectImageQRCodesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageTagsWithOptions(_ request: DetectImageTagsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectImageTagsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageUri)) {
            query["ImageUri"] = request.imageUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectImageTags",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectImageTagsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectImageTags(_ request: DetectImageTagsRequest) async throws -> DetectImageTagsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectImageTagsWithOptions(request as! DetectImageTagsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectQRCodesWithOptions(_ request: DetectQRCodesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetectQRCodesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUris)) {
            query["SrcUris"] = request.srcUris ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetectQRCodes",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetectQRCodesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detectQRCodes(_ request: DetectQRCodesRequest) async throws -> DetectQRCodesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detectQRCodesWithOptions(request as! DetectQRCodesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func encodeBlindWatermarkWithOptions(_ request: EncodeBlindWatermarkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EncodeBlindWatermarkResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            query["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageQuality)) {
            query["ImageQuality"] = request.imageQuality ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUri)) {
            query["ImageUri"] = request.imageUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.model)) {
            query["Model"] = request.model ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetImageType)) {
            query["TargetImageType"] = request.targetImageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.targetUri)) {
            query["TargetUri"] = request.targetUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watermarkUri)) {
            query["WatermarkUri"] = request.watermarkUri ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EncodeBlindWatermark",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EncodeBlindWatermarkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func encodeBlindWatermark(_ request: EncodeBlindWatermarkRequest) async throws -> EncodeBlindWatermarkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await encodeBlindWatermarkWithOptions(request as! EncodeBlindWatermarkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findImagesWithOptions(_ request: FindImagesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FindImagesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addressLineContentsMatch)) {
            query["AddressLineContentsMatch"] = request.addressLineContentsMatch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ageRange)) {
            query["AgeRange"] = request.ageRange ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTimeRange)) {
            query["CreateTimeRange"] = request.createTimeRange ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.emotion)) {
            query["Emotion"] = request.emotion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalId)) {
            query["ExternalId"] = request.externalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.facesModifyTimeRange)) {
            query["FacesModifyTimeRange"] = request.facesModifyTimeRange ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gender)) {
            query["Gender"] = request.gender ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageSizeRange)) {
            query["ImageSizeRange"] = request.imageSizeRange ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageTimeRange)) {
            query["ImageTimeRange"] = request.imageTimeRange ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.locationBoundary)) {
            query["LocationBoundary"] = request.locationBoundary ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.marker)) {
            query["Marker"] = request.marker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modifyTimeRange)) {
            query["ModifyTimeRange"] = request.modifyTimeRange ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OCRContentsMatch)) {
            query["OCRContentsMatch"] = request.OCRContentsMatch ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["OrderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksAPrefix)) {
            query["RemarksAPrefix"] = request.remarksAPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksArrayAIn)) {
            query["RemarksArrayAIn"] = request.remarksArrayAIn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksArrayBIn)) {
            query["RemarksArrayBIn"] = request.remarksArrayBIn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksBPrefix)) {
            query["RemarksBPrefix"] = request.remarksBPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksCPrefix)) {
            query["RemarksCPrefix"] = request.remarksCPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksDPrefix)) {
            query["RemarksDPrefix"] = request.remarksDPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setId)) {
            query["SetId"] = request.setId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceUriPrefix)) {
            query["SourceUriPrefix"] = request.sourceUriPrefix ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagNames)) {
            query["TagNames"] = request.tagNames ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagsModifyTimeRange)) {
            query["TagsModifyTimeRange"] = request.tagsModifyTimeRange ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FindImages",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FindImagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findImages(_ request: FindImagesRequest) async throws -> FindImagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await findImagesWithOptions(request as! FindImagesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findSimilarFacesWithOptions(_ request: FindSimilarFacesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> FindSimilarFacesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.faceId)) {
            query["FaceId"] = request.faceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUri)) {
            query["ImageUri"] = request.imageUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.minSimilarity)) {
            query["MinSimilarity"] = request.minSimilarity!;
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.responseFormat)) {
            query["ResponseFormat"] = request.responseFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setId)) {
            query["SetId"] = request.setId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FindSimilarFaces",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FindSimilarFacesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func findSimilarFaces(_ request: FindSimilarFacesRequest) async throws -> FindSimilarFacesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await findSimilarFacesWithOptions(request as! FindSimilarFacesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageWithOptions(_ request: GetImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetImageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageUri)) {
            query["ImageUri"] = request.imageUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setId)) {
            query["SetId"] = request.setId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetImage",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImage(_ request: GetImageRequest) async throws -> GetImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getImageWithOptions(request as! GetImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageCroppingSuggestionsWithOptions(_ request: GetImageCroppingSuggestionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetImageCroppingSuggestionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aspectRatios)) {
            query["AspectRatios"] = request.aspectRatios ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUri)) {
            query["ImageUri"] = request.imageUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetImageCroppingSuggestions",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetImageCroppingSuggestionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageCroppingSuggestions(_ request: GetImageCroppingSuggestionsRequest) async throws -> GetImageCroppingSuggestionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getImageCroppingSuggestionsWithOptions(request as! GetImageCroppingSuggestionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageQualityWithOptions(_ request: GetImageQualityRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetImageQualityResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageUri)) {
            query["ImageUri"] = request.imageUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetImageQuality",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetImageQualityResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getImageQuality(_ request: GetImageQualityRequest) async throws -> GetImageQualityResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getImageQualityWithOptions(request as! GetImageQualityRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMediaMetaWithOptions(_ request: GetMediaMetaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMediaMetaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mediaUri)) {
            query["MediaUri"] = request.mediaUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMediaMeta",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMediaMetaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMediaMeta(_ request: GetMediaMetaRequest) async throws -> GetMediaMetaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMediaMetaWithOptions(request as! GetMediaMetaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOfficeConversionTaskWithOptions(_ request: GetOfficeConversionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOfficeConversionTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOfficeConversionTask",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOfficeConversionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOfficeConversionTask(_ request: GetOfficeConversionTaskRequest) async throws -> GetOfficeConversionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOfficeConversionTaskWithOptions(request as! GetOfficeConversionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOfficePreviewURLWithOptions(_ request: GetOfficePreviewURLRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOfficePreviewURLResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcType)) {
            query["SrcType"] = request.srcType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcUri)) {
            query["SrcUri"] = request.srcUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watermarkFillStyle)) {
            query["WatermarkFillStyle"] = request.watermarkFillStyle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watermarkFont)) {
            query["WatermarkFont"] = request.watermarkFont ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watermarkHorizontal)) {
            query["WatermarkHorizontal"] = request.watermarkHorizontal!;
        }
        if (!TeaUtils.Client.isUnset(request.watermarkRotate)) {
            query["WatermarkRotate"] = request.watermarkRotate!;
        }
        if (!TeaUtils.Client.isUnset(request.watermarkType)) {
            query["WatermarkType"] = request.watermarkType!;
        }
        if (!TeaUtils.Client.isUnset(request.watermarkValue)) {
            query["WatermarkValue"] = request.watermarkValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watermarkVertical)) {
            query["WatermarkVertical"] = request.watermarkVertical!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOfficePreviewURL",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOfficePreviewURLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOfficePreviewURL(_ request: GetOfficePreviewURLRequest) async throws -> GetOfficePreviewURLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOfficePreviewURLWithOptions(request as! GetOfficePreviewURLRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProjectWithOptions(_ request: GetProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProject",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProject(_ request: GetProjectRequest) async throws -> GetProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getProjectWithOptions(request as! GetProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSetWithOptions(_ request: GetSetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setId)) {
            query["SetId"] = request.setId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSet",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSet(_ request: GetSetRequest) async throws -> GetSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSetWithOptions(request as! GetSetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoWithOptions(_ request: GetVideoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVideoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setId)) {
            query["SetId"] = request.setId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoUri)) {
            query["VideoUri"] = request.videoUri ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVideo",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVideoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideo(_ request: GetVideoRequest) async throws -> GetVideoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getVideoWithOptions(request as! GetVideoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoTaskWithOptions(_ request: GetVideoTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVideoTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVideoTask",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVideoTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoTask(_ request: GetVideoTaskRequest) async throws -> GetVideoTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getVideoTaskWithOptions(request as! GetVideoTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWebofficeURLWithOptions(_ request: GetWebofficeURLRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWebofficeURLResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.file)) {
            query["File"] = request.file ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileID)) {
            query["FileID"] = request.fileID ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hidecmb)) {
            query["Hidecmb"] = request.hidecmb!;
        }
        if (!TeaUtils.Client.isUnset(request.notifyEndpoint)) {
            query["NotifyEndpoint"] = request.notifyEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyTopicName)) {
            query["NotifyTopicName"] = request.notifyTopicName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.permission)) {
            query["Permission"] = request.permission ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.srcType)) {
            query["SrcType"] = request.srcType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.user)) {
            query["User"] = request.user ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watermark)) {
            query["Watermark"] = request.watermark ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWebofficeURL",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWebofficeURLResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWebofficeURL(_ request: GetWebofficeURLRequest) async throws -> GetWebofficeURLResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWebofficeURLWithOptions(request as! GetWebofficeURLRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func indexImageWithOptions(_ request: IndexImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> IndexImageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.externalId)) {
            query["ExternalId"] = request.externalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUri)) {
            query["ImageUri"] = request.imageUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyEndpoint)) {
            query["NotifyEndpoint"] = request.notifyEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyTopicName)) {
            query["NotifyTopicName"] = request.notifyTopicName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksA)) {
            query["RemarksA"] = request.remarksA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksArrayA)) {
            query["RemarksArrayA"] = request.remarksArrayA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksArrayB)) {
            query["RemarksArrayB"] = request.remarksArrayB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksB)) {
            query["RemarksB"] = request.remarksB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksC)) {
            query["RemarksC"] = request.remarksC ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksD)) {
            query["RemarksD"] = request.remarksD ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setId)) {
            query["SetId"] = request.setId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourcePosition)) {
            query["SourcePosition"] = request.sourcePosition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceUri)) {
            query["SourceUri"] = request.sourceUri ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IndexImage",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IndexImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func indexImage(_ request: IndexImageRequest) async throws -> IndexImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await indexImageWithOptions(request as! IndexImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func indexVideoWithOptions(_ request: IndexVideoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> IndexVideoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.externalId)) {
            query["ExternalId"] = request.externalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyEndpoint)) {
            query["NotifyEndpoint"] = request.notifyEndpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyTopicName)) {
            query["NotifyTopicName"] = request.notifyTopicName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksA)) {
            query["RemarksA"] = request.remarksA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksB)) {
            query["RemarksB"] = request.remarksB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksC)) {
            query["RemarksC"] = request.remarksC ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksD)) {
            query["RemarksD"] = request.remarksD ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setId)) {
            query["SetId"] = request.setId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tgtUri)) {
            query["TgtUri"] = request.tgtUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.videoUri)) {
            query["VideoUri"] = request.videoUri ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IndexVideo",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IndexVideoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func indexVideo(_ request: IndexVideoRequest) async throws -> IndexVideoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await indexVideoWithOptions(request as! IndexVideoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFaceGroupsWithOptions(_ request: ListFaceGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFaceGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.externalId)) {
            query["ExternalId"] = request.externalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.marker)) {
            query["Marker"] = request.marker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            query["OrderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksAQuery)) {
            query["RemarksAQuery"] = request.remarksAQuery ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksArrayAQuery)) {
            query["RemarksArrayAQuery"] = request.remarksArrayAQuery ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksArrayBQuery)) {
            query["RemarksArrayBQuery"] = request.remarksArrayBQuery ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksBQuery)) {
            query["RemarksBQuery"] = request.remarksBQuery ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksCQuery)) {
            query["RemarksCQuery"] = request.remarksCQuery ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksDQuery)) {
            query["RemarksDQuery"] = request.remarksDQuery ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setId)) {
            query["SetId"] = request.setId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFaceGroups",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFaceGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFaceGroups(_ request: ListFaceGroupsRequest) async throws -> ListFaceGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listFaceGroupsWithOptions(request as! ListFaceGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listImagesWithOptions(_ request: ListImagesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListImagesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createTimeStart)) {
            query["CreateTimeStart"] = request.createTimeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.marker)) {
            query["Marker"] = request.marker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setId)) {
            query["SetId"] = request.setId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListImages",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListImagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listImages(_ request: ListImagesRequest) async throws -> ListImagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listImagesWithOptions(request as! ListImagesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOfficeConversionTaskWithOptions(_ request: ListOfficeConversionTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOfficeConversionTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.marker)) {
            query["Marker"] = request.marker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxKeys)) {
            query["MaxKeys"] = request.maxKeys!;
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOfficeConversionTask",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOfficeConversionTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOfficeConversionTask(_ request: ListOfficeConversionTaskRequest) async throws -> ListOfficeConversionTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listOfficeConversionTaskWithOptions(request as! ListOfficeConversionTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjectsWithOptions(_ request: ListProjectsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProjectsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.marker)) {
            query["Marker"] = request.marker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxKeys)) {
            query["MaxKeys"] = request.maxKeys!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProjects",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProjectsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProjects(_ request: ListProjectsRequest) async throws -> ListProjectsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listProjectsWithOptions(request as! ListProjectsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSetTagsWithOptions(_ request: ListSetTagsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSetTagsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setId)) {
            query["SetId"] = request.setId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSetTags",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSetTagsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSetTags(_ request: ListSetTagsRequest) async throws -> ListSetTagsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSetTagsWithOptions(request as! ListSetTagsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSetsWithOptions(_ request: ListSetsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSetsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.marker)) {
            query["Marker"] = request.marker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSets",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSetsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSets(_ request: ListSetsRequest) async throws -> ListSetsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSetsWithOptions(request as! ListSetsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVideoTasksWithOptions(_ request: ListVideoTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListVideoTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.marker)) {
            query["Marker"] = request.marker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxKeys)) {
            query["MaxKeys"] = request.maxKeys!;
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskType)) {
            query["TaskType"] = request.taskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListVideoTasks",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListVideoTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVideoTasks(_ request: ListVideoTasksRequest) async throws -> ListVideoTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listVideoTasksWithOptions(request as! ListVideoTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVideosWithOptions(_ request: ListVideosRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListVideosResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.createTimeStart)) {
            query["CreateTimeStart"] = request.createTimeStart ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.marker)) {
            query["Marker"] = request.marker ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setId)) {
            query["SetId"] = request.setId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListVideos",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListVideosResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listVideos(_ request: ListVideosRequest) async throws -> ListVideosResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listVideosWithOptions(request as! ListVideosRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openImmServiceWithOptions(_ request: OpenImmServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OpenImmServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OpenImmService",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OpenImmServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func openImmService(_ request: OpenImmServiceRequest) async throws -> OpenImmServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await openImmServiceWithOptions(request as! OpenImmServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putProjectWithOptions(_ request: PutProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PutProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceRole)) {
            query["ServiceRole"] = request.serviceRole ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PutProject",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PutProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func putProject(_ request: PutProjectRequest) async throws -> PutProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await putProjectWithOptions(request as! PutProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshOfficePreviewTokenWithOptions(_ request: RefreshOfficePreviewTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefreshOfficePreviewTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refreshToken)) {
            query["RefreshToken"] = request.refreshToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefreshOfficePreviewToken",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefreshOfficePreviewTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshOfficePreviewToken(_ request: RefreshOfficePreviewTokenRequest) async throws -> RefreshOfficePreviewTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await refreshOfficePreviewTokenWithOptions(request as! RefreshOfficePreviewTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshWebofficeTokenWithOptions(_ request: RefreshWebofficeTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RefreshWebofficeTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessToken)) {
            query["AccessToken"] = request.accessToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.refreshToken)) {
            query["RefreshToken"] = request.refreshToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefreshWebofficeToken",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefreshWebofficeTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshWebofficeToken(_ request: RefreshWebofficeTokenRequest) async throws -> RefreshWebofficeTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await refreshWebofficeTokenWithOptions(request as! RefreshWebofficeTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFaceGroupWithOptions(_ request: UpdateFaceGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFaceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.externalId)) {
            query["ExternalId"] = request.externalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupCoverFaceId)) {
            query["GroupCoverFaceId"] = request.groupCoverFaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksA)) {
            query["RemarksA"] = request.remarksA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksArrayA)) {
            query["RemarksArrayA"] = request.remarksArrayA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksArrayB)) {
            query["RemarksArrayB"] = request.remarksArrayB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksB)) {
            query["RemarksB"] = request.remarksB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksC)) {
            query["RemarksC"] = request.remarksC ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksD)) {
            query["RemarksD"] = request.remarksD ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resetItems)) {
            query["ResetItems"] = request.resetItems ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setId)) {
            query["SetId"] = request.setId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFaceGroup",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFaceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFaceGroup(_ request: UpdateFaceGroupRequest) async throws -> UpdateFaceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateFaceGroupWithOptions(request as! UpdateFaceGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateImageWithOptions(_ tmpReq: UpdateImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateImageResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateImageShrinkRequest = UpdateImageShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.faces)) {
            request.facesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.faces, "Faces", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.externalId)) {
            query["ExternalId"] = request.externalId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.facesShrink)) {
            query["Faces"] = request.facesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageUri)) {
            query["ImageUri"] = request.imageUri ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksA)) {
            query["RemarksA"] = request.remarksA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksArrayA)) {
            query["RemarksArrayA"] = request.remarksArrayA ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksArrayB)) {
            query["RemarksArrayB"] = request.remarksArrayB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksB)) {
            query["RemarksB"] = request.remarksB ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksC)) {
            query["RemarksC"] = request.remarksC ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remarksD)) {
            query["RemarksD"] = request.remarksD ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setId)) {
            query["SetId"] = request.setId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourcePosition)) {
            query["SourcePosition"] = request.sourcePosition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceType)) {
            query["SourceType"] = request.sourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceUri)) {
            query["SourceUri"] = request.sourceUri ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateImage",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateImage(_ request: UpdateImageRequest) async throws -> UpdateImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateImageWithOptions(request as! UpdateImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProjectWithOptions(_ request: UpdateProjectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProjectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.newCU)) {
            query["NewCU"] = request.newCU!;
        }
        if (!TeaUtils.Client.isUnset(request.newServiceRole)) {
            query["NewServiceRole"] = request.newServiceRole ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProject",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProject(_ request: UpdateProjectRequest) async throws -> UpdateProjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateProjectWithOptions(request as! UpdateProjectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSetWithOptions(_ request: UpdateSetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.project)) {
            query["Project"] = request.project ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setId)) {
            query["SetId"] = request.setId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.setName)) {
            query["SetName"] = request.setName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSet",
            "version": "2017-09-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSet(_ request: UpdateSetRequest) async throws -> UpdateSetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateSetWithOptions(request as! UpdateSetRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
