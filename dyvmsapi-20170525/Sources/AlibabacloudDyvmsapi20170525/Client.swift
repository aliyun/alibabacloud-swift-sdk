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
        self._endpoint = try getEndpoint("dyvmsapi", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addVirtualNumberRelationWithOptions(_ request: AddVirtualNumberRelationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddVirtualNumberRelationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.corpNameList)) {
            query["CorpNameList"] = request.corpNameList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.numberList)) {
            query["NumberList"] = request.numberList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNum)) {
            query["PhoneNum"] = request.phoneNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prodCode)) {
            query["ProdCode"] = request.prodCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.routeType)) {
            query["RouteType"] = request.routeType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddVirtualNumberRelation",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddVirtualNumberRelationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addVirtualNumberRelation(_ request: AddVirtualNumberRelationRequest) async throws -> AddVirtualNumberRelationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addVirtualNumberRelationWithOptions(request as! AddVirtualNumberRelationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchRobotSmartCallWithOptions(_ request: BatchRobotSmartCallRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchRobotSmartCallResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calledNumber)) {
            query["CalledNumber"] = request.calledNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calledShowNumber)) {
            query["CalledShowNumber"] = request.calledShowNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpName)) {
            query["CorpName"] = request.corpName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dialogId)) {
            query["DialogId"] = request.dialogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.earlyMediaAsr)) {
            query["EarlyMediaAsr"] = request.earlyMediaAsr!;
        }
        if (!TeaUtils.Client.isUnset(request.isSelfLine)) {
            query["IsSelfLine"] = request.isSelfLine!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduleCall)) {
            query["ScheduleCall"] = request.scheduleCall!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduleTime)) {
            query["ScheduleTime"] = request.scheduleTime!;
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            query["TaskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttsParam)) {
            query["TtsParam"] = request.ttsParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttsParamHead)) {
            query["TtsParamHead"] = request.ttsParamHead ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchRobotSmartCall",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchRobotSmartCallResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchRobotSmartCall(_ request: BatchRobotSmartCallRequest) async throws -> BatchRobotSmartCallResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchRobotSmartCallWithOptions(request as! BatchRobotSmartCallRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelCallWithOptions(_ request: CancelCallRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelCallResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callId)) {
            query["CallId"] = request.callId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "CancelCall",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelCallResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelCall(_ request: CancelCallRequest) async throws -> CancelCallResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelCallWithOptions(request as! CancelCallRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelOrderRobotTaskWithOptions(_ request: CancelOrderRobotTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelOrderRobotTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelOrderRobotTask",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelOrderRobotTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelOrderRobotTask(_ request: CancelOrderRobotTaskRequest) async throws -> CancelOrderRobotTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelOrderRobotTaskWithOptions(request as! CancelOrderRobotTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelRobotTaskWithOptions(_ request: CancelRobotTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelRobotTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelRobotTask",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelRobotTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelRobotTask(_ request: CancelRobotTaskRequest) async throws -> CancelRobotTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelRobotTaskWithOptions(request as! CancelRobotTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeMediaTypeWithOptions(_ request: ChangeMediaTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChangeMediaTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callId)) {
            query["CallId"] = request.callId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calledNum)) {
            query["CalledNum"] = request.calledNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mediaType)) {
            query["MediaType"] = request.mediaType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "ChangeMediaType",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChangeMediaTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func changeMediaType(_ request: ChangeMediaTypeRequest) async throws -> ChangeMediaTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await changeMediaTypeWithOptions(request as! ChangeMediaTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudAgentLoginWithOptions(_ request: CloudAgentLoginRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudAgentLoginResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bindTel)) {
            query["BindTel"] = request.bindTel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bindType)) {
            query["BindType"] = request.bindType!;
        }
        if (!TeaUtils.Client.isUnset(request.cno)) {
            query["Cno"] = request.cno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.loginStatus)) {
            query["LoginStatus"] = request.loginStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.pauseDescription)) {
            query["PauseDescription"] = request.pauseDescription ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudAgentLogin",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudAgentLoginResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudAgentLogin(_ request: CloudAgentLoginRequest) async throws -> CloudAgentLoginResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudAgentLoginWithOptions(request as! CloudAgentLoginRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudAgentLogoutWithOptions(_ request: CloudAgentLogoutRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudAgentLogoutResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cno)) {
            query["Cno"] = request.cno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.ignoreOffline)) {
            query["IgnoreOffline"] = request.ignoreOffline!;
        }
        if (!TeaUtils.Client.isUnset(request.isKickout)) {
            query["IsKickout"] = request.isKickout!;
        }
        if (!TeaUtils.Client.isUnset(request.removeBinding)) {
            query["RemoveBinding"] = request.removeBinding!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudAgentLogout",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudAgentLogoutResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudAgentLogout(_ request: CloudAgentLogoutRequest) async throws -> CloudAgentLogoutResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudAgentLogoutWithOptions(request as! CloudAgentLogoutRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudAgentSetUserDataWithOptions(_ request: CloudAgentSetUserDataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudAgentSetUserDataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cno)) {
            query["Cno"] = request.cno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.direction)) {
            query["Direction"] = request.direction!;
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.userData)) {
            query["UserData"] = request.userData ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudAgentSetUserData",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudAgentSetUserDataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudAgentSetUserData(_ request: CloudAgentSetUserDataRequest) async throws -> CloudAgentSetUserDataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudAgentSetUserDataWithOptions(request as! CloudAgentSetUserDataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudAgentUnlinkWithOptions(_ request: CloudAgentUnlinkRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudAgentUnlinkResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cno)) {
            query["Cno"] = request.cno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.requestUniqueId)) {
            query["RequestUniqueId"] = request.requestUniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.side)) {
            query["Side"] = request.side!;
        }
        if (!TeaUtils.Client.isUnset(request.uniqueId)) {
            query["UniqueId"] = request.uniqueId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudAgentUnlink",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudAgentUnlinkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudAgentUnlink(_ request: CloudAgentUnlinkRequest) async throws -> CloudAgentUnlinkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudAgentUnlinkWithOptions(request as! CloudAgentUnlinkRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudBatchCreateAgentWithOptions(_ request: CloudBatchCreateAgentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudBatchCreateAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.active)) {
            query["Active"] = request.active!;
        }
        if (!TeaUtils.Client.isUnset(request.areaCode)) {
            query["AreaCode"] = request.areaCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callPower)) {
            query["CallPower"] = request.callPower!;
        }
        if (!TeaUtils.Client.isUnset(request.cno)) {
            query["Cno"] = request.cno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endCno)) {
            query["EndCno"] = request.endCno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.ibRecord)) {
            query["IbRecord"] = request.ibRecord!;
        }
        if (!TeaUtils.Client.isUnset(request.isAsr)) {
            query["IsAsr"] = request.isAsr!;
        }
        if (!TeaUtils.Client.isUnset(request.isOb)) {
            query["IsOb"] = request.isOb!;
        }
        if (!TeaUtils.Client.isUnset(request.isQualityCheck)) {
            query["IsQualityCheck"] = request.isQualityCheck!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.obClid)) {
            query["ObClid"] = request.obClid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.obClidProperty)) {
            query["ObClidProperty"] = request.obClidProperty ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.obClidType)) {
            query["ObClidType"] = request.obClidType!;
        }
        if (!TeaUtils.Client.isUnset(request.obRecord)) {
            query["ObRecord"] = request.obRecord!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.power)) {
            query["Power"] = request.power!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.skillIds)) {
            query["SkillIds"] = request.skillIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillLevels)) {
            query["SkillLevels"] = request.skillLevels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webrtcUrlType)) {
            query["WebrtcUrlType"] = request.webrtcUrlType!;
        }
        if (!TeaUtils.Client.isUnset(request.wrapup)) {
            query["Wrapup"] = request.wrapup!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudBatchCreateAgent",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudBatchCreateAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudBatchCreateAgent(_ request: CloudBatchCreateAgentRequest) async throws -> CloudBatchCreateAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudBatchCreateAgentWithOptions(request as! CloudBatchCreateAgentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudBatchGetAgentStatusWithOptions(_ request: CloudBatchGetAgentStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudBatchGetAgentStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cnos)) {
            query["Cnos"] = request.cnos ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "CloudBatchGetAgentStatus",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudBatchGetAgentStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudBatchGetAgentStatus(_ request: CloudBatchGetAgentStatusRequest) async throws -> CloudBatchGetAgentStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudBatchGetAgentStatusWithOptions(request as! CloudBatchGetAgentStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudBatchUpdateAgentWithOptions(_ request: CloudBatchUpdateAgentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudBatchUpdateAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.active)) {
            query["Active"] = request.active!;
        }
        if (!TeaUtils.Client.isUnset(request.agentType)) {
            query["AgentType"] = request.agentType!;
        }
        if (!TeaUtils.Client.isUnset(request.areaCode)) {
            query["AreaCode"] = request.areaCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callPower)) {
            query["CallPower"] = request.callPower!;
        }
        if (!TeaUtils.Client.isUnset(request.cnos)) {
            query["Cnos"] = request.cnos ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.ibRecord)) {
            query["IbRecord"] = request.ibRecord!;
        }
        if (!TeaUtils.Client.isUnset(request.isAsr)) {
            query["IsAsr"] = request.isAsr!;
        }
        if (!TeaUtils.Client.isUnset(request.isOb)) {
            query["IsOb"] = request.isOb!;
        }
        if (!TeaUtils.Client.isUnset(request.isObRemember)) {
            query["IsObRemember"] = request.isObRemember ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isQualityCheck)) {
            query["IsQualityCheck"] = request.isQualityCheck!;
        }
        if (!TeaUtils.Client.isUnset(request.isRandom)) {
            query["IsRandom"] = request.isRandom ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.obClid)) {
            query["ObClid"] = request.obClid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.obClidProperty)) {
            query["ObClidProperty"] = request.obClidProperty ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.obClidType)) {
            query["ObClidType"] = request.obClidType!;
        }
        if (!TeaUtils.Client.isUnset(request.obRecord)) {
            query["ObRecord"] = request.obRecord!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.permitObPreviewTime)) {
            query["PermitObPreviewTime"] = request.permitObPreviewTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.power)) {
            query["Power"] = request.power!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.webrtcUrlType)) {
            query["WebrtcUrlType"] = request.webrtcUrlType!;
        }
        if (!TeaUtils.Client.isUnset(request.wrapup)) {
            query["Wrapup"] = request.wrapup!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudBatchUpdateAgent",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudBatchUpdateAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudBatchUpdateAgent(_ request: CloudBatchUpdateAgentRequest) async throws -> CloudBatchUpdateAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudBatchUpdateAgentWithOptions(request as! CloudBatchUpdateAgentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudCreateAgentWithOptions(_ request: CloudCreateAgentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudCreateAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.active)) {
            query["Active"] = request.active!;
        }
        if (!TeaUtils.Client.isUnset(request.areaCode)) {
            query["AreaCode"] = request.areaCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callPower)) {
            query["CallPower"] = request.callPower!;
        }
        if (!TeaUtils.Client.isUnset(request.cno)) {
            query["Cno"] = request.cno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.ibRecord)) {
            query["IbRecord"] = request.ibRecord!;
        }
        if (!TeaUtils.Client.isUnset(request.isAsr)) {
            query["IsAsr"] = request.isAsr!;
        }
        if (!TeaUtils.Client.isUnset(request.isOb)) {
            query["IsOb"] = request.isOb!;
        }
        if (!TeaUtils.Client.isUnset(request.isObRemember)) {
            query["IsObRemember"] = request.isObRemember ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isQualityCheck)) {
            query["IsQualityCheck"] = request.isQualityCheck!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.obClid)) {
            query["ObClid"] = request.obClid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.obClidProperty)) {
            query["ObClidProperty"] = request.obClidProperty ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.obClidType)) {
            query["ObClidType"] = request.obClidType!;
        }
        if (!TeaUtils.Client.isUnset(request.obRecord)) {
            query["ObRecord"] = request.obRecord!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.permitObPreviewTime)) {
            query["PermitObPreviewTime"] = request.permitObPreviewTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.power)) {
            query["Power"] = request.power!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.skillIds)) {
            query["SkillIds"] = request.skillIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillLevels)) {
            query["SkillLevels"] = request.skillLevels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webrtcUrlType)) {
            query["WebrtcUrlType"] = request.webrtcUrlType!;
        }
        if (!TeaUtils.Client.isUnset(request.wrapup)) {
            query["Wrapup"] = request.wrapup!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudCreateAgent",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudCreateAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudCreateAgent(_ request: CloudCreateAgentRequest) async throws -> CloudCreateAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudCreateAgentWithOptions(request as! CloudCreateAgentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudCreateTaskWithOptions(_ request: CloudCreateTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudCreateTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentGroup)) {
            query["AgentGroup"] = request.agentGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentTimeout)) {
            query["AgentTimeout"] = request.agentTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.answerRate)) {
            query["AnswerRate"] = request.answerRate!;
        }
        if (!TeaUtils.Client.isUnset(request.autoComplete)) {
            query["AutoComplete"] = request.autoComplete!;
        }
        if (!TeaUtils.Client.isUnset(request.autoDelete)) {
            query["AutoDelete"] = request.autoDelete!;
        }
        if (!TeaUtils.Client.isUnset(request.autoStart)) {
            query["AutoStart"] = request.autoStart!;
        }
        if (!TeaUtils.Client.isUnset(request.autoStartDay)) {
            query["AutoStartDay"] = request.autoStartDay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoStartTime)) {
            query["AutoStartTime"] = request.autoStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoStop)) {
            query["AutoStop"] = request.autoStop!;
        }
        if (!TeaUtils.Client.isUnset(request.autoStopDay)) {
            query["AutoStopDay"] = request.autoStopDay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoStopTime)) {
            query["AutoStopTime"] = request.autoStopTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoTaskType)) {
            query["AutoTaskType"] = request.autoTaskType!;
        }
        if (!TeaUtils.Client.isUnset(request.autoTriggerTimeStrategy)) {
            query["AutoTriggerTimeStrategy"] = request.autoTriggerTimeStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callGroupType)) {
            query["CallGroupType"] = request.callGroupType!;
        }
        if (!TeaUtils.Client.isUnset(request.callLimitStrategy)) {
            query["CallLimitStrategy"] = request.callLimitStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callPriorityStrategy)) {
            query["CallPriorityStrategy"] = request.callPriorityStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callRouteStrategy)) {
            query["CallRouteStrategy"] = request.callRouteStrategy!;
        }
        if (!TeaUtils.Client.isUnset(request.callStrategy)) {
            query["CallStrategy"] = request.callStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callVariables)) {
            query["CallVariables"] = request.callVariables ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clidProperty)) {
            query["ClidProperty"] = request.clidProperty ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cnos)) {
            query["Cnos"] = request.cnos ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.concurrency)) {
            query["Concurrency"] = request.concurrency!;
        }
        if (!TeaUtils.Client.isUnset(request.customerClidType)) {
            query["CustomerClidType"] = request.customerClidType!;
        }
        if (!TeaUtils.Client.isUnset(request.customerClidWeight)) {
            query["CustomerClidWeight"] = request.customerClidWeight ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerClidWeightFlag)) {
            query["CustomerClidWeightFlag"] = request.customerClidWeightFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.customerClids)) {
            query["CustomerClids"] = request.customerClids ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerClidsCategory)) {
            query["CustomerClidsCategory"] = request.customerClidsCategory!;
        }
        if (!TeaUtils.Client.isUnset(request.customerClidsGroup)) {
            query["CustomerClidsGroup"] = request.customerClidsGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerMoh)) {
            query["CustomerMoh"] = request.customerMoh ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerTimeout)) {
            query["CustomerTimeout"] = request.customerTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.customerVoice)) {
            query["CustomerVoice"] = request.customerVoice ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.forceEndFlag)) {
            query["ForceEndFlag"] = request.forceEndFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.isRewarm)) {
            query["IsRewarm"] = request.isRewarm!;
        }
        if (!TeaUtils.Client.isUnset(request.ivrId)) {
            query["IvrId"] = request.ivrId!;
        }
        if (!TeaUtils.Client.isUnset(request.ivrName)) {
            query["IvrName"] = request.ivrName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxWaitTime)) {
            query["MaxWaitTime"] = request.maxWaitTime!;
        }
        if (!TeaUtils.Client.isUnset(request.minAvailableAgentCount)) {
            query["MinAvailableAgentCount"] = request.minAvailableAgentCount!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.predictAdjust)) {
            query["PredictAdjust"] = request.predictAdjust!;
        }
        if (!TeaUtils.Client.isUnset(request.quotiety)) {
            query["Quotiety"] = request.quotiety!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.retryStrategy)) {
            query["RetryStrategy"] = request.retryStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.retryStrategyOnlyToday)) {
            query["RetryStrategyOnlyToday"] = request.retryStrategyOnlyToday!;
        }
        if (!TeaUtils.Client.isUnset(request.retryStrategyTimeType)) {
            query["RetryStrategyTimeType"] = request.retryStrategyTimeType!;
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            query["TemplateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeStrategy)) {
            query["TimeStrategy"] = request.timeStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type!;
        }
        if (!TeaUtils.Client.isUnset(request.userFields)) {
            query["UserFields"] = request.userFields ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.warmUpDuration)) {
            query["WarmUpDuration"] = request.warmUpDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.wrapup)) {
            query["Wrapup"] = request.wrapup!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudCreateTask",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudCreateTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudCreateTask(_ request: CloudCreateTaskRequest) async throws -> CloudCreateTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudCreateTaskWithOptions(request as! CloudCreateTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudDeleteAgentWithOptions(_ request: CloudDeleteAgentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudDeleteAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cno)) {
            query["Cno"] = request.cno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "CloudDeleteAgent",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudDeleteAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudDeleteAgent(_ request: CloudDeleteAgentRequest) async throws -> CloudDeleteAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudDeleteAgentWithOptions(request as! CloudDeleteAgentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudDeleteAgentTelWithOptions(_ request: CloudDeleteAgentTelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudDeleteAgentTelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cno)) {
            query["Cno"] = request.cno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.tel)) {
            query["Tel"] = request.tel ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudDeleteAgentTel",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudDeleteAgentTelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudDeleteAgentTel(_ request: CloudDeleteAgentTelRequest) async throws -> CloudDeleteAgentTelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudDeleteAgentTelWithOptions(request as! CloudDeleteAgentTelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudGetAgentWithOptions(_ request: CloudGetAgentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudGetAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cno)) {
            query["Cno"] = request.cno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "CloudGetAgent",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudGetAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudGetAgent(_ request: CloudGetAgentRequest) async throws -> CloudGetAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudGetAgentWithOptions(request as! CloudGetAgentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudGetAgentStatusWithOptions(_ request: CloudGetAgentStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudGetAgentStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cno)) {
            query["Cno"] = request.cno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "CloudGetAgentStatus",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudGetAgentStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudGetAgentStatus(_ request: CloudGetAgentStatusRequest) async throws -> CloudGetAgentStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudGetAgentStatusWithOptions(request as! CloudGetAgentStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudGetObCdrWithOptions(_ request: CloudGetObCdrRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudGetObCdrResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.uniqueId)) {
            query["UniqueId"] = request.uniqueId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudGetObCdr",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudGetObCdrResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudGetObCdr(_ request: CloudGetObCdrRequest) async throws -> CloudGetObCdrResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudGetObCdrWithOptions(request as! CloudGetObCdrRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudGetRecordUrlWithOptions(_ request: CloudGetRecordUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudGetRecordUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callType)) {
            query["CallType"] = request.callType!;
        }
        if (!TeaUtils.Client.isUnset(request.download)) {
            query["Download"] = request.download!;
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.recordFile)) {
            query["RecordFile"] = request.recordFile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordFormat)) {
            query["RecordFormat"] = request.recordFormat!;
        }
        if (!TeaUtils.Client.isUnset(request.recordSide)) {
            query["RecordSide"] = request.recordSide!;
        }
        if (!TeaUtils.Client.isUnset(request.recordType)) {
            query["RecordType"] = request.recordType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudGetRecordUrl",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudGetRecordUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudGetRecordUrl(_ request: CloudGetRecordUrlRequest) async throws -> CloudGetRecordUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudGetRecordUrlWithOptions(request as! CloudGetRecordUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudImportTaskTelWithOptions(_ tmpReq: CloudImportTaskTelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudImportTaskTelResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CloudImportTaskTelShrinkRequest = CloudImportTaskTelShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.taskTelList)) {
            request.taskTelListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.taskTelList, "TaskTelList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bridgeVoicePath)) {
            query["BridgeVoicePath"] = request.bridgeVoicePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bridgeVoiceType)) {
            query["BridgeVoiceType"] = request.bridgeVoiceType!;
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.fileId)) {
            query["FileId"] = request.fileId!;
        }
        if (!TeaUtils.Client.isUnset(request.importTelAutoStart)) {
            query["ImportTelAutoStart"] = request.importTelAutoStart!;
        }
        if (!TeaUtils.Client.isUnset(request.isRepeat)) {
            query["IsRepeat"] = request.isRepeat!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.priority)) {
            query["Priority"] = request.priority!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskTelListShrink)) {
            query["TaskTelList"] = request.taskTelListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudImportTaskTel",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudImportTaskTelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudImportTaskTel(_ request: CloudImportTaskTelRequest) async throws -> CloudImportTaskTelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudImportTaskTelWithOptions(request as! CloudImportTaskTelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudInterruptIvrWithOptions(_ request: CloudInterruptIvrRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudInterruptIvrResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkName)) {
            query["CheckName"] = request.checkName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkValue)) {
            query["CheckValue"] = request.checkValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.uniqueId)) {
            query["UniqueId"] = request.uniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userField)) {
            query["UserField"] = request.userField ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudInterruptIvr",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudInterruptIvrResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudInterruptIvr(_ request: CloudInterruptIvrRequest) async throws -> CloudInterruptIvrResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudInterruptIvrWithOptions(request as! CloudInterruptIvrRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudListAgentTelWithOptions(_ request: CloudListAgentTelRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudListAgentTelResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cno)) {
            query["Cno"] = request.cno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.tel)) {
            query["Tel"] = request.tel ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudListAgentTel",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudListAgentTelResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudListAgentTel(_ request: CloudListAgentTelRequest) async throws -> CloudListAgentTelResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudListAgentTelWithOptions(request as! CloudListAgentTelRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudListFreeAgentWithOptions(_ request: CloudListFreeAgentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudListFreeAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "CloudListFreeAgent",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudListFreeAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudListFreeAgent(_ request: CloudListFreeAgentRequest) async throws -> CloudListFreeAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudListFreeAgentWithOptions(request as! CloudListFreeAgentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudListOnlineAgentWithOptions(_ request: CloudListOnlineAgentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudListOnlineAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cnos)) {
            query["Cnos"] = request.cnos ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pauseDescription)) {
            query["PauseDescription"] = request.pauseDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pauseType)) {
            query["PauseType"] = request.pauseType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.qnos)) {
            query["Qnos"] = request.qnos ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.stateCode)) {
            query["StateCode"] = request.stateCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudListOnlineAgent",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudListOnlineAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudListOnlineAgent(_ request: CloudListOnlineAgentRequest) async throws -> CloudListOnlineAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudListOnlineAgentWithOptions(request as! CloudListOnlineAgentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudOutboundObClidReportWithOptions(_ request: CloudOutboundObClidReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudOutboundObClidReportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.areaCodes)) {
            query["AreaCodes"] = request.areaCodes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endHour)) {
            query["EndHour"] = request.endHour!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            query["Start"] = request.start!;
        }
        if (!TeaUtils.Client.isUnset(request.startHour)) {
            query["StartHour"] = request.startHour!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statisticMethod)) {
            query["StatisticMethod"] = request.statisticMethod!;
        }
        if (!TeaUtils.Client.isUnset(request.timeRangeType)) {
            query["TimeRangeType"] = request.timeRangeType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudOutboundObClidReport",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudOutboundObClidReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudOutboundObClidReport(_ request: CloudOutboundObClidReportRequest) async throws -> CloudOutboundObClidReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudOutboundObClidReportWithOptions(request as! CloudOutboundObClidReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudOutboundPreviewObReportWithOptions(_ request: CloudOutboundPreviewObReportRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudOutboundPreviewObReportResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cnos)) {
            query["Cnos"] = request.cnos ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endHour)) {
            query["EndHour"] = request.endHour!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            query["Start"] = request.start!;
        }
        if (!TeaUtils.Client.isUnset(request.startHour)) {
            query["StartHour"] = request.startHour!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statisticMethod)) {
            query["StatisticMethod"] = request.statisticMethod!;
        }
        if (!TeaUtils.Client.isUnset(request.timeRangeType)) {
            query["TimeRangeType"] = request.timeRangeType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudOutboundPreviewObReport",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudOutboundPreviewObReportResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudOutboundPreviewObReport(_ request: CloudOutboundPreviewObReportRequest) async throws -> CloudOutboundPreviewObReportResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudOutboundPreviewObReportWithOptions(request as! CloudOutboundPreviewObReportRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudPreviewoutcallWithOptions(_ request: CloudPreviewoutcallRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudPreviewoutcallResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.backupTels)) {
            query["BackupTels"] = request.backupTels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callVariables)) {
            query["CallVariables"] = request.callVariables ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cdrIsAsr)) {
            query["CdrIsAsr"] = request.cdrIsAsr!;
        }
        if (!TeaUtils.Client.isUnset(request.clidList)) {
            query["ClidList"] = request.clidList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cno)) {
            query["Cno"] = request.cno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crnId)) {
            query["CrnId"] = request.crnId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dialTelTimeout)) {
            query["DialTelTimeout"] = request.dialTelTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.isInvestigation)) {
            query["IsInvestigation"] = request.isInvestigation!;
        }
        if (!TeaUtils.Client.isUnset(request.obClid)) {
            query["ObClid"] = request.obClid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.obClidAreaCode)) {
            query["ObClidAreaCode"] = request.obClidAreaCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.obClidGroup)) {
            query["ObClidGroup"] = request.obClidGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestUniqueId)) {
            query["RequestUniqueId"] = request.requestUniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tel)) {
            query["Tel"] = request.tel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudPreviewoutcall",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudPreviewoutcallResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudPreviewoutcall(_ request: CloudPreviewoutcallRequest) async throws -> CloudPreviewoutcallResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudPreviewoutcallWithOptions(request as! CloudPreviewoutcallRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudQueryAgentWithOptions(_ request: CloudQueryAgentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudQueryAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.active)) {
            query["Active"] = request.active!;
        }
        if (!TeaUtils.Client.isUnset(request.cnos)) {
            query["Cnos"] = request.cnos ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.qno)) {
            query["Qno"] = request.qno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.returnQueue)) {
            query["ReturnQueue"] = request.returnQueue!;
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            query["Start"] = request.start!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.webrtcUrlType)) {
            query["WebrtcUrlType"] = request.webrtcUrlType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudQueryAgent",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudQueryAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudQueryAgent(_ request: CloudQueryAgentRequest) async throws -> CloudQueryAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudQueryAgentWithOptions(request as! CloudQueryAgentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudQueryAgentCnoAndNameWithOptions(_ request: CloudQueryAgentCnoAndNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudQueryAgentCnoAndNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cnos)) {
            query["Cnos"] = request.cnos ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "CloudQueryAgentCnoAndName",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudQueryAgentCnoAndNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudQueryAgentCnoAndName(_ request: CloudQueryAgentCnoAndNameRequest) async throws -> CloudQueryAgentCnoAndNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudQueryAgentCnoAndNameWithOptions(request as! CloudQueryAgentCnoAndNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudQueryAgentGroupWithOptions(_ request: CloudQueryAgentGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudQueryAgentGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cno)) {
            query["Cno"] = request.cno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "CloudQueryAgentGroup",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudQueryAgentGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudQueryAgentGroup(_ request: CloudQueryAgentGroupRequest) async throws -> CloudQueryAgentGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudQueryAgentGroupWithOptions(request as! CloudQueryAgentGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudQueryAgentSkillWithOptions(_ request: CloudQueryAgentSkillRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudQueryAgentSkillResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cnos)) {
            query["Cnos"] = request.cnos ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "CloudQueryAgentSkill",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudQueryAgentSkillResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudQueryAgentSkill(_ request: CloudQueryAgentSkillRequest) async throws -> CloudQueryAgentSkillResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudQueryAgentSkillWithOptions(request as! CloudQueryAgentSkillRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudQueryIbCdrWithOptions(_ request: CloudQueryIbCdrRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudQueryIbCdrResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calleeNumber)) {
            query["CalleeNumber"] = request.calleeNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            query["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cno)) {
            query["Cno"] = request.cno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerNumber)) {
            query["CustomerNumber"] = request.customerNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.hotline)) {
            query["Hotline"] = request.hotline ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.joinQueueCode)) {
            query["JoinQueueCode"] = request.joinQueueCode!;
        }
        if (!TeaUtils.Client.isUnset(request.leaveQueueCode)) {
            query["LeaveQueueCode"] = request.leaveQueueCode!;
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.province)) {
            query["Province"] = request.province ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.qno)) {
            query["Qno"] = request.qno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            query["Start"] = request.start!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.timeRangeType)) {
            query["TimeRangeType"] = request.timeRangeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uniqueId)) {
            query["UniqueId"] = request.uniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userFieldValue)) {
            query["UserFieldValue"] = request.userFieldValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userFieldkey)) {
            query["UserFieldkey"] = request.userFieldkey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudQueryIbCdr",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudQueryIbCdrResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudQueryIbCdr(_ request: CloudQueryIbCdrRequest) async throws -> CloudQueryIbCdrResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudQueryIbCdrWithOptions(request as! CloudQueryIbCdrRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudQueryObCdrWithOptions(_ request: CloudQueryObCdrRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudQueryObCdrResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentName)) {
            query["AgentName"] = request.agentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentNumber)) {
            query["AgentNumber"] = request.agentNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callType)) {
            query["CallType"] = request.callType!;
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            query["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clid)) {
            query["Clid"] = request.clid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cno)) {
            query["Cno"] = request.cno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerNumber)) {
            query["CustomerNumber"] = request.customerNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.downGrade)) {
            query["DownGrade"] = request.downGrade!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.gno)) {
            query["Gno"] = request.gno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isRealAnswer)) {
            query["IsRealAnswer"] = request.isRealAnswer!;
        }
        if (!TeaUtils.Client.isUnset(request.leftDisplayNumber)) {
            query["LeftDisplayNumber"] = request.leftDisplayNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order!;
        }
        if (!TeaUtils.Client.isUnset(request.province)) {
            query["Province"] = request.province ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestUniqueId)) {
            query["RequestUniqueId"] = request.requestUniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.returnCount)) {
            query["ReturnCount"] = request.returnCount!;
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            query["Start"] = request.start!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.timeRangeType)) {
            query["TimeRangeType"] = request.timeRangeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uniqueId)) {
            query["UniqueId"] = request.uniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userFieldValue)) {
            query["UserFieldValue"] = request.userFieldValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userFieldkey)) {
            query["UserFieldkey"] = request.userFieldkey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudQueryObCdr",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudQueryObCdrResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudQueryObCdr(_ request: CloudQueryObCdrRequest) async throws -> CloudQueryObCdrResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudQueryObCdrWithOptions(request as! CloudQueryObCdrRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudQueryPredictiveCallCdrWithOptions(_ request: CloudQueryPredictiveCallCdrRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudQueryPredictiveCallCdrResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentName)) {
            query["AgentName"] = request.agentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            query["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clid)) {
            query["Clid"] = request.clid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cno)) {
            query["Cno"] = request.cno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerNumber)) {
            query["CustomerNumber"] = request.customerNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayNumber)) {
            query["DisplayNumber"] = request.displayNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.downGrade)) {
            query["DownGrade"] = request.downGrade!;
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.gno)) {
            query["Gno"] = request.gno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isRealAnswer)) {
            query["IsRealAnswer"] = request.isRealAnswer!;
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.province)) {
            query["Province"] = request.province ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestUniqueId)) {
            query["RequestUniqueId"] = request.requestUniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            query["Start"] = request.start!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.taskFileId)) {
            query["TaskFileId"] = request.taskFileId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        if (!TeaUtils.Client.isUnset(request.timeRangeType)) {
            query["TimeRangeType"] = request.timeRangeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uniqueId)) {
            query["UniqueId"] = request.uniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userFieldValue)) {
            query["UserFieldValue"] = request.userFieldValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userFieldkey)) {
            query["UserFieldkey"] = request.userFieldkey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudQueryPredictiveCallCdr",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudQueryPredictiveCallCdrResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudQueryPredictiveCallCdr(_ request: CloudQueryPredictiveCallCdrRequest) async throws -> CloudQueryPredictiveCallCdrResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudQueryPredictiveCallCdrWithOptions(request as! CloudQueryPredictiveCallCdrRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudQueryWebcallCdrWithOptions(_ request: CloudQueryWebcallCdrRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudQueryWebcallCdrResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calleeClid)) {
            query["CalleeClid"] = request.calleeClid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calleeDisplayNumber)) {
            query["CalleeDisplayNumber"] = request.calleeDisplayNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calleeNumber)) {
            query["CalleeNumber"] = request.calleeNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.city)) {
            query["City"] = request.city ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clid)) {
            query["Clid"] = request.clid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cno)) {
            query["Cno"] = request.cno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerNumber)) {
            query["CustomerNumber"] = request.customerNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.displayNumber)) {
            query["DisplayNumber"] = request.displayNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime!;
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.gno)) {
            query["Gno"] = request.gno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isRealAnswer)) {
            query["IsRealAnswer"] = request.isRealAnswer!;
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
        }
        if (!TeaUtils.Client.isUnset(request.province)) {
            query["Province"] = request.province ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestUniqueId)) {
            query["RequestUniqueId"] = request.requestUniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.returnCount)) {
            query["ReturnCount"] = request.returnCount!;
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            query["Start"] = request.start!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.timeRangeType)) {
            query["TimeRangeType"] = request.timeRangeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uniqueId)) {
            query["UniqueId"] = request.uniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userFieldValue)) {
            query["UserFieldValue"] = request.userFieldValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userFieldkey)) {
            query["UserFieldkey"] = request.userFieldkey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudQueryWebcallCdr",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudQueryWebcallCdrResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudQueryWebcallCdr(_ request: CloudQueryWebcallCdrRequest) async throws -> CloudQueryWebcallCdrResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudQueryWebcallCdrWithOptions(request as! CloudQueryWebcallCdrRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudStartTaskWithOptions(_ request: CloudStartTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudStartTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudStartTask",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudStartTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudStartTask(_ request: CloudStartTaskRequest) async throws -> CloudStartTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudStartTaskWithOptions(request as! CloudStartTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudUpdateAgentWithOptions(_ request: CloudUpdateAgentRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudUpdateAgentResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.active)) {
            query["Active"] = request.active!;
        }
        if (!TeaUtils.Client.isUnset(request.agentType)) {
            query["AgentType"] = request.agentType!;
        }
        if (!TeaUtils.Client.isUnset(request.areaCode)) {
            query["AreaCode"] = request.areaCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callPower)) {
            query["CallPower"] = request.callPower!;
        }
        if (!TeaUtils.Client.isUnset(request.cno)) {
            query["Cno"] = request.cno ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comment)) {
            query["Comment"] = request.comment ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.ibRecord)) {
            query["IbRecord"] = request.ibRecord!;
        }
        if (!TeaUtils.Client.isUnset(request.isAsr)) {
            query["IsAsr"] = request.isAsr!;
        }
        if (!TeaUtils.Client.isUnset(request.isOb)) {
            query["IsOb"] = request.isOb!;
        }
        if (!TeaUtils.Client.isUnset(request.isObRemember)) {
            query["IsObRemember"] = request.isObRemember ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isQualityCheck)) {
            query["IsQualityCheck"] = request.isQualityCheck!;
        }
        if (!TeaUtils.Client.isUnset(request.isRandom)) {
            query["IsRandom"] = request.isRandom ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.obClid)) {
            query["ObClid"] = request.obClid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.obClidProperty)) {
            query["ObClidProperty"] = request.obClidProperty ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.obClidType)) {
            query["ObClidType"] = request.obClidType!;
        }
        if (!TeaUtils.Client.isUnset(request.obRecord)) {
            query["ObRecord"] = request.obRecord!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.permitObPreviewTime)) {
            query["PermitObPreviewTime"] = request.permitObPreviewTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.power)) {
            query["Power"] = request.power!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.skillIds)) {
            query["SkillIds"] = request.skillIds ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.skillLevels)) {
            query["SkillLevels"] = request.skillLevels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webrtcUrlType)) {
            query["WebrtcUrlType"] = request.webrtcUrlType!;
        }
        if (!TeaUtils.Client.isUnset(request.wrapup)) {
            query["Wrapup"] = request.wrapup!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudUpdateAgent",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudUpdateAgentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudUpdateAgent(_ request: CloudUpdateAgentRequest) async throws -> CloudUpdateAgentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudUpdateAgentWithOptions(request as! CloudUpdateAgentRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudUpdateTaskWithOptions(_ request: CloudUpdateTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudUpdateTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agentGroup)) {
            query["AgentGroup"] = request.agentGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.agentTimeout)) {
            query["AgentTimeout"] = request.agentTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.answerRate)) {
            query["AnswerRate"] = request.answerRate!;
        }
        if (!TeaUtils.Client.isUnset(request.autoComplete)) {
            query["AutoComplete"] = request.autoComplete!;
        }
        if (!TeaUtils.Client.isUnset(request.autoStart)) {
            query["AutoStart"] = request.autoStart!;
        }
        if (!TeaUtils.Client.isUnset(request.autoStartDay)) {
            query["AutoStartDay"] = request.autoStartDay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoStartTime)) {
            query["AutoStartTime"] = request.autoStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoStop)) {
            query["AutoStop"] = request.autoStop!;
        }
        if (!TeaUtils.Client.isUnset(request.autoStopDay)) {
            query["AutoStopDay"] = request.autoStopDay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoStopTime)) {
            query["AutoStopTime"] = request.autoStopTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.autoTaskType)) {
            query["AutoTaskType"] = request.autoTaskType!;
        }
        if (!TeaUtils.Client.isUnset(request.autoTriggerTimeStrategy)) {
            query["AutoTriggerTimeStrategy"] = request.autoTriggerTimeStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callLimitStrategy)) {
            query["CallLimitStrategy"] = request.callLimitStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callPriorityStrategy)) {
            query["CallPriorityStrategy"] = request.callPriorityStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callRouteStrategy)) {
            query["CallRouteStrategy"] = request.callRouteStrategy!;
        }
        if (!TeaUtils.Client.isUnset(request.callStrategy)) {
            query["CallStrategy"] = request.callStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.callVariables)) {
            query["CallVariables"] = request.callVariables ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clidProperty)) {
            query["ClidProperty"] = request.clidProperty ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cnos)) {
            query["Cnos"] = request.cnos ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.concurrency)) {
            query["Concurrency"] = request.concurrency!;
        }
        if (!TeaUtils.Client.isUnset(request.customerClidType)) {
            query["CustomerClidType"] = request.customerClidType!;
        }
        if (!TeaUtils.Client.isUnset(request.customerClidWeight)) {
            query["CustomerClidWeight"] = request.customerClidWeight ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerClidWeightFlag)) {
            query["CustomerClidWeightFlag"] = request.customerClidWeightFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.customerClids)) {
            query["CustomerClids"] = request.customerClids ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerClidsCategory)) {
            query["CustomerClidsCategory"] = request.customerClidsCategory!;
        }
        if (!TeaUtils.Client.isUnset(request.customerClidsGroup)) {
            query["CustomerClidsGroup"] = request.customerClidsGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerMoh)) {
            query["CustomerMoh"] = request.customerMoh ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customerTimeout)) {
            query["CustomerTimeout"] = request.customerTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.customerVoice)) {
            query["CustomerVoice"] = request.customerVoice ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.forceEndFlag)) {
            query["ForceEndFlag"] = request.forceEndFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.isRewarm)) {
            query["IsRewarm"] = request.isRewarm!;
        }
        if (!TeaUtils.Client.isUnset(request.ivrId)) {
            query["IvrId"] = request.ivrId!;
        }
        if (!TeaUtils.Client.isUnset(request.ivrName)) {
            query["IvrName"] = request.ivrName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxWaitTime)) {
            query["MaxWaitTime"] = request.maxWaitTime!;
        }
        if (!TeaUtils.Client.isUnset(request.minAvailableAgentCount)) {
            query["MinAvailableAgentCount"] = request.minAvailableAgentCount!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.predictAdjust)) {
            query["PredictAdjust"] = request.predictAdjust!;
        }
        if (!TeaUtils.Client.isUnset(request.quotiety)) {
            query["Quotiety"] = request.quotiety!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.retryStrategy)) {
            query["RetryStrategy"] = request.retryStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.retryStrategyOnlyToday)) {
            query["RetryStrategyOnlyToday"] = request.retryStrategyOnlyToday!;
        }
        if (!TeaUtils.Client.isUnset(request.retryStrategyTimeType)) {
            query["RetryStrategyTimeType"] = request.retryStrategyTimeType!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeStrategy)) {
            query["TimeStrategy"] = request.timeStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userFields)) {
            query["UserFields"] = request.userFields ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.warmUpDuration)) {
            query["WarmUpDuration"] = request.warmUpDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.wrapup)) {
            query["Wrapup"] = request.wrapup!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudUpdateTask",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudUpdateTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudUpdateTask(_ request: CloudUpdateTaskRequest) async throws -> CloudUpdateTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudUpdateTaskWithOptions(request as! CloudUpdateTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudWebcallWithOptions(_ request: CloudWebcallRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CloudWebcallResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.amd)) {
            query["Amd"] = request.amd!;
        }
        if (!TeaUtils.Client.isUnset(request.clid)) {
            query["Clid"] = request.clid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clidAreaCode)) {
            query["ClidAreaCode"] = request.clidAreaCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clidGroup)) {
            query["ClidGroup"] = request.clidGroup ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clidList)) {
            query["ClidList"] = request.clidList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.crnId)) {
            query["CrnId"] = request.crnId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.delay)) {
            query["Delay"] = request.delay!;
        }
        if (!TeaUtils.Client.isUnset(request.enterpriseId)) {
            query["EnterpriseId"] = request.enterpriseId!;
        }
        if (!TeaUtils.Client.isUnset(request.expirTime)) {
            query["ExpirTime"] = request.expirTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ivrId)) {
            query["IvrId"] = request.ivrId!;
        }
        if (!TeaUtils.Client.isUnset(request.multiTelDelay)) {
            query["MultiTelDelay"] = request.multiTelDelay!;
        }
        if (!TeaUtils.Client.isUnset(request.multiTelPush)) {
            query["MultiTelPush"] = request.multiTelPush!;
        }
        if (!TeaUtils.Client.isUnset(request.requestUniqueId)) {
            query["RequestUniqueId"] = request.requestUniqueId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.retry)) {
            query["Retry"] = request.retry!;
        }
        if (!TeaUtils.Client.isUnset(request.retryInterval)) {
            query["RetryInterval"] = request.retryInterval!;
        }
        if (!TeaUtils.Client.isUnset(request.tel)) {
            query["Tel"] = request.tel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        if (!TeaUtils.Client.isUnset(request.userField)) {
            query["UserField"] = request.userField ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vid)) {
            query["Vid"] = request.vid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CloudWebcall",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CloudWebcallResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cloudWebcall(_ request: CloudWebcallRequest) async throws -> CloudWebcallResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cloudWebcallWithOptions(request as! CloudWebcallRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCallTaskWithOptions(_ request: CreateCallTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateCallTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.data)) {
            query["Data"] = request.data ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dataType)) {
            query["DataType"] = request.dataType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fireTime)) {
            query["FireTime"] = request.fireTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resource)) {
            query["Resource"] = request.resource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scheduleType)) {
            query["ScheduleType"] = request.scheduleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stopTime)) {
            query["StopTime"] = request.stopTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            query["TaskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateCode)) {
            query["TemplateCode"] = request.templateCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            query["TemplateName"] = request.templateName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateCallTask",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateCallTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createCallTask(_ request: CreateCallTaskRequest) async throws -> CreateCallTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createCallTaskWithOptions(request as! CreateCallTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRobotTaskWithOptions(_ request: CreateRobotTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRobotTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.caller)) {
            query["Caller"] = request.caller ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.corpName)) {
            query["CorpName"] = request.corpName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dialogId)) {
            query["DialogId"] = request.dialogId!;
        }
        if (!TeaUtils.Client.isUnset(request.isSelfLine)) {
            query["IsSelfLine"] = request.isSelfLine!;
        }
        if (!TeaUtils.Client.isUnset(request.numberStatusIdent)) {
            query["NumberStatusIdent"] = request.numberStatusIdent!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.recallInterval)) {
            query["RecallInterval"] = request.recallInterval!;
        }
        if (!TeaUtils.Client.isUnset(request.recallStateCodes)) {
            query["RecallStateCodes"] = request.recallStateCodes ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recallTimes)) {
            query["RecallTimes"] = request.recallTimes!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.retryType)) {
            query["RetryType"] = request.retryType!;
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            query["TaskName"] = request.taskName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRobotTask",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRobotTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRobotTask(_ request: CreateRobotTaskRequest) async throws -> CreateRobotTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRobotTaskWithOptions(request as! CreateRobotTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func degradeVideoFileWithOptions(_ request: DegradeVideoFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DegradeVideoFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callId)) {
            query["CallId"] = request.callId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calledNumber)) {
            query["CalledNumber"] = request.calledNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mediaType)) {
            query["MediaType"] = request.mediaType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "DegradeVideoFile",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DegradeVideoFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func degradeVideoFile(_ request: DegradeVideoFileRequest) async throws -> DegradeVideoFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await degradeVideoFileWithOptions(request as! DegradeVideoFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRobotTaskWithOptions(_ request: DeleteRobotTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRobotTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRobotTask",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRobotTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRobotTask(_ request: DeleteRobotTaskRequest) async throws -> DeleteRobotTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteRobotTaskWithOptions(request as! DeleteRobotTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeCallTaskWithOptions(_ request: ExecuteCallTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExecuteCallTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fireTime)) {
            query["FireTime"] = request.fireTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExecuteCallTask",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExecuteCallTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func executeCallTask(_ request: ExecuteCallTaskRequest) async throws -> ExecuteCallTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await executeCallTaskWithOptions(request as! ExecuteCallTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCallMediaTypeWithOptions(_ request: GetCallMediaTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCallMediaTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callId)) {
            query["CallId"] = request.callId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calledNumber)) {
            query["CalledNumber"] = request.calledNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "GetCallMediaType",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCallMediaTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCallMediaType(_ request: GetCallMediaTypeRequest) async throws -> GetCallMediaTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCallMediaTypeWithOptions(request as! GetCallMediaTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCallProgressWithOptions(_ request: GetCallProgressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCallProgressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callId)) {
            query["CallId"] = request.callId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calledNum)) {
            query["CalledNum"] = request.calledNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "GetCallProgress",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCallProgressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCallProgress(_ request: GetCallProgressRequest) async throws -> GetCallProgressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCallProgressWithOptions(request as! GetCallProgressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHotlineQualificationByOrderWithOptions(_ request: GetHotlineQualificationByOrderRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHotlineQualificationByOrderResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.orderId)) {
            query["OrderId"] = request.orderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "GetHotlineQualificationByOrder",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHotlineQualificationByOrderResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHotlineQualificationByOrder(_ request: GetHotlineQualificationByOrderRequest) async throws -> GetHotlineQualificationByOrderResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getHotlineQualificationByOrderWithOptions(request as! GetHotlineQualificationByOrderRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTemporaryFileUrlWithOptions(_ request: GetTemporaryFileUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTemporaryFileUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.videoId)) {
            query["VideoId"] = request.videoId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTemporaryFileUrl",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTemporaryFileUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTemporaryFileUrl(_ request: GetTemporaryFileUrlRequest) async throws -> GetTemporaryFileUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTemporaryFileUrlWithOptions(request as! GetTemporaryFileUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTokenWithOptions(_ request: GetTokenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTokenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.tokenType)) {
            query["TokenType"] = request.tokenType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetToken",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTokenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getToken(_ request: GetTokenRequest) async throws -> GetTokenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTokenWithOptions(request as! GetTokenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoFieldUrlWithOptions(_ request: GetVideoFieldUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetVideoFieldUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.videoFile)) {
            query["VideoFile"] = request.videoFile ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetVideoFieldUrl",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetVideoFieldUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getVideoFieldUrl(_ request: GetVideoFieldUrlRequest) async throws -> GetVideoFieldUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getVideoFieldUrlWithOptions(request as! GetVideoFieldUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ivrCallWithOptions(_ request: IvrCallRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> IvrCallResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.byeCode)) {
            query["ByeCode"] = request.byeCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.byeTtsParams)) {
            query["ByeTtsParams"] = request.byeTtsParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calledNumber)) {
            query["CalledNumber"] = request.calledNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calledShowNumber)) {
            query["CalledShowNumber"] = request.calledShowNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.menuKeyMap)) {
            query["MenuKeyMap"] = request.menuKeyMap ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.playTimes)) {
            query["PlayTimes"] = request.playTimes!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.startCode)) {
            query["StartCode"] = request.startCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTtsParams)) {
            query["StartTtsParams"] = request.startTtsParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IvrCall",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IvrCallResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func ivrCall(_ request: IvrCallRequest) async throws -> IvrCallResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await ivrCallWithOptions(request as! IvrCallRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCallTaskWithOptions(_ request: ListCallTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCallTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            query["TaskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            query["TemplateName"] = request.templateName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCallTask",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCallTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCallTask(_ request: ListCallTaskRequest) async throws -> ListCallTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listCallTaskWithOptions(request as! ListCallTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCallTaskDetailWithOptions(_ request: ListCallTaskDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListCallTaskDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calledNum)) {
            query["CalledNum"] = request.calledNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListCallTaskDetail",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListCallTaskDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listCallTaskDetail(_ request: ListCallTaskDetailRequest) async throws -> ListCallTaskDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listCallTaskDetailWithOptions(request as! ListCallTaskDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHotlineTransferRegisterFileWithOptions(_ request: ListHotlineTransferRegisterFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListHotlineTransferRegisterFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.hotlineNumber)) {
            query["HotlineNumber"] = request.hotlineNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.qualificationId)) {
            query["QualificationId"] = request.qualificationId ?? "";
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
            "action": "ListHotlineTransferRegisterFile",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListHotlineTransferRegisterFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listHotlineTransferRegisterFile(_ request: ListHotlineTransferRegisterFileRequest) async throws -> ListHotlineTransferRegisterFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listHotlineTransferRegisterFileWithOptions(request as! ListHotlineTransferRegisterFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceInstanceForPageWithOptions(_ tmpReq: ListServiceInstanceForPageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListServiceInstanceForPageResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListServiceInstanceForPageShrinkRequest = ListServiceInstanceForPageShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.pager)) {
            request.pagerShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.pager, "Pager", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            query["Code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pagerShrink)) {
            query["Pager"] = request.pagerShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relationNumber)) {
            query["RelationNumber"] = request.relationNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.sceneId)) {
            query["SceneId"] = request.sceneId!;
        }
        if (!TeaUtils.Client.isUnset(request.usageId)) {
            query["UsageId"] = request.usageId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListServiceInstanceForPage",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListServiceInstanceForPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceInstanceForPage(_ request: ListServiceInstanceForPageRequest) async throws -> ListServiceInstanceForPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listServiceInstanceForPageWithOptions(request as! ListServiceInstanceForPageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pauseVideoFileWithOptions(_ request: PauseVideoFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PauseVideoFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callId)) {
            query["CallId"] = request.callId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calledNumber)) {
            query["CalledNumber"] = request.calledNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "PauseVideoFile",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PauseVideoFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pauseVideoFile(_ request: PauseVideoFileRequest) async throws -> PauseVideoFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await pauseVideoFileWithOptions(request as! PauseVideoFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func playVideoFileWithOptions(_ request: PlayVideoFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PlayVideoFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callId)) {
            query["CallId"] = request.callId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calledNumber)) {
            query["CalledNumber"] = request.calledNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.onlyPhone)) {
            query["OnlyPhone"] = request.onlyPhone!;
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.videoId)) {
            query["VideoId"] = request.videoId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PlayVideoFile",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PlayVideoFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func playVideoFile(_ request: PlayVideoFileRequest) async throws -> PlayVideoFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await playVideoFileWithOptions(request as! PlayVideoFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCallDetailByCallIdWithOptions(_ request: QueryCallDetailByCallIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCallDetailByCallIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callId)) {
            query["CallId"] = request.callId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.prodId)) {
            query["ProdId"] = request.prodId!;
        }
        if (!TeaUtils.Client.isUnset(request.queryDate)) {
            query["QueryDate"] = request.queryDate!;
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
            "action": "QueryCallDetailByCallId",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCallDetailByCallIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCallDetailByCallId(_ request: QueryCallDetailByCallIdRequest) async throws -> QueryCallDetailByCallIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCallDetailByCallIdWithOptions(request as! QueryCallDetailByCallIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCallDetailByTaskIdWithOptions(_ request: QueryCallDetailByTaskIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCallDetailByTaskIdResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callee)) {
            query["Callee"] = request.callee ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.queryDate)) {
            query["QueryDate"] = request.queryDate!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryCallDetailByTaskId",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCallDetailByTaskIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCallDetailByTaskId(_ request: QueryCallDetailByTaskIdRequest) async throws -> QueryCallDetailByTaskIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCallDetailByTaskIdWithOptions(request as! QueryCallDetailByTaskIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCallInPoolTransferConfigWithOptions(_ request: QueryCallInPoolTransferConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCallInPoolTransferConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
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
            "action": "QueryCallInPoolTransferConfig",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCallInPoolTransferConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCallInPoolTransferConfig(_ request: QueryCallInPoolTransferConfigRequest) async throws -> QueryCallInPoolTransferConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCallInPoolTransferConfigWithOptions(request as! QueryCallInPoolTransferConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCallInTransferRecordWithOptions(_ request: QueryCallInTransferRecordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryCallInTransferRecordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callInCaller)) {
            query["CallInCaller"] = request.callInCaller ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            query["PhoneNumber"] = request.phoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryDate)) {
            query["QueryDate"] = request.queryDate ?? "";
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
            "action": "QueryCallInTransferRecord",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryCallInTransferRecordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryCallInTransferRecord(_ request: QueryCallInTransferRecordRequest) async throws -> QueryCallInTransferRecordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryCallInTransferRecordWithOptions(request as! QueryCallInTransferRecordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRobotInfoListWithOptions(_ request: QueryRobotInfoListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRobotInfoListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.auditStatus)) {
            query["AuditStatus"] = request.auditStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "QueryRobotInfoList",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRobotInfoListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRobotInfoList(_ request: QueryRobotInfoListRequest) async throws -> QueryRobotInfoListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRobotInfoListWithOptions(request as! QueryRobotInfoListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRobotTaskCallDetailWithOptions(_ request: QueryRobotTaskCallDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRobotTaskCallDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callee)) {
            query["Callee"] = request.callee ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.queryDate)) {
            query["QueryDate"] = request.queryDate!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRobotTaskCallDetail",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRobotTaskCallDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRobotTaskCallDetail(_ request: QueryRobotTaskCallDetailRequest) async throws -> QueryRobotTaskCallDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRobotTaskCallDetailWithOptions(request as! QueryRobotTaskCallDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRobotTaskCallListWithOptions(_ request: QueryRobotTaskCallListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRobotTaskCallListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callResult)) {
            query["CallResult"] = request.callResult ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.called)) {
            query["Called"] = request.called ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dialogCountFrom)) {
            query["DialogCountFrom"] = request.dialogCountFrom ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dialogCountTo)) {
            query["DialogCountTo"] = request.dialogCountTo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.durationFrom)) {
            query["DurationFrom"] = request.durationFrom ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.durationTo)) {
            query["DurationTo"] = request.durationTo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hangupDirection)) {
            query["HangupDirection"] = request.hangupDirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRobotTaskCallList",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRobotTaskCallListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRobotTaskCallList(_ request: QueryRobotTaskCallListRequest) async throws -> QueryRobotTaskCallListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRobotTaskCallListWithOptions(request as! QueryRobotTaskCallListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRobotTaskDetailWithOptions(_ request: QueryRobotTaskDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRobotTaskDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "QueryRobotTaskDetail",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRobotTaskDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRobotTaskDetail(_ request: QueryRobotTaskDetailRequest) async throws -> QueryRobotTaskDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRobotTaskDetailWithOptions(request as! QueryRobotTaskDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRobotTaskListWithOptions(_ request: QueryRobotTaskListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRobotTaskListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskName)) {
            query["TaskName"] = request.taskName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.time)) {
            query["Time"] = request.time ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryRobotTaskList",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRobotTaskListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRobotTaskList(_ request: QueryRobotTaskListRequest) async throws -> QueryRobotTaskListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRobotTaskListWithOptions(request as! QueryRobotTaskListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRobotv2AllListWithOptions(_ request: QueryRobotv2AllListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryRobotv2AllListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "QueryRobotv2AllList",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryRobotv2AllListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryRobotv2AllList(_ request: QueryRobotv2AllListRequest) async throws -> QueryRobotv2AllListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryRobotv2AllListWithOptions(request as! QueryRobotv2AllListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryVideoPlayProgressWithOptions(_ request: QueryVideoPlayProgressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryVideoPlayProgressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callId)) {
            query["CallId"] = request.callId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calledNumber)) {
            query["CalledNumber"] = request.calledNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "QueryVideoPlayProgress",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryVideoPlayProgressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryVideoPlayProgress(_ request: QueryVideoPlayProgressRequest) async throws -> QueryVideoPlayProgressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryVideoPlayProgressWithOptions(request as! QueryVideoPlayProgressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryVirtualNumberRelationWithOptions(_ request: QueryVirtualNumberRelationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryVirtualNumberRelationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNum)) {
            query["PhoneNum"] = request.phoneNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prodCode)) {
            query["ProdCode"] = request.prodCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.qualificationId)) {
            query["QualificationId"] = request.qualificationId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionNameCity)) {
            query["RegionNameCity"] = request.regionNameCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedNum)) {
            query["RelatedNum"] = request.relatedNum ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.routeType)) {
            query["RouteType"] = request.routeType!;
        }
        if (!TeaUtils.Client.isUnset(request.specId)) {
            query["SpecId"] = request.specId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryVirtualNumberRelation",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryVirtualNumberRelationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryVirtualNumberRelation(_ request: QueryVirtualNumberRelationRequest) async throws -> QueryVirtualNumberRelationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryVirtualNumberRelationWithOptions(request as! QueryVirtualNumberRelationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryVmsRealNumberCallConnectionRateInfoWithOptions(_ request: QueryVmsRealNumberCallConnectionRateInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryVmsRealNumberCallConnectionRateInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.realNumber)) {
            query["RealNumber"] = request.realNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.timePeriod)) {
            query["TimePeriod"] = request.timePeriod ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.virtualNumber)) {
            query["VirtualNumber"] = request.virtualNumber ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryVmsRealNumberCallConnectionRateInfo",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryVmsRealNumberCallConnectionRateInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryVmsRealNumberCallConnectionRateInfo(_ request: QueryVmsRealNumberCallConnectionRateInfoRequest) async throws -> QueryVmsRealNumberCallConnectionRateInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryVmsRealNumberCallConnectionRateInfoWithOptions(request as! QueryVmsRealNumberCallConnectionRateInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryVmsVirtualNumberRelationByPageWithOptions(_ request: QueryVmsVirtualNumberRelationByPageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryVmsVirtualNumberRelationByPageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.numberCity)) {
            query["NumberCity"] = request.numberCity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.numberProvince)) {
            query["NumberProvince"] = request.numberProvince ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNo)) {
            query["PageNo"] = request.pageNo!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.realNumber)) {
            query["RealNumber"] = request.realNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.state)) {
            query["State"] = request.state!;
        }
        if (!TeaUtils.Client.isUnset(request.virtualNumber)) {
            query["VirtualNumber"] = request.virtualNumber ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryVmsVirtualNumberRelationByPage",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryVmsVirtualNumberRelationByPageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryVmsVirtualNumberRelationByPage(_ request: QueryVmsVirtualNumberRelationByPageRequest) async throws -> QueryVmsVirtualNumberRelationByPageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryVmsVirtualNumberRelationByPageWithOptions(request as! QueryVmsVirtualNumberRelationByPageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryVoiceFileAuditInfoWithOptions(_ request: QueryVoiceFileAuditInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryVoiceFileAuditInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.businessType)) {
            query["BusinessType"] = request.businessType!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.voiceCodes)) {
            query["VoiceCodes"] = request.voiceCodes ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryVoiceFileAuditInfo",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryVoiceFileAuditInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryVoiceFileAuditInfo(_ request: QueryVoiceFileAuditInfoRequest) async throws -> QueryVoiceFileAuditInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryVoiceFileAuditInfoWithOptions(request as! QueryVoiceFileAuditInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recoverCallInConfigWithOptions(_ request: RecoverCallInConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RecoverCallInConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.number)) {
            query["Number"] = request.number ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "RecoverCallInConfig",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecoverCallInConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recoverCallInConfig(_ request: RecoverCallInConfigRequest) async throws -> RecoverCallInConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await recoverCallInConfigWithOptions(request as! RecoverCallInConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeVideoFileWithOptions(_ request: ResumeVideoFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResumeVideoFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callId)) {
            query["CallId"] = request.callId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calledNumber)) {
            query["CalledNumber"] = request.calledNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "ResumeVideoFile",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResumeVideoFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resumeVideoFile(_ request: ResumeVideoFileRequest) async throws -> ResumeVideoFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resumeVideoFileWithOptions(request as! ResumeVideoFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func seekVideoFileWithOptions(_ request: SeekVideoFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SeekVideoFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callId)) {
            query["CallId"] = request.callId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calledNumber)) {
            query["CalledNumber"] = request.calledNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.seekTimes)) {
            query["SeekTimes"] = request.seekTimes!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SeekVideoFile",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SeekVideoFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func seekVideoFile(_ request: SeekVideoFileRequest) async throws -> SeekVideoFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await seekVideoFileWithOptions(request as! SeekVideoFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendVerificationWithOptions(_ request: SendVerificationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SendVerificationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bizType)) {
            query["BizType"] = request.bizType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.target)) {
            query["Target"] = request.target ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verifyType)) {
            query["VerifyType"] = request.verifyType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendVerification",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendVerificationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendVerification(_ request: SendVerificationRequest) async throws -> SendVerificationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sendVerificationWithOptions(request as! SendVerificationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setTransferCalleePoolConfigWithOptions(_ request: SetTransferCalleePoolConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetTransferCalleePoolConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calledRouteMode)) {
            query["CalledRouteMode"] = request.calledRouteMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.details)) {
            query["Details"] = request.details ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            query["PhoneNumber"] = request.phoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.qualificationId)) {
            query["QualificationId"] = request.qualificationId ?? "";
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
            "action": "SetTransferCalleePoolConfig",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetTransferCalleePoolConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setTransferCalleePoolConfig(_ request: SetTransferCalleePoolConfigRequest) async throws -> SetTransferCalleePoolConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setTransferCalleePoolConfigWithOptions(request as! SetTransferCalleePoolConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func singleCallByTtsWithOptions(_ request: SingleCallByTtsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SingleCallByTtsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calledNumber)) {
            query["CalledNumber"] = request.calledNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calledShowNumber)) {
            query["CalledShowNumber"] = request.calledShowNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.playTimes)) {
            query["PlayTimes"] = request.playTimes!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.speed)) {
            query["Speed"] = request.speed!;
        }
        if (!TeaUtils.Client.isUnset(request.ttsCode)) {
            query["TtsCode"] = request.ttsCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttsParam)) {
            query["TtsParam"] = request.ttsParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.volume)) {
            query["Volume"] = request.volume!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SingleCallByTts",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SingleCallByTtsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func singleCallByTts(_ request: SingleCallByTtsRequest) async throws -> SingleCallByTtsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await singleCallByTtsWithOptions(request as! SingleCallByTtsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func singleCallByVideoWithOptions(_ request: SingleCallByVideoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SingleCallByVideoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calledNumber)) {
            query["CalledNumber"] = request.calledNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calledShowNumber)) {
            query["CalledShowNumber"] = request.calledShowNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.playTimes)) {
            query["PlayTimes"] = request.playTimes!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.speed)) {
            query["Speed"] = request.speed!;
        }
        if (!TeaUtils.Client.isUnset(request.videoCode)) {
            query["VideoCode"] = request.videoCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.voiceCode)) {
            query["VoiceCode"] = request.voiceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.volume)) {
            query["Volume"] = request.volume!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SingleCallByVideo",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SingleCallByVideoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func singleCallByVideo(_ request: SingleCallByVideoRequest) async throws -> SingleCallByVideoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await singleCallByVideoWithOptions(request as! SingleCallByVideoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func singleCallByVoiceWithOptions(_ request: SingleCallByVoiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SingleCallByVoiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calledNumber)) {
            query["CalledNumber"] = request.calledNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calledShowNumber)) {
            query["CalledShowNumber"] = request.calledShowNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.playTimes)) {
            query["PlayTimes"] = request.playTimes!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.speed)) {
            query["Speed"] = request.speed!;
        }
        if (!TeaUtils.Client.isUnset(request.voiceCode)) {
            query["VoiceCode"] = request.voiceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.volume)) {
            query["Volume"] = request.volume!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SingleCallByVoice",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SingleCallByVoiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func singleCallByVoice(_ request: SingleCallByVoiceRequest) async throws -> SingleCallByVoiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await singleCallByVoiceWithOptions(request as! SingleCallByVoiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func skipVideoFileWithOptions(_ request: SkipVideoFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SkipVideoFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callId)) {
            query["CallId"] = request.callId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calledNumber)) {
            query["CalledNumber"] = request.calledNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.skipTimes)) {
            query["SkipTimes"] = request.skipTimes!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SkipVideoFile",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SkipVideoFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func skipVideoFile(_ request: SkipVideoFileRequest) async throws -> SkipVideoFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await skipVideoFileWithOptions(request as! SkipVideoFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func smartCallWithOptions(_ request: SmartCallRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SmartCallResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.actionCodeBreak)) {
            query["ActionCodeBreak"] = request.actionCodeBreak!;
        }
        if (!TeaUtils.Client.isUnset(request.actionCodeTimeBreak)) {
            query["ActionCodeTimeBreak"] = request.actionCodeTimeBreak!;
        }
        if (!TeaUtils.Client.isUnset(request.asrBaseId)) {
            query["AsrBaseId"] = request.asrBaseId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.asrModelId)) {
            query["AsrModelId"] = request.asrModelId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backgroundFileCode)) {
            query["BackgroundFileCode"] = request.backgroundFileCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.backgroundSpeed)) {
            query["BackgroundSpeed"] = request.backgroundSpeed!;
        }
        if (!TeaUtils.Client.isUnset(request.backgroundVolume)) {
            query["BackgroundVolume"] = request.backgroundVolume!;
        }
        if (!TeaUtils.Client.isUnset(request.calledNumber)) {
            query["CalledNumber"] = request.calledNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calledShowNumber)) {
            query["CalledShowNumber"] = request.calledShowNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dynamicId)) {
            query["DynamicId"] = request.dynamicId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.earlyMediaAsr)) {
            query["EarlyMediaAsr"] = request.earlyMediaAsr!;
        }
        if (!TeaUtils.Client.isUnset(request.enableITN)) {
            query["EnableITN"] = request.enableITN!;
        }
        if (!TeaUtils.Client.isUnset(request.muteTime)) {
            query["MuteTime"] = request.muteTime!;
        }
        if (!TeaUtils.Client.isUnset(request.noiseThreshold)) {
            query["NoiseThreshold"] = request.noiseThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pauseTime)) {
            query["PauseTime"] = request.pauseTime!;
        }
        if (!TeaUtils.Client.isUnset(request.recordFlag)) {
            query["RecordFlag"] = request.recordFlag!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.sessionTimeout)) {
            query["SessionTimeout"] = request.sessionTimeout!;
        }
        if (!TeaUtils.Client.isUnset(request.speed)) {
            query["Speed"] = request.speed!;
        }
        if (!TeaUtils.Client.isUnset(request.streamAsr)) {
            query["StreamAsr"] = request.streamAsr!;
        }
        if (!TeaUtils.Client.isUnset(request.ttsConf)) {
            query["TtsConf"] = request.ttsConf!;
        }
        if (!TeaUtils.Client.isUnset(request.ttsSpeed)) {
            query["TtsSpeed"] = request.ttsSpeed!;
        }
        if (!TeaUtils.Client.isUnset(request.ttsStyle)) {
            query["TtsStyle"] = request.ttsStyle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttsVolume)) {
            query["TtsVolume"] = request.ttsVolume!;
        }
        if (!TeaUtils.Client.isUnset(request.voiceCode)) {
            query["VoiceCode"] = request.voiceCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.voiceCodeParam)) {
            query["VoiceCodeParam"] = request.voiceCodeParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.volume)) {
            query["Volume"] = request.volume!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SmartCall",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SmartCallResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func smartCall(_ request: SmartCallRequest) async throws -> SmartCallResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await smartCallWithOptions(request as! SmartCallRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func smartCallOperateWithOptions(_ request: SmartCallOperateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SmartCallOperateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callId)) {
            query["CallId"] = request.callId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.command)) {
            query["Command"] = request.command ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.param)) {
            query["Param"] = request.param ?? "";
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
            "action": "SmartCallOperate",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SmartCallOperateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func smartCallOperate(_ request: SmartCallOperateRequest) async throws -> SmartCallOperateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await smartCallOperateWithOptions(request as! SmartCallOperateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startRobotTaskWithOptions(_ request: StartRobotTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartRobotTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.scheduleTime)) {
            query["ScheduleTime"] = request.scheduleTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartRobotTask",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartRobotTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startRobotTask(_ request: StartRobotTaskRequest) async throws -> StartRobotTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startRobotTaskWithOptions(request as! StartRobotTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopCallInConfigWithOptions(_ request: StopCallInConfigRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopCallInConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.number)) {
            query["Number"] = request.number ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "StopCallInConfig",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopCallInConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopCallInConfig(_ request: StopCallInConfigRequest) async throws -> StopCallInConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopCallInConfigWithOptions(request as! StopCallInConfigRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopRobotTaskWithOptions(_ request: StopRobotTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopRobotTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopRobotTask",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopRobotTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopRobotTask(_ request: StopRobotTaskRequest) async throws -> StopRobotTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopRobotTaskWithOptions(request as! StopRobotTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitHotlineTransferRegisterWithOptions(_ request: SubmitHotlineTransferRegisterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitHotlineTransferRegisterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.agreement)) {
            query["Agreement"] = request.agreement ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hotlineNumber)) {
            query["HotlineNumber"] = request.hotlineNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatorIdentityCard)) {
            query["OperatorIdentityCard"] = request.operatorIdentityCard ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatorMail)) {
            query["OperatorMail"] = request.operatorMail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatorMailVerifyCode)) {
            query["OperatorMailVerifyCode"] = request.operatorMailVerifyCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatorMobile)) {
            query["OperatorMobile"] = request.operatorMobile ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatorMobileVerifyCode)) {
            query["OperatorMobileVerifyCode"] = request.operatorMobileVerifyCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operatorName)) {
            query["OperatorName"] = request.operatorName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.qualificationId)) {
            query["QualificationId"] = request.qualificationId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.transferPhoneNumberInfos)) {
            query["TransferPhoneNumberInfos"] = request.transferPhoneNumberInfos ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitHotlineTransferRegister",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitHotlineTransferRegisterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitHotlineTransferRegister(_ request: SubmitHotlineTransferRegisterRequest) async throws -> SubmitHotlineTransferRegisterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitHotlineTransferRegisterWithOptions(request as! SubmitHotlineTransferRegisterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeVideoFileWithOptions(_ request: UpgradeVideoFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpgradeVideoFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.callId)) {
            query["CallId"] = request.callId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.calledNumber)) {
            query["CalledNumber"] = request.calledNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mediaType)) {
            query["MediaType"] = request.mediaType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outId)) {
            query["OutId"] = request.outId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
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
            "action": "UpgradeVideoFile",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpgradeVideoFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func upgradeVideoFile(_ request: UpgradeVideoFileRequest) async throws -> UpgradeVideoFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await upgradeVideoFileWithOptions(request as! UpgradeVideoFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadRobotTaskCalledFileWithOptions(_ request: UploadRobotTaskCalledFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadRobotTaskCalledFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.calledNumber)) {
            query["CalledNumber"] = request.calledNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.id)) {
            query["Id"] = request.id!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.ttsParam)) {
            query["TtsParam"] = request.ttsParam ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttsParamHead)) {
            query["TtsParamHead"] = request.ttsParamHead ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadRobotTaskCalledFile",
            "version": "2017-05-25",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadRobotTaskCalledFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadRobotTaskCalledFile(_ request: UploadRobotTaskCalledFileRequest) async throws -> UploadRobotTaskCalledFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadRobotTaskCalledFileWithOptions(request as! UploadRobotTaskCalledFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
