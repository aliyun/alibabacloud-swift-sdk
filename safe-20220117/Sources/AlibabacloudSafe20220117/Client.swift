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
        self._endpoint = try getEndpoint("safe", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func cancelBlockWithOptions(_ request: CancelBlockRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelBlockResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.blockId)) {
            body["BlockId"] = request.blockId!;
        }
        if (!TeaUtils.Client.isUnset(request.cancelBLockDesc)) {
            body["CancelBLockDesc"] = request.cancelBLockDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createEmpId)) {
            body["CreateEmpId"] = request.createEmpId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelBlock",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelBlockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelBlock(_ request: CancelBlockRequest) async throws -> CancelBlockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelBlockWithOptions(request as! CancelBlockRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeCancelWithOptions(_ request: ChangeCancelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeCancelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            query["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            query["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            query["ReqTimestamp"] = request.reqTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceOrderId)) {
            query["SourceOrderId"] = request.sourceOrderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeCancel",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeCancelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeCancel(_ request: ChangeCancelRequest) async throws -> ChangeCancelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeCancelWithOptions(request as! ChangeCancelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeCheckWithOptions(_ tmpReq: ChangeCheckRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeCheckResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ChangeCheckShrinkRequest = ChangeCheckShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.damagedChangeNotices)) {
            request.damagedChangeNoticesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.damagedChangeNotices, "DamagedChangeNotices", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.affectCustomer)) {
            body["AffectCustomer"] = request.affectCustomer ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.approveFlowParam)) {
            bodyFlat["ApproveFlowParam"] = request.approveFlowParam!;
        }
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            body["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            body["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bgCustomTemplateExtraDTO)) {
            bodyFlat["BgCustomTemplateExtraDTO"] = request.bgCustomTemplateExtraDTO!;
        }
        if (!TeaUtils.Client.isUnset(request.bgVid)) {
            body["BgVid"] = request.bgVid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.blockInfos)) {
            body["BlockInfos"] = request.blockInfos ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.callBackInfo)) {
            bodyFlat["CallBackInfo"] = request.callBackInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.changeDataType)) {
            body["ChangeDataType"] = request.changeDataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeDesc)) {
            body["ChangeDesc"] = request.changeDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeEndTime)) {
            body["ChangeEndTime"] = request.changeEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.changeEnv)) {
            body["ChangeEnv"] = request.changeEnv ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeItems)) {
            body["ChangeItems"] = request.changeItems ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeObject)) {
            body["ChangeObject"] = request.changeObject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeOptSubType)) {
            body["ChangeOptSubType"] = request.changeOptSubType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeOptType)) {
            body["ChangeOptType"] = request.changeOptType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeReason)) {
            body["ChangeReason"] = request.changeReason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeRmarks)) {
            body["ChangeRmarks"] = request.changeRmarks ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeSchemes)) {
            body["ChangeSchemes"] = request.changeSchemes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeStartTime)) {
            body["ChangeStartTime"] = request.changeStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.changeSubTypeDesc)) {
            body["ChangeSubTypeDesc"] = request.changeSubTypeDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeSystem)) {
            body["ChangeSystem"] = request.changeSystem ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeTimes)) {
            body["ChangeTimes"] = request.changeTimes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.changeTitle)) {
            body["ChangeTitle"] = request.changeTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeValidation)) {
            body["ChangeValidation"] = request.changeValidation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.creatorEmpId)) {
            body["CreatorEmpId"] = request.creatorEmpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.damagedChangeNoticesShrink)) {
            body["DamagedChangeNotices"] = request.damagedChangeNoticesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.executorEmpId)) {
            body["ExecutorEmpId"] = request.executorEmpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraInfo)) {
            body["ExtraInfo"] = request.extraInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.follower)) {
            body["Follower"] = request.follower ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.grayStatus)) {
            body["GrayStatus"] = request.grayStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.harmChangeNoticeEnum)) {
            body["HarmChangeNoticeEnum"] = request.harmChangeNoticeEnum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidence)) {
            body["Incidence"] = request.incidence ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.influenceInfo)) {
            bodyFlat["InfluenceInfo"] = request.influenceInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.instance)) {
            bodyFlat["Instance"] = request.instance!;
        }
        if (!TeaUtils.Client.isUnset(request.needModifyDoc)) {
            body["NeedModifyDoc"] = request.needModifyDoc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            body["Product"] = request.product ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.releasePackageInfos)) {
            body["ReleasePackageInfos"] = request.releasePackageInfos ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            body["ReqTimestamp"] = request.reqTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.reuseSourceOrderId)) {
            body["ReuseSourceOrderId"] = request.reuseSourceOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskLevel)) {
            body["RiskLevel"] = request.riskLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rollback)) {
            body["Rollback"] = request.rollback ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceName)) {
            body["SourceName"] = request.sourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceOrderId)) {
            body["SourceOrderId"] = request.sourceOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceUrl)) {
            body["SourceUrl"] = request.sourceUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whiteType)) {
            body["WhiteType"] = request.whiteType!;
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeCheck",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeCheck(_ request: ChangeCheckRequest) async throws -> ChangeCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeCheckWithOptions(request as! ChangeCheckRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeEndWithOptions(_ request: ChangeEndRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeEndResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            query["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            query["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeEndTime)) {
            query["ChangeEndTime"] = request.changeEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.changeResult)) {
            query["ChangeResult"] = request.changeResult ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.curBatchNo)) {
            query["CurBatchNo"] = request.curBatchNo!;
        }
        if (!TeaUtils.Client.isUnset(request.executorEmpId)) {
            query["ExecutorEmpId"] = request.executorEmpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            query["ReqTimestamp"] = request.reqTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceOrderId)) {
            query["SourceOrderId"] = request.sourceOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalBatchNo)) {
            query["TotalBatchNo"] = request.totalBatchNo!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeEnd",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeEndResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeEnd(_ request: ChangeEndRequest) async throws -> ChangeEndResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeEndWithOptions(request as! ChangeEndRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeStartWithOptions(_ request: ChangeStartRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeStartResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            query["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            query["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeEndTime)) {
            query["ChangeEndTime"] = request.changeEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.changeObject)) {
            query["ChangeObject"] = request.changeObject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeOptType)) {
            query["ChangeOptType"] = request.changeOptType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeStartTime)) {
            query["ChangeStartTime"] = request.changeStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.changeTitle)) {
            query["ChangeTitle"] = request.changeTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.creatorEmpId)) {
            query["CreatorEmpId"] = request.creatorEmpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.curBatchNo)) {
            query["CurBatchNo"] = request.curBatchNo!;
        }
        if (!TeaUtils.Client.isUnset(request.executorEmpId)) {
            query["ExecutorEmpId"] = request.executorEmpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            query["ReqTimestamp"] = request.reqTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceOrderId)) {
            query["SourceOrderId"] = request.sourceOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalBatchNo)) {
            query["TotalBatchNo"] = request.totalBatchNo!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChangeStart",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeStartResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeStart(_ request: ChangeStartRequest) async throws -> ChangeStartResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeStartWithOptions(request as! ChangeStartRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBlockWithOptions(_ request: CreateBlockRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBlockResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.approveStrategyNodes)) {
            bodyFlat["ApproveStrategyNodes"] = request.approveStrategyNodes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.blockId)) {
            body["BlockId"] = request.blockId!;
        }
        if (!TeaUtils.Client.isUnset(request.director)) {
            body["Director"] = request.director ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isNeedApprove)) {
            body["IsNeedApprove"] = request.isNeedApprove!;
        }
        if (!TeaUtils.Client.isUnset(request.isRecall)) {
            body["IsRecall"] = request.isRecall!;
        }
        if (!TeaUtils.Client.isUnset(request.isTemplate)) {
            body["IsTemplate"] = request.isTemplate!;
        }
        if (!TeaUtils.Client.isUnset(request.labelName)) {
            body["LabelName"] = request.labelName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.noticeDesc)) {
            body["NoticeDesc"] = request.noticeDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.noticeEnclosureInfos)) {
            bodyFlat["NoticeEnclosureInfos"] = request.noticeEnclosureInfos ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.noticeRequestLink)) {
            body["NoticeRequestLink"] = request.noticeRequestLink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.noticeType)) {
            body["NoticeType"] = request.noticeType!;
        }
        if (!TeaUtils.Client.isUnset(request.reason)) {
            body["Reason"] = request.reason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["Scene"] = request.scene!;
        }
        if (!TeaUtils.Client.isUnset(request.scopes)) {
            bodyFlat["Scopes"] = request.scopes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.versionId)) {
            body["VersionId"] = request.versionId!;
        }
        if (!TeaUtils.Client.isUnset(request.creatorEmpId)) {
            body["creatorEmpId"] = request.creatorEmpId ?? "";
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBlock",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateBlockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBlock(_ request: CreateBlockRequest) async throws -> CreateBlockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createBlockWithOptions(request as! CreateBlockRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMaYiBlockWithOptions(_ tmpReq: CreateMaYiBlockRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateMaYiBlockResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateMaYiBlockShrinkRequest = CreateMaYiBlockShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.scope)) {
            request.scopeShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.scope, "Scope", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.blockId)) {
            body["BlockId"] = request.blockId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.blockTimes)) {
            body["BlockTimes"] = request.blockTimes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.blockType)) {
            body["BlockType"] = request.blockType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.creatorEmpId)) {
            body["CreatorEmpId"] = request.creatorEmpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.director)) {
            body["Director"] = request.director ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.faultVersion)) {
            body["FaultVersion"] = request.faultVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.information)) {
            body["Information"] = request.information ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.reason)) {
            body["Reason"] = request.reason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scopeShrink)) {
            body["Scope"] = request.scopeShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.title)) {
            body["Title"] = request.title ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateMaYiBlock",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateMaYiBlockResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createMaYiBlock(_ request: CreateMaYiBlockRequest) async throws -> CreateMaYiBlockResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createMaYiBlockWithOptions(request as! CreateMaYiBlockRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOperatorWithOptions(_ request: CreateOperatorRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateOperatorResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            body["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            body["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bgObject)) {
            body["BgObject"] = request.bgObject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bgSystem)) {
            body["BgSystem"] = request.bgSystem ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["Code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.curEmpId)) {
            body["CurEmpId"] = request.curEmpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.noCheck)) {
            body["NoCheck"] = request.noCheck!;
        }
        if (!TeaUtils.Client.isUnset(request.noRisk)) {
            body["NoRisk"] = request.noRisk!;
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            body["ReqTimestamp"] = request.reqTimestamp!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateOperator",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateOperatorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createOperator(_ request: CreateOperatorRequest) async throws -> CreateOperatorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createOperatorWithOptions(request as! CreateOperatorRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryWithOptions(_ request: QueryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            query["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            query["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needValidate)) {
            query["NeedValidate"] = request.needValidate!;
        }
        if (!TeaUtils.Client.isUnset(request.queryType)) {
            query["QueryType"] = request.queryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            query["ReqTimestamp"] = request.reqTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceOrderId)) {
            query["SourceOrderId"] = request.sourceOrderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Query",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func query(_ request: QueryRequest) async throws -> QueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryWithOptions(request as! QueryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryApproveFlowWithOptions(_ request: QueryApproveFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryApproveFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            query["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            query["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            query["ReqTimestamp"] = request.reqTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceOrderId)) {
            query["SourceOrderId"] = request.sourceOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stage)) {
            query["Stage"] = request.stage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryApproveFlow",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryApproveFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryApproveFlow(_ request: QueryApproveFlowRequest) async throws -> QueryApproveFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryApproveFlowWithOptions(request as! QueryApproveFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBlockEventWithOptions(_ request: QueryBlockEventRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryBlockEventResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.scope)) {
            query["Scope"] = request.scope ?? [];
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            body["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            body["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bgSystemName)) {
            body["BgSystemName"] = request.bgSystemName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.blockHarm)) {
            body["BlockHarm"] = request.blockHarm ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            body["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deptNo)) {
            body["DeptNo"] = request.deptNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            body["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.needRule)) {
            body["NeedRule"] = request.needRule!;
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.productCodes)) {
            body["ProductCodes"] = request.productCodes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionReqs)) {
            body["RegionReqs"] = request.regionReqs ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            body["ReqTimestamp"] = request.reqTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryBlockEvent",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryBlockEventResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryBlockEvent(_ request: QueryBlockEventRequest) async throws -> QueryBlockEventResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryBlockEventWithOptions(request as! QueryBlockEventRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryChangeInfoWithOptions(_ request: QueryChangeInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryChangeInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            body["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            body["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.az)) {
            body["Az"] = request.az ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.bgVid)) {
            body["BgVid"] = request.bgVid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buId)) {
            body["BuId"] = request.buId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeSystem)) {
            body["ChangeSystem"] = request.changeSystem ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["Keyword"] = request.keyword ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.levelTree)) {
            bodyFlat["LevelTree"] = request.levelTree!;
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            body["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            body["Product"] = request.product ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            body["Region"] = request.region ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            body["ReqTimestamp"] = request.reqTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            body["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceOrderId)) {
            body["SourceOrderId"] = request.sourceOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryChangeInfo",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryChangeInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryChangeInfo(_ request: QueryChangeInfoRequest) async throws -> QueryChangeInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryChangeInfoWithOptions(request as! QueryChangeInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCheckInfoWithOptions(_ request: QueryCheckInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCheckInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            body["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            body["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            body["ReqTimestamp"] = request.reqTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceOrderId)) {
            body["SourceOrderId"] = request.sourceOrderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCheckInfo",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCheckInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCheckInfo(_ request: QueryCheckInfoRequest) async throws -> QueryCheckInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCheckInfoWithOptions(request as! QueryCheckInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCustomerWithOptions(_ request: QueryCustomerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCustomerResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            body["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            body["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            body["Product"] = request.product ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            body["ReqTimestamp"] = request.reqTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCustomer",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCustomerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCustomer(_ request: QueryCustomerRequest) async throws -> QueryCustomerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCustomerWithOptions(request as! QueryCustomerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryExecuteInfoWithOptions(_ request: QueryExecuteInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryExecuteInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            body["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            body["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.az)) {
            body["Az"] = request.az ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.bgVid)) {
            body["BgVid"] = request.bgVid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.buId)) {
            body["BuId"] = request.buId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.exVid)) {
            body["ExVid"] = request.exVid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyword)) {
            body["Keyword"] = request.keyword ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.levelTree)) {
            bodyFlat["LevelTree"] = request.levelTree!;
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            body["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            body["Product"] = request.product ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.region)) {
            body["Region"] = request.region ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            body["ReqTimestamp"] = request.reqTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.source)) {
            body["Source"] = request.source ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceOrderId)) {
            body["SourceOrderId"] = request.sourceOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["StartTime"] = request.startTime!;
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryExecuteInfo",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryExecuteInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryExecuteInfo(_ request: QueryExecuteInfoRequest) async throws -> QueryExecuteInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryExecuteInfoWithOptions(request as! QueryExecuteInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryInnerProductInfoWithOptions(_ request: QueryInnerProductInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryInnerProductInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            body["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            body["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            body["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            body["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            body["ReqTimestamp"] = request.reqTimestamp!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryInnerProductInfo",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryInnerProductInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryInnerProductInfo(_ request: QueryInnerProductInfoRequest) async throws -> QueryInnerProductInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryInnerProductInfoWithOptions(request as! QueryInnerProductInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRegionAzWithOptions(_ request: QueryRegionAzRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRegionAzResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            body["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            body["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            body["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            body["Product"] = request.product ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            body["ReqTimestamp"] = request.reqTimestamp!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRegionAz",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRegionAzResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRegionAz(_ request: QueryRegionAzRequest) async throws -> QueryRegionAzResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRegionAzWithOptions(request as! QueryRegionAzRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func safeChangeCancelWithOptions(_ request: SafeChangeCancelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SafeChangeCancelResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            body["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            body["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bgVid)) {
            body["BgVid"] = request.bgVid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateEmpNo)) {
            body["OperateEmpNo"] = request.operateEmpNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            body["ReqTimestamp"] = request.reqTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceOrderId)) {
            body["SourceOrderId"] = request.sourceOrderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SafeChangeCancel",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SafeChangeCancelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func safeChangeCancel(_ request: SafeChangeCancelRequest) async throws -> SafeChangeCancelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await safeChangeCancelWithOptions(request as! SafeChangeCancelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func safeChangeCheckWithOptions(_ tmpReq: SafeChangeCheckRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SafeChangeCheckResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SafeChangeCheckShrinkRequest = SafeChangeCheckShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.harmNoticeCombineParam)) {
            request.harmNoticeCombineParamShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.harmNoticeCombineParam, "HarmNoticeCombineParam", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checker)) {
            query["Checker"] = request.checker ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.harmChangeNoticeEnum)) {
            query["HarmChangeNoticeEnum"] = request.harmChangeNoticeEnum ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.affectCustomer)) {
            body["AffectCustomer"] = request.affectCustomer ?? "";
        }
        var bodyFlat: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.approveFlowParam)) {
            bodyFlat["ApproveFlowParam"] = request.approveFlowParam!;
        }
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            body["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            body["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bgCustomTemplateExtraDTO)) {
            bodyFlat["BgCustomTemplateExtraDTO"] = request.bgCustomTemplateExtraDTO!;
        }
        if (!TeaUtils.Client.isUnset(request.blockInfos)) {
            body["BlockInfos"] = request.blockInfos ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.callBackInfo)) {
            bodyFlat["CallBackInfo"] = request.callBackInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.changeDataType)) {
            body["ChangeDataType"] = request.changeDataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeDesc)) {
            body["ChangeDesc"] = request.changeDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeEndTime)) {
            body["ChangeEndTime"] = request.changeEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.changeEnv)) {
            body["ChangeEnv"] = request.changeEnv ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeItems)) {
            body["ChangeItems"] = request.changeItems ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeObject)) {
            body["ChangeObject"] = request.changeObject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeOptSubType)) {
            body["ChangeOptSubType"] = request.changeOptSubType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeOptType)) {
            body["ChangeOptType"] = request.changeOptType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeReason)) {
            body["ChangeReason"] = request.changeReason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeRmarks)) {
            body["ChangeRmarks"] = request.changeRmarks ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeSchemes)) {
            body["ChangeSchemes"] = request.changeSchemes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeStartTime)) {
            body["ChangeStartTime"] = request.changeStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.changeSubTypeDesc)) {
            body["ChangeSubTypeDesc"] = request.changeSubTypeDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeSystem)) {
            body["ChangeSystem"] = request.changeSystem ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeTimes)) {
            body["ChangeTimes"] = request.changeTimes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.changeTitle)) {
            body["ChangeTitle"] = request.changeTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeValidation)) {
            body["ChangeValidation"] = request.changeValidation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.creatorEmpId)) {
            body["CreatorEmpId"] = request.creatorEmpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.damagedChangeNotices)) {
            bodyFlat["DamagedChangeNotices"] = request.damagedChangeNotices ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.executorEmpId)) {
            body["ExecutorEmpId"] = request.executorEmpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraInfo)) {
            body["ExtraInfo"] = request.extraInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.follower)) {
            body["Follower"] = request.follower ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.grayStatus)) {
            body["GrayStatus"] = request.grayStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.harmNoticeCombineParamShrink)) {
            body["HarmNoticeCombineParam"] = request.harmNoticeCombineParamShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidence)) {
            body["Incidence"] = request.incidence ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.influenceInfo)) {
            bodyFlat["InfluenceInfo"] = request.influenceInfo!;
        }
        if (!TeaUtils.Client.isUnset(request.instance)) {
            bodyFlat["Instance"] = request.instance!;
        }
        if (!TeaUtils.Client.isUnset(request.needModifyDoc)) {
            body["NeedModifyDoc"] = request.needModifyDoc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operateEmpNo)) {
            body["OperateEmpNo"] = request.operateEmpNo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.product)) {
            body["Product"] = request.product ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.releasePackageInfos)) {
            body["ReleasePackageInfos"] = request.releasePackageInfos ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            body["ReqTimestamp"] = request.reqTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.reuseSourceOrderId)) {
            body["ReuseSourceOrderId"] = request.reuseSourceOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.riskLevel)) {
            body["RiskLevel"] = request.riskLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rollback)) {
            body["Rollback"] = request.rollback ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceName)) {
            body["SourceName"] = request.sourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceOrderId)) {
            body["SourceOrderId"] = request.sourceOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceUrl)) {
            body["SourceUrl"] = request.sourceUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.whiteType)) {
            body["whiteType"] = request.whiteType!;
        }
        body = Tea.TeaConverter.merge([:], body, AlibabaCloudOpenApiUtil.Client.query(bodyFlat))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SafeChangeCheck",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SafeChangeCheckResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func safeChangeCheck(_ request: SafeChangeCheckRequest) async throws -> SafeChangeCheckResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await safeChangeCheckWithOptions(request as! SafeChangeCheckRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func safeChangeEndWithOptions(_ request: SafeChangeEndRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SafeChangeEndResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            body["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            body["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeEndTime)) {
            body["ChangeEndTime"] = request.changeEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.changeResult)) {
            body["ChangeResult"] = request.changeResult ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.curBatchNo)) {
            body["CurBatchNo"] = request.curBatchNo!;
        }
        if (!TeaUtils.Client.isUnset(request.executorEmpId)) {
            body["ExecutorEmpId"] = request.executorEmpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            body["ReqTimestamp"] = request.reqTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceOrderId)) {
            body["SourceOrderId"] = request.sourceOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalBatchNo)) {
            body["TotalBatchNo"] = request.totalBatchNo!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SafeChangeEnd",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SafeChangeEndResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func safeChangeEnd(_ request: SafeChangeEndRequest) async throws -> SafeChangeEndResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await safeChangeEndWithOptions(request as! SafeChangeEndRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func safeChangeQueryWithOptions(_ request: SafeChangeQueryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SafeChangeQueryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.returnType)) {
            query["ReturnType"] = request.returnType!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            body["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            body["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needValidate)) {
            body["NeedValidate"] = request.needValidate!;
        }
        if (!TeaUtils.Client.isUnset(request.queryType)) {
            body["QueryType"] = request.queryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            body["ReqTimestamp"] = request.reqTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceOrderId)) {
            body["SourceOrderId"] = request.sourceOrderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SafeChangeQuery",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SafeChangeQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func safeChangeQuery(_ request: SafeChangeQueryRequest) async throws -> SafeChangeQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await safeChangeQueryWithOptions(request as! SafeChangeQueryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func safeChangeQueryApproveFlowWithOptions(_ request: SafeChangeQueryApproveFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SafeChangeQueryApproveFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            body["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            body["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            body["ReqTimestamp"] = request.reqTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceOrderId)) {
            body["SourceOrderId"] = request.sourceOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stage)) {
            body["Stage"] = request.stage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SafeChangeQueryApproveFlow",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SafeChangeQueryApproveFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func safeChangeQueryApproveFlow(_ request: SafeChangeQueryApproveFlowRequest) async throws -> SafeChangeQueryApproveFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await safeChangeQueryApproveFlowWithOptions(request as! SafeChangeQueryApproveFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func safeChangeStartWithOptions(_ request: SafeChangeStartRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SafeChangeStartResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            body["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            body["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeEndTime)) {
            body["ChangeEndTime"] = request.changeEndTime!;
        }
        if (!TeaUtils.Client.isUnset(request.changeObject)) {
            body["ChangeObject"] = request.changeObject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeOptType)) {
            body["ChangeOptType"] = request.changeOptType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.changeStartTime)) {
            body["ChangeStartTime"] = request.changeStartTime!;
        }
        if (!TeaUtils.Client.isUnset(request.changeTitle)) {
            body["ChangeTitle"] = request.changeTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.creatorEmpId)) {
            body["CreatorEmpId"] = request.creatorEmpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.curBatchNo)) {
            body["CurBatchNo"] = request.curBatchNo!;
        }
        if (!TeaUtils.Client.isUnset(request.executorEmpId)) {
            body["ExecutorEmpId"] = request.executorEmpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            body["ReqTimestamp"] = request.reqTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceOrderId)) {
            body["SourceOrderId"] = request.sourceOrderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalBatchNo)) {
            body["TotalBatchNo"] = request.totalBatchNo!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SafeChangeStart",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SafeChangeStartResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func safeChangeStart(_ request: SafeChangeStartRequest) async throws -> SafeChangeStartResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await safeChangeStartWithOptions(request as! SafeChangeStartRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func safeChangeStartApproveWithOptions(_ request: SafeChangeStartApproveRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SafeChangeStartApproveResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            body["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            body["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.creatorEmpId)) {
            body["CreatorEmpId"] = request.creatorEmpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraInfo)) {
            body["ExtraInfo"] = request.extraInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            body["ReqTimestamp"] = request.reqTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceOrderId)) {
            body["SourceOrderId"] = request.sourceOrderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SafeChangeStartApprove",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SafeChangeStartApproveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func safeChangeStartApprove(_ request: SafeChangeStartApproveRequest) async throws -> SafeChangeStartApproveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await safeChangeStartApproveWithOptions(request as! SafeChangeStartApproveRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func safeScopeDataWithOptions(_ request: SafeScopeDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SafeScopeDataResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            body["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            body["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            body["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.codeList)) {
            body["CodeList"] = request.codeList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.factor)) {
            body["Factor"] = request.factor ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupBy)) {
            body["GroupBy"] = request.groupBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idList)) {
            body["IdList"] = request.idList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.item)) {
            body["Item"] = request.item ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            body["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.needTotalCount)) {
            body["NeedTotalCount"] = request.needTotalCount!;
        }
        if (!TeaUtils.Client.isUnset(request.orderBy)) {
            body["OrderBy"] = request.orderBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orderDirection)) {
            body["OrderDirection"] = request.orderDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.page)) {
            body["Page"] = request.page!;
        }
        if (!TeaUtils.Client.isUnset(request.parentCode)) {
            body["ParentCode"] = request.parentCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.parentId)) {
            body["ParentId"] = request.parentId!;
        }
        if (!TeaUtils.Client.isUnset(request.productCode)) {
            body["ProductCode"] = request.productCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productId)) {
            body["ProductId"] = request.productId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionNameEn)) {
            body["RegionNameEn"] = request.regionNameEn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            body["ReqTimestamp"] = request.reqTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.searchValue)) {
            body["SearchValue"] = request.searchValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.uid)) {
            body["Uid"] = request.uid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SafeScopeData",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SafeScopeDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func safeScopeData(_ request: SafeScopeDataRequest) async throws -> SafeScopeDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await safeScopeDataWithOptions(request as! SafeScopeDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startApproveWithOptions(_ request: StartApproveRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartApproveResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            query["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            query["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.creatorEmpId)) {
            query["CreatorEmpId"] = request.creatorEmpId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.extraInfo)) {
            query["ExtraInfo"] = request.extraInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            query["ReqTimestamp"] = request.reqTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.sourceOrderId)) {
            query["SourceOrderId"] = request.sourceOrderId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartApprove",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartApproveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startApprove(_ request: StartApproveRequest) async throws -> StartApproveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startApproveWithOptions(request as! StartApproveRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncProductWithOptions(_ request: SyncProductRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SyncProductResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authKey)) {
            body["AuthKey"] = request.authKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authSign)) {
            body["AuthSign"] = request.authSign ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reqTimestamp)) {
            body["ReqTimestamp"] = request.reqTimestamp!;
        }
        if (!TeaUtils.Client.isUnset(request.syncProductList)) {
            body["SyncProductList"] = request.syncProductList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SyncProduct",
            "version": "2022-01-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyncProductResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncProduct(_ request: SyncProductRequest) async throws -> SyncProductResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await syncProductWithOptions(request as! SyncProductRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
