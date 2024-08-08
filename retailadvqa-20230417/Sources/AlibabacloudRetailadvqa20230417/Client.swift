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
        self._endpoint = try getEndpoint("retailadvqa", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addMemberBasicInfoWithOptions(_ tmpReq: AddMemberBasicInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddMemberBasicInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AddMemberBasicInfoShrinkRequest = AddMemberBasicInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.body)) {
            request.bodyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.body, "body", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bodyShrink)) {
            query["body"] = request.bodyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddMemberBasicInfo",
            "version": "2023-04-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddMemberBasicInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addMemberBasicInfo(_ request: AddMemberBasicInfoRequest) async throws -> AddMemberBasicInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addMemberBasicInfoWithOptions(request as! AddMemberBasicInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchSaveOrderPopWithOptions(_ tmpReq: BatchSaveOrderPopRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchSaveOrderPopResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BatchSaveOrderPopShrinkRequest = BatchSaveOrderPopShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.orders)) {
            request.ordersShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.orders, "Orders", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ordersShrink)) {
            query["Orders"] = request.ordersShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchSaveOrderPop",
            "version": "2023-04-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchSaveOrderPopResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchSaveOrderPop(_ request: BatchSaveOrderPopRequest) async throws -> BatchSaveOrderPopResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchSaveOrderPopWithOptions(request as! BatchSaveOrderPopRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func calculateMemberLevelWithOptions(_ tmpReq: CalculateMemberLevelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CalculateMemberLevelResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CalculateMemberLevelShrinkRequest = CalculateMemberLevelShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.body)) {
            request.bodyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.body, "Body", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bodyShrink)) {
            query["Body"] = request.bodyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CalculateMemberLevel",
            "version": "2023-04-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CalculateMemberLevelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func calculateMemberLevel(_ request: CalculateMemberLevelRequest) async throws -> CalculateMemberLevelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await calculateMemberLevelWithOptions(request as! CalculateMemberLevelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func editMemberBasicInfoWithOptions(_ tmpReq: EditMemberBasicInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EditMemberBasicInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: EditMemberBasicInfoShrinkRequest = EditMemberBasicInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.body)) {
            request.bodyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.body, "Body", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bodyShrink)) {
            query["Body"] = request.bodyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EditMemberBasicInfo",
            "version": "2023-04-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EditMemberBasicInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func editMemberBasicInfo(_ request: EditMemberBasicInfoRequest) async throws -> EditMemberBasicInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await editMemberBasicInfoWithOptions(request as! EditMemberBasicInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func memberAccountDetailPageQueryWithOptions(_ tmpReq: MemberAccountDetailPageQueryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MemberAccountDetailPageQueryResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: MemberAccountDetailPageQueryShrinkRequest = MemberAccountDetailPageQueryShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.body)) {
            request.bodyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.body, "body", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bodyShrink)) {
            query["body"] = request.bodyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MemberAccountDetailPageQuery",
            "version": "2023-04-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MemberAccountDetailPageQueryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func memberAccountDetailPageQuery(_ request: MemberAccountDetailPageQueryRequest) async throws -> MemberAccountDetailPageQueryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await memberAccountDetailPageQueryWithOptions(request as! MemberAccountDetailPageQueryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func memberPointChangeWithOptions(_ tmpReq: MemberPointChangeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> MemberPointChangeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: MemberPointChangeShrinkRequest = MemberPointChangeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.body)) {
            request.bodyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.body, "body", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bodyShrink)) {
            query["body"] = request.bodyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "MemberPointChange",
            "version": "2023-04-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(MemberPointChangeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func memberPointChange(_ request: MemberPointChangeRequest) async throws -> MemberPointChangeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await memberPointChangeWithOptions(request as! MemberPointChangeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMemberBasicInfoWithOptions(_ tmpReq: QueryMemberBasicInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryMemberBasicInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: QueryMemberBasicInfoShrinkRequest = QueryMemberBasicInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.body)) {
            request.bodyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.body, "body", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bodyShrink)) {
            query["body"] = request.bodyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryMemberBasicInfo",
            "version": "2023-04-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryMemberBasicInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryMemberBasicInfo(_ request: QueryMemberBasicInfoRequest) async throws -> QueryMemberBasicInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryMemberBasicInfoWithOptions(request as! QueryMemberBasicInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncCardInfoWithOptions(_ tmpReq: SyncCardInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SyncCardInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SyncCardInfoShrinkRequest = SyncCardInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.body)) {
            request.bodyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.body, "body", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bodyShrink)) {
            query["body"] = request.bodyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SyncCardInfo",
            "version": "2023-04-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyncCardInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncCardInfo(_ request: SyncCardInfoRequest) async throws -> SyncCardInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await syncCardInfoWithOptions(request as! SyncCardInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncMemberBehaviorInfoWithOptions(_ tmpReq: SyncMemberBehaviorInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SyncMemberBehaviorInfoResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SyncMemberBehaviorInfoShrinkRequest = SyncMemberBehaviorInfoShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.body)) {
            request.bodyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.body, "body", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bodyShrink)) {
            query["body"] = request.bodyShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SyncMemberBehaviorInfo",
            "version": "2023-04-17",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SyncMemberBehaviorInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func syncMemberBehaviorInfo(_ request: SyncMemberBehaviorInfoRequest) async throws -> SyncMemberBehaviorInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await syncMemberBehaviorInfoWithOptions(request as! SyncMemberBehaviorInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
