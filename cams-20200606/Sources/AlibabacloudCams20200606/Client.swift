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
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("cams", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addChatappPhoneNumberWithOptions(_ request: AddChatappPhoneNumberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddChatappPhoneNumberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cc)) {
            query["Cc"] = request.cc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            query["PhoneNumber"] = request.phoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preValidateId)) {
            query["PreValidateId"] = request.preValidateId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.verifiedName)) {
            query["VerifiedName"] = request.verifiedName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddChatappPhoneNumber",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddChatappPhoneNumberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addChatappPhoneNumber(_ request: AddChatappPhoneNumberRequest) async throws -> AddChatappPhoneNumberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addChatappPhoneNumberWithOptions(request as! AddChatappPhoneNumberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func beeBotAssociateWithOptions(_ tmpReq: BeeBotAssociateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BeeBotAssociateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BeeBotAssociateShrinkRequest = BeeBotAssociateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.perspective)) {
            request.perspectiveShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.perspective, "Perspective", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chatBotInstanceId)) {
            body["ChatBotInstanceId"] = request.chatBotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvCode)) {
            body["IsvCode"] = request.isvCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.perspectiveShrink)) {
            body["Perspective"] = request.perspectiveShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recommendNum)) {
            body["RecommendNum"] = request.recommendNum!;
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["SessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.utterance)) {
            body["Utterance"] = request.utterance ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BeeBotAssociate",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BeeBotAssociateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func beeBotAssociate(_ request: BeeBotAssociateRequest) async throws -> BeeBotAssociateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await beeBotAssociateWithOptions(request as! BeeBotAssociateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func beeBotChatWithOptions(_ tmpReq: BeeBotChatRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BeeBotChatResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: BeeBotChatShrinkRequest = BeeBotChatShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.perspective)) {
            request.perspectiveShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.perspective, "Perspective", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.vendorParam)) {
            request.vendorParamShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.vendorParam, "VendorParam", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chatBotInstanceId)) {
            body["ChatBotInstanceId"] = request.chatBotInstanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.intentName)) {
            body["IntentName"] = request.intentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvCode)) {
            body["IsvCode"] = request.isvCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.knowledgeId)) {
            body["KnowledgeId"] = request.knowledgeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.perspectiveShrink)) {
            body["Perspective"] = request.perspectiveShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.senderId)) {
            body["SenderId"] = request.senderId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.senderNick)) {
            body["SenderNick"] = request.senderNick ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            body["SessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.utterance)) {
            body["Utterance"] = request.utterance ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vendorParamShrink)) {
            body["VendorParam"] = request.vendorParamShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BeeBotChat",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BeeBotChatResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func beeBotChat(_ request: BeeBotChatRequest) async throws -> BeeBotChatResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await beeBotChatWithOptions(request as! BeeBotChatRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatappBindWabaWithOptions(_ request: ChatappBindWabaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatappBindWabaResponse {
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
        if (!TeaUtils.Client.isUnset(request.wabaId)) {
            query["WabaId"] = request.wabaId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatappBindWaba",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatappBindWabaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatappBindWaba(_ request: ChatappBindWabaRequest) async throws -> ChatappBindWabaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatappBindWabaWithOptions(request as! ChatappBindWabaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatappEmbedSignUpWithOptions(_ request: ChatappEmbedSignUpRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatappEmbedSignUpResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.inputToken)) {
            body["InputToken"] = request.inputToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatappEmbedSignUp",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatappEmbedSignUpResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatappEmbedSignUp(_ request: ChatappEmbedSignUpRequest) async throws -> ChatappEmbedSignUpResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatappEmbedSignUpWithOptions(request as! ChatappEmbedSignUpRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatappMigrationRegisterWithOptions(_ request: ChatappMigrationRegisterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatappMigrationRegisterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            query["PhoneNumber"] = request.phoneNumber ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatappMigrationRegister",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatappMigrationRegisterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatappMigrationRegister(_ request: ChatappMigrationRegisterRequest) async throws -> ChatappMigrationRegisterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatappMigrationRegisterWithOptions(request as! ChatappMigrationRegisterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatappMigrationVerifiedWithOptions(_ request: ChatappMigrationVerifiedRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatappMigrationVerifiedResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            query["PhoneNumber"] = request.phoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verifyCode)) {
            query["VerifyCode"] = request.verifyCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatappMigrationVerified",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatappMigrationVerifiedResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatappMigrationVerified(_ request: ChatappMigrationVerifiedRequest) async throws -> ChatappMigrationVerifiedResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatappMigrationVerifiedWithOptions(request as! ChatappMigrationVerifiedRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatappPhoneNumberDeregisterWithOptions(_ request: ChatappPhoneNumberDeregisterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatappPhoneNumberDeregisterResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            body["PhoneNumber"] = request.phoneNumber ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatappPhoneNumberDeregister",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatappPhoneNumberDeregisterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatappPhoneNumberDeregister(_ request: ChatappPhoneNumberDeregisterRequest) async throws -> ChatappPhoneNumberDeregisterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatappPhoneNumberDeregisterWithOptions(request as! ChatappPhoneNumberDeregisterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatappPhoneNumberRegisterWithOptions(_ request: ChatappPhoneNumberRegisterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatappPhoneNumberRegisterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
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
            "action": "ChatappPhoneNumberRegister",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatappPhoneNumberRegisterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatappPhoneNumberRegister(_ request: ChatappPhoneNumberRegisterRequest) async throws -> ChatappPhoneNumberRegisterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatappPhoneNumberRegisterWithOptions(request as! ChatappPhoneNumberRegisterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatappSyncPhoneNumberWithOptions(_ request: ChatappSyncPhoneNumberRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatappSyncPhoneNumberResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
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
            "action": "ChatappSyncPhoneNumber",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatappSyncPhoneNumberResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatappSyncPhoneNumber(_ request: ChatappSyncPhoneNumberRequest) async throws -> ChatappSyncPhoneNumberResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatappSyncPhoneNumberWithOptions(request as! ChatappSyncPhoneNumberRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatappVerifyAndRegisterWithOptions(_ request: ChatappVerifyAndRegisterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatappVerifyAndRegisterResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.verifyCode)) {
            query["VerifyCode"] = request.verifyCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ChatappVerifyAndRegister",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ChatappVerifyAndRegisterResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func chatappVerifyAndRegister(_ request: ChatappVerifyAndRegisterRequest) async throws -> ChatappVerifyAndRegisterResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await chatappVerifyAndRegisterWithOptions(request as! ChatappVerifyAndRegisterRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createChatappMigrationInitiateWithOptions(_ request: CreateChatappMigrationInitiateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateChatappMigrationInitiateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.countryCode)) {
            query["CountryCode"] = request.countryCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mobileNumber)) {
            query["MobileNumber"] = request.mobileNumber ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateChatappMigrationInitiate",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateChatappMigrationInitiateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createChatappMigrationInitiate(_ request: CreateChatappMigrationInitiateRequest) async throws -> CreateChatappMigrationInitiateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createChatappMigrationInitiateWithOptions(request as! CreateChatappMigrationInitiateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createChatappTemplateWithOptions(_ tmpReq: CreateChatappTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateChatappTemplateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateChatappTemplateShrinkRequest = CreateChatappTemplateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.components)) {
            request.componentsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.components, "Components", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.example)) {
            request.exampleShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.example, "Example", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowCategoryChange)) {
            body["AllowCategoryChange"] = request.allowCategoryChange!;
        }
        if (!TeaUtils.Client.isUnset(request.category)) {
            body["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.componentsShrink)) {
            body["Components"] = request.componentsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custWabaId)) {
            body["CustWabaId"] = request.custWabaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.exampleShrink)) {
            body["Example"] = request.exampleShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvCode)) {
            body["IsvCode"] = request.isvCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.messageSendTtlSeconds)) {
            body["MessageSendTtlSeconds"] = request.messageSendTtlSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            body["TemplateType"] = request.templateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateChatappTemplate",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateChatappTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createChatappTemplate(_ request: CreateChatappTemplateRequest) async throws -> CreateChatappTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createChatappTemplateWithOptions(request as! CreateChatappTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFlowWithOptions(_ tmpReq: CreateFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateFlowResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateFlowShrinkRequest = CreateFlowShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.categories)) {
            request.categoriesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.categories, "Categories", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categoriesShrink)) {
            body["Categories"] = request.categoriesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowName)) {
            body["FlowName"] = request.flowName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateFlow",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createFlow(_ request: CreateFlowRequest) async throws -> CreateFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createFlowWithOptions(request as! CreateFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPhoneMessageQrdlWithOptions(_ request: CreatePhoneMessageQrdlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePhoneMessageQrdlResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.generateQrImage)) {
            body["GenerateQrImage"] = request.generateQrImage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            body["PhoneNumber"] = request.phoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prefilledMessage)) {
            body["PrefilledMessage"] = request.prefilledMessage ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePhoneMessageQrdl",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePhoneMessageQrdlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPhoneMessageQrdl(_ request: CreatePhoneMessageQrdlRequest) async throws -> CreatePhoneMessageQrdlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPhoneMessageQrdlWithOptions(request as! CreatePhoneMessageQrdlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteChatappTemplateWithOptions(_ request: DeleteChatappTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteChatappTemplateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custWabaId)) {
            query["CustWabaId"] = request.custWabaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvCode)) {
            query["IsvCode"] = request.isvCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
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
        if (!TeaUtils.Client.isUnset(request.templateCode)) {
            query["TemplateCode"] = request.templateCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            query["TemplateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            query["TemplateType"] = request.templateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteChatappTemplate",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteChatappTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteChatappTemplate(_ request: DeleteChatappTemplateRequest) async throws -> DeleteChatappTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteChatappTemplateWithOptions(request as! DeleteChatappTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFlowWithOptions(_ request: DeleteFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowId)) {
            body["FlowId"] = request.flowId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteFlow",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteFlow(_ request: DeleteFlowRequest) async throws -> DeleteFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteFlowWithOptions(request as! DeleteFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePhoneMessageQrdlWithOptions(_ request: DeletePhoneMessageQrdlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePhoneMessageQrdlResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            body["PhoneNumber"] = request.phoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.qrdlCode)) {
            body["QrdlCode"] = request.qrdlCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePhoneMessageQrdl",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePhoneMessageQrdlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePhoneMessageQrdl(_ request: DeletePhoneMessageQrdlRequest) async throws -> DeletePhoneMessageQrdlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deletePhoneMessageQrdlWithOptions(request as! DeletePhoneMessageQrdlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deprecateFlowWithOptions(_ request: DeprecateFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeprecateFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowId)) {
            body["FlowId"] = request.flowId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeprecateFlow",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeprecateFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deprecateFlow(_ request: DeprecateFlowRequest) async throws -> DeprecateFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deprecateFlowWithOptions(request as! DeprecateFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableWhatsappROIMetricWithOptions(_ request: EnableWhatsappROIMetricRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableWhatsappROIMetricResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvCode)) {
            query["IsvCode"] = request.isvCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableWhatsappROIMetric",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableWhatsappROIMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableWhatsappROIMetric(_ request: EnableWhatsappROIMetricRequest) async throws -> EnableWhatsappROIMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableWhatsappROIMetricWithOptions(request as! EnableWhatsappROIMetricRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChatappPhoneNumberMetricWithOptions(_ request: GetChatappPhoneNumberMetricRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetChatappPhoneNumberMetricResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.end)) {
            query["End"] = request.end!;
        }
        if (!TeaUtils.Client.isUnset(request.granularity)) {
            query["Granularity"] = request.granularity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvCode)) {
            query["IsvCode"] = request.isvCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            query["PhoneNumber"] = request.phoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            query["Start"] = request.start!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetChatappPhoneNumberMetric",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetChatappPhoneNumberMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChatappPhoneNumberMetric(_ request: GetChatappPhoneNumberMetricRequest) async throws -> GetChatappPhoneNumberMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getChatappPhoneNumberMetricWithOptions(request as! GetChatappPhoneNumberMetricRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChatappTemplateDetailWithOptions(_ request: GetChatappTemplateDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetChatappTemplateDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custWabaId)) {
            query["CustWabaId"] = request.custWabaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvCode)) {
            query["IsvCode"] = request.isvCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateCode)) {
            query["TemplateCode"] = request.templateCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            query["TemplateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            query["TemplateType"] = request.templateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetChatappTemplateDetail",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetChatappTemplateDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChatappTemplateDetail(_ request: GetChatappTemplateDetailRequest) async throws -> GetChatappTemplateDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getChatappTemplateDetailWithOptions(request as! GetChatappTemplateDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChatappTemplateMetricWithOptions(_ request: GetChatappTemplateMetricRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetChatappTemplateMetricResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.end)) {
            query["End"] = request.end!;
        }
        if (!TeaUtils.Client.isUnset(request.granularity)) {
            query["Granularity"] = request.granularity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvCode)) {
            query["IsvCode"] = request.isvCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.start)) {
            query["Start"] = request.start!;
        }
        if (!TeaUtils.Client.isUnset(request.templateCode)) {
            query["TemplateCode"] = request.templateCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            query["TemplateType"] = request.templateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetChatappTemplateMetric",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetChatappTemplateMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChatappTemplateMetric(_ request: GetChatappTemplateMetricRequest) async throws -> GetChatappTemplateMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getChatappTemplateMetricWithOptions(request as! GetChatappTemplateMetricRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChatappUploadAuthorizationWithOptions(_ request: GetChatappUploadAuthorizationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetChatappUploadAuthorizationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetChatappUploadAuthorization",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetChatappUploadAuthorizationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChatappUploadAuthorization(_ request: GetChatappUploadAuthorizationRequest) async throws -> GetChatappUploadAuthorizationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getChatappUploadAuthorizationWithOptions(request as! GetChatappUploadAuthorizationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChatappVerifyCodeWithOptions(_ request: GetChatappVerifyCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetChatappVerifyCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.locale)) {
            query["Locale"] = request.locale ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.method)) {
            query["Method"] = request.method ?? "";
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
            "action": "GetChatappVerifyCode",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetChatappVerifyCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getChatappVerifyCode(_ request: GetChatappVerifyCodeRequest) async throws -> GetChatappVerifyCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getChatappVerifyCodeWithOptions(request as! GetChatappVerifyCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCommerceSettingWithOptions(_ request: GetCommerceSettingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetCommerceSettingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
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
            "action": "GetCommerceSetting",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetCommerceSettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getCommerceSetting(_ request: GetCommerceSettingRequest) async throws -> GetCommerceSettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getCommerceSettingWithOptions(request as! GetCommerceSettingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConversationalAutomationWithOptions(_ request: GetConversationalAutomationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetConversationalAutomationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
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
            "action": "GetConversationalAutomation",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetConversationalAutomationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConversationalAutomation(_ request: GetConversationalAutomationRequest) async throws -> GetConversationalAutomationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getConversationalAutomationWithOptions(request as! GetConversationalAutomationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFlowWithOptions(_ request: GetFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowId)) {
            body["FlowId"] = request.flowId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFlow",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFlow(_ request: GetFlowRequest) async throws -> GetFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFlowWithOptions(request as! GetFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFlowJSONAssestWithOptions(_ request: GetFlowJSONAssestRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFlowJSONAssestResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowId)) {
            body["FlowId"] = request.flowId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFlowJSONAssest",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFlowJSONAssestResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFlowJSONAssest(_ request: GetFlowJSONAssestRequest) async throws -> GetFlowJSONAssestResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFlowJSONAssestWithOptions(request as! GetFlowJSONAssestRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFlowPreviewUrlWithOptions(_ request: GetFlowPreviewUrlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetFlowPreviewUrlResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowId)) {
            body["FlowId"] = request.flowId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetFlowPreviewUrl",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetFlowPreviewUrlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getFlowPreviewUrl(_ request: GetFlowPreviewUrlRequest) async throws -> GetFlowPreviewUrlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getFlowPreviewUrlWithOptions(request as! GetFlowPreviewUrlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMigrationVerifyCodeWithOptions(_ request: GetMigrationVerifyCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetMigrationVerifyCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.locale)) {
            query["Locale"] = request.locale ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.method)) {
            query["Method"] = request.method ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            query["PhoneNumber"] = request.phoneNumber ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetMigrationVerifyCode",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetMigrationVerifyCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getMigrationVerifyCode(_ request: GetMigrationVerifyCodeRequest) async throws -> GetMigrationVerifyCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getMigrationVerifyCodeWithOptions(request as! GetMigrationVerifyCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPermissionByCodeWithOptions(_ tmpReq: GetPermissionByCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPermissionByCodeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: GetPermissionByCodeShrinkRequest = GetPermissionByCodeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.permissions)) {
            request.permissionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.permissions, "Permissions", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.code)) {
            body["Code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.permissionsShrink)) {
            body["Permissions"] = request.permissionsShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPermissionByCode",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPermissionByCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPermissionByCode(_ request: GetPermissionByCodeRequest) async throws -> GetPermissionByCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPermissionByCodeWithOptions(request as! GetPermissionByCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhoneEncryptionPublicKeyWithOptions(_ request: GetPhoneEncryptionPublicKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPhoneEncryptionPublicKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            body["PhoneNumber"] = request.phoneNumber ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPhoneEncryptionPublicKey",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPhoneEncryptionPublicKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhoneEncryptionPublicKey(_ request: GetPhoneEncryptionPublicKeyRequest) async throws -> GetPhoneEncryptionPublicKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPhoneEncryptionPublicKeyWithOptions(request as! GetPhoneEncryptionPublicKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhoneNumberVerificationStatusWithOptions(_ request: GetPhoneNumberVerificationStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPhoneNumberVerificationStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            body["PhoneNumber"] = request.phoneNumber ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPhoneNumberVerificationStatus",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPhoneNumberVerificationStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPhoneNumberVerificationStatus(_ request: GetPhoneNumberVerificationStatusRequest) async throws -> GetPhoneNumberVerificationStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPhoneNumberVerificationStatusWithOptions(request as! GetPhoneNumberVerificationStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPreValidatePhoneIdWithOptions(_ request: GetPreValidatePhoneIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPreValidatePhoneIdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            body["PhoneNumber"] = request.phoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verifyCode)) {
            body["VerifyCode"] = request.verifyCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPreValidatePhoneId",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPreValidatePhoneIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPreValidatePhoneId(_ request: GetPreValidatePhoneIdRequest) async throws -> GetPreValidatePhoneIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPreValidatePhoneIdWithOptions(request as! GetPreValidatePhoneIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWhatsappConnectionCatalogWithOptions(_ request: GetWhatsappConnectionCatalogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWhatsappConnectionCatalogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.wabaId)) {
            query["WabaId"] = request.wabaId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWhatsappConnectionCatalog",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWhatsappConnectionCatalogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWhatsappConnectionCatalog(_ request: GetWhatsappConnectionCatalogRequest) async throws -> GetWhatsappConnectionCatalogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWhatsappConnectionCatalogWithOptions(request as! GetWhatsappConnectionCatalogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWhatsappHealthStatusWithOptions(_ request: GetWhatsappHealthStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWhatsappHealthStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.nodeType)) {
            query["NodeType"] = request.nodeType ?? "";
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
        if (!TeaUtils.Client.isUnset(request.templateCode)) {
            query["TemplateCode"] = request.templateCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wabaId)) {
            query["WabaId"] = request.wabaId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWhatsappHealthStatus",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWhatsappHealthStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWhatsappHealthStatus(_ request: GetWhatsappHealthStatusRequest) async throws -> GetWhatsappHealthStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWhatsappHealthStatusWithOptions(request as! GetWhatsappHealthStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func isvGetAppIdWithOptions(_ request: IsvGetAppIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> IsvGetAppIdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.permissions)) {
            body["Permissions"] = request.permissions ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "IsvGetAppId",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(IsvGetAppIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func isvGetAppId(_ request: IsvGetAppIdRequest) async throws -> IsvGetAppIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await isvGetAppIdWithOptions(request as! IsvGetAppIdRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChatappTemplateWithOptions(_ tmpReq: ListChatappTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListChatappTemplateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListChatappTemplateShrinkRequest = ListChatappTemplateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.page)) {
            request.pageShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.page, "Page", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.auditStatus)) {
            query["AuditStatus"] = request.auditStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.code)) {
            query["Code"] = request.code ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custWabaId)) {
            query["CustWabaId"] = request.custWabaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvCode)) {
            query["IsvCode"] = request.isvCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageShrink)) {
            query["Page"] = request.pageShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            query["TemplateType"] = request.templateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListChatappTemplate",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListChatappTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChatappTemplate(_ request: ListChatappTemplateRequest) async throws -> ListChatappTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listChatappTemplateWithOptions(request as! ListChatappTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFlowWithOptions(_ tmpReq: ListFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListFlowResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ListFlowShrinkRequest = ListFlowShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.page)) {
            request.pageShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.page, "Page", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowName)) {
            body["FlowName"] = request.flowName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageShrink)) {
            body["Page"] = request.pageShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListFlow",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listFlow(_ request: ListFlowRequest) async throws -> ListFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listFlowWithOptions(request as! ListFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPhoneMessageQrdlWithOptions(_ request: ListPhoneMessageQrdlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPhoneMessageQrdlResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            body["PhoneNumber"] = request.phoneNumber ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPhoneMessageQrdl",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPhoneMessageQrdlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPhoneMessageQrdl(_ request: ListPhoneMessageQrdlRequest) async throws -> ListPhoneMessageQrdlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPhoneMessageQrdlWithOptions(request as! ListPhoneMessageQrdlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductWithOptions(_ request: ListProductRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProductResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.after)) {
            query["After"] = request.after ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.before)) {
            query["Before"] = request.before ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.catalogId)) {
            query["CatalogId"] = request.catalogId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fields)) {
            query["Fields"] = request.fields ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
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
        if (!TeaUtils.Client.isUnset(request.wabaId)) {
            query["WabaId"] = request.wabaId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProduct",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProductResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProduct(_ request: ListProductRequest) async throws -> ListProductResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listProductWithOptions(request as! ListProductRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductCatalogWithOptions(_ request: ListProductCatalogRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProductCatalogResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.after)) {
            query["After"] = request.after ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.before)) {
            query["Before"] = request.before ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.businessId)) {
            query["BusinessId"] = request.businessId!;
        }
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fields)) {
            query["Fields"] = request.fields ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.limit)) {
            query["Limit"] = request.limit!;
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
            "action": "ListProductCatalog",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProductCatalogResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProductCatalog(_ request: ListProductCatalogRequest) async throws -> ListProductCatalogResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listProductCatalogWithOptions(request as! ListProductCatalogRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyChatappTemplateWithOptions(_ tmpReq: ModifyChatappTemplateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyChatappTemplateResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyChatappTemplateShrinkRequest = ModifyChatappTemplateShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.components)) {
            request.componentsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.components, "Components", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.example)) {
            request.exampleShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.example, "Example", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            body["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.componentsShrink)) {
            body["Components"] = request.componentsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custWabaId)) {
            body["CustWabaId"] = request.custWabaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.exampleShrink)) {
            body["Example"] = request.exampleShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvCode)) {
            body["IsvCode"] = request.isvCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.messageSendTtlSeconds)) {
            body["MessageSendTtlSeconds"] = request.messageSendTtlSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.templateCode)) {
            body["TemplateCode"] = request.templateCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            body["TemplateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            body["TemplateType"] = request.templateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyChatappTemplate",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyChatappTemplateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyChatappTemplate(_ request: ModifyChatappTemplateRequest) async throws -> ModifyChatappTemplateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyChatappTemplateWithOptions(request as! ModifyChatappTemplateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyFlowWithOptions(_ tmpReq: ModifyFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyFlowResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyFlowShrinkRequest = ModifyFlowShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.categories)) {
            request.categoriesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.categories, "Categories", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.categoriesShrink)) {
            body["Categories"] = request.categoriesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowId)) {
            body["FlowId"] = request.flowId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowName)) {
            body["FlowName"] = request.flowName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyFlow",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyFlow(_ request: ModifyFlowRequest) async throws -> ModifyFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyFlowWithOptions(request as! ModifyFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPhoneBusinessProfileWithOptions(_ tmpReq: ModifyPhoneBusinessProfileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyPhoneBusinessProfileResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyPhoneBusinessProfileShrinkRequest = ModifyPhoneBusinessProfileShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.websites)) {
            request.websitesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.websites, "Websites", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.about)) {
            query["About"] = request.about ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.address)) {
            query["Address"] = request.address ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            query["Email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            query["PhoneNumber"] = request.phoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.profilePictureUrl)) {
            query["ProfilePictureUrl"] = request.profilePictureUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.vertical)) {
            query["Vertical"] = request.vertical ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.websitesShrink)) {
            query["Websites"] = request.websitesShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyPhoneBusinessProfile",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyPhoneBusinessProfileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPhoneBusinessProfile(_ request: ModifyPhoneBusinessProfileRequest) async throws -> ModifyPhoneBusinessProfileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyPhoneBusinessProfileWithOptions(request as! ModifyPhoneBusinessProfileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishFlowWithOptions(_ request: PublishFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> PublishFlowResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowId)) {
            body["FlowId"] = request.flowId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PublishFlow",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PublishFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func publishFlow(_ request: PublishFlowRequest) async throws -> PublishFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await publishFlowWithOptions(request as! PublishFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryChatappBindWabaWithOptions(_ request: QueryChatappBindWabaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryChatappBindWabaResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvCode)) {
            query["IsvCode"] = request.isvCode ?? "";
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
            "action": "QueryChatappBindWaba",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryChatappBindWabaResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryChatappBindWaba(_ request: QueryChatappBindWabaRequest) async throws -> QueryChatappBindWabaResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryChatappBindWabaWithOptions(request as! QueryChatappBindWabaRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryChatappPhoneNumbersWithOptions(_ request: QueryChatappPhoneNumbersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryChatappPhoneNumbersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvCode)) {
            query["IsvCode"] = request.isvCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryChatappPhoneNumbers",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryChatappPhoneNumbersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryChatappPhoneNumbers(_ request: QueryChatappPhoneNumbersRequest) async throws -> QueryChatappPhoneNumbersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryChatappPhoneNumbersWithOptions(request as! QueryChatappPhoneNumbersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPhoneBusinessProfileWithOptions(_ request: QueryPhoneBusinessProfileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryPhoneBusinessProfileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
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
            "action": "QueryPhoneBusinessProfile",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryPhoneBusinessProfileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryPhoneBusinessProfile(_ request: QueryPhoneBusinessProfileRequest) async throws -> QueryPhoneBusinessProfileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryPhoneBusinessProfileWithOptions(request as! QueryPhoneBusinessProfileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryWabaBusinessInfoWithOptions(_ request: QueryWabaBusinessInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryWabaBusinessInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
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
        if (!TeaUtils.Client.isUnset(request.wabaId)) {
            query["WabaId"] = request.wabaId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "QueryWabaBusinessInfo",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(QueryWabaBusinessInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func queryWabaBusinessInfo(_ request: QueryWabaBusinessInfoRequest) async throws -> QueryWabaBusinessInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await queryWabaBusinessInfoWithOptions(request as! QueryWabaBusinessInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendChatappMassMessageWithOptions(_ tmpReq: SendChatappMassMessageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SendChatappMassMessageResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SendChatappMassMessageShrinkRequest = SendChatappMassMessageShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.senderList)) {
            request.senderListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.senderList, "SenderList", "json")
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channelType)) {
            body["ChannelType"] = request.channelType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custWabaId)) {
            body["CustWabaId"] = request.custWabaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fallBackContent)) {
            body["FallBackContent"] = request.fallBackContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fallBackDuration)) {
            body["FallBackDuration"] = request.fallBackDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.fallBackId)) {
            body["FallBackId"] = request.fallBackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fallBackRule)) {
            body["FallBackRule"] = request.fallBackRule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.from)) {
            body["From"] = request.from ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvCode)) {
            body["IsvCode"] = request.isvCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.label)) {
            body["Label"] = request.label ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.senderListShrink)) {
            body["SenderList"] = request.senderListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateCode)) {
            body["TemplateCode"] = request.templateCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            body["TemplateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttl)) {
            body["Ttl"] = request.ttl!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendChatappMassMessage",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendChatappMassMessageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendChatappMassMessage(_ request: SendChatappMassMessageRequest) async throws -> SendChatappMassMessageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sendChatappMassMessageWithOptions(request as! SendChatappMassMessageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendChatappMessageWithOptions(_ tmpReq: SendChatappMessageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SendChatappMessageResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SendChatappMessageShrinkRequest = SendChatappMessageShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.flowAction)) {
            request.flowActionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.flowAction, "FlowAction", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.payload)) {
            request.payloadShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.payload, "Payload", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.productAction)) {
            request.productActionShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.productAction, "ProductAction", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.templateParams)) {
            request.templateParamsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.templateParams, "TemplateParams", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.content)) {
            query["Content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payloadShrink)) {
            query["Payload"] = request.payloadShrink ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channelType)) {
            body["ChannelType"] = request.channelType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contextMessageId)) {
            body["ContextMessageId"] = request.contextMessageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custWabaId)) {
            body["CustWabaId"] = request.custWabaId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fallBackContent)) {
            body["FallBackContent"] = request.fallBackContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fallBackDuration)) {
            body["FallBackDuration"] = request.fallBackDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.fallBackId)) {
            body["FallBackId"] = request.fallBackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fallBackRule)) {
            body["FallBackRule"] = request.fallBackRule ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowActionShrink)) {
            body["FlowAction"] = request.flowActionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.from)) {
            body["From"] = request.from ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvCode)) {
            body["IsvCode"] = request.isvCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.label)) {
            body["Label"] = request.label ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.messageType)) {
            body["MessageType"] = request.messageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productActionShrink)) {
            body["ProductAction"] = request.productActionShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateCode)) {
            body["TemplateCode"] = request.templateCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateName)) {
            body["TemplateName"] = request.templateName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateParamsShrink)) {
            body["TemplateParams"] = request.templateParamsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.to)) {
            body["To"] = request.to ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trackingData)) {
            body["TrackingData"] = request.trackingData ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ttl)) {
            body["Ttl"] = request.ttl!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendChatappMessage",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendChatappMessageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendChatappMessage(_ request: SendChatappMessageRequest) async throws -> SendChatappMessageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sendChatappMessageWithOptions(request as! SendChatappMessageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitIsvCustomerTermsWithOptions(_ request: SubmitIsvCustomerTermsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitIsvCustomerTermsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.businessDesc)) {
            query["BusinessDesc"] = request.businessDesc ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contactMail)) {
            query["ContactMail"] = request.contactMail ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.countryId)) {
            query["CountryId"] = request.countryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custName)) {
            query["CustName"] = request.custName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvTerms)) {
            query["IsvTerms"] = request.isvTerms ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeAddress)) {
            query["OfficeAddress"] = request.officeAddress ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitIsvCustomerTerms",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitIsvCustomerTermsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitIsvCustomerTerms(_ request: SubmitIsvCustomerTermsRequest) async throws -> SubmitIsvCustomerTermsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitIsvCustomerTermsWithOptions(request as! SubmitIsvCustomerTermsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func triggerChatFlowWithOptions(_ tmpReq: TriggerChatFlowRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TriggerChatFlowResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: TriggerChatFlowShrinkRequest = TriggerChatFlowShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.data)) {
            request.dataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.data, "Data", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.claimTimeMillis)) {
            query["ClaimTimeMillis"] = request.claimTimeMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.dataShrink)) {
            query["Data"] = request.dataShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.discardTimeMillis)) {
            query["DiscardTimeMillis"] = request.discardTimeMillis!;
        }
        if (!TeaUtils.Client.isUnset(request.flowCode)) {
            query["FlowCode"] = request.flowCode ?? "";
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
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            query["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TriggerChatFlow",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TriggerChatFlowResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func triggerChatFlow(_ request: TriggerChatFlowRequest) async throws -> TriggerChatFlowResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await triggerChatFlowWithOptions(request as! TriggerChatFlowRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAccountWebhookWithOptions(_ request: UpdateAccountWebhookRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateAccountWebhookResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.httpFlag)) {
            query["HttpFlag"] = request.httpFlag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queueFlag)) {
            query["QueueFlag"] = request.queueFlag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statusCallbackUrl)) {
            query["StatusCallbackUrl"] = request.statusCallbackUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateAccountWebhook",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateAccountWebhookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateAccountWebhook(_ request: UpdateAccountWebhookRequest) async throws -> UpdateAccountWebhookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateAccountWebhookWithOptions(request as! UpdateAccountWebhookRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCommerceSettingWithOptions(_ request: UpdateCommerceSettingRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateCommerceSettingResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cartEnable)) {
            query["CartEnable"] = request.cartEnable!;
        }
        if (!TeaUtils.Client.isUnset(request.catalogVisible)) {
            query["CatalogVisible"] = request.catalogVisible!;
        }
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
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
            "action": "UpdateCommerceSetting",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateCommerceSettingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateCommerceSetting(_ request: UpdateCommerceSettingRequest) async throws -> UpdateCommerceSettingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateCommerceSettingWithOptions(request as! UpdateCommerceSettingRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConversationalAutomationWithOptions(_ tmpReq: UpdateConversationalAutomationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateConversationalAutomationResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateConversationalAutomationShrinkRequest = UpdateConversationalAutomationShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.commands)) {
            request.commandsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.commands, "Commands", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.prompts)) {
            request.promptsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.prompts, "Prompts", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commandsShrink)) {
            query["Commands"] = request.commandsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableWelcomeMessage)) {
            query["EnableWelcomeMessage"] = request.enableWelcomeMessage!;
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            query["PhoneNumber"] = request.phoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptsShrink)) {
            query["Prompts"] = request.promptsShrink ?? "";
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
            "action": "UpdateConversationalAutomation",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateConversationalAutomationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateConversationalAutomation(_ request: UpdateConversationalAutomationRequest) async throws -> UpdateConversationalAutomationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateConversationalAutomationWithOptions(request as! UpdateConversationalAutomationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFlowJSONAssetWithOptions(_ request: UpdateFlowJSONAssetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFlowJSONAssetResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filePath)) {
            body["FilePath"] = request.filePath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.flowId)) {
            body["FlowId"] = request.flowId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFlowJSONAsset",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFlowJSONAssetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFlowJSONAsset(_ request: UpdateFlowJSONAssetRequest) async throws -> UpdateFlowJSONAssetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateFlowJSONAssetWithOptions(request as! UpdateFlowJSONAssetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePhoneEncryptionPublicKeyWithOptions(_ request: UpdatePhoneEncryptionPublicKeyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePhoneEncryptionPublicKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptionPublicKey)) {
            body["EncryptionPublicKey"] = request.encryptionPublicKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            body["PhoneNumber"] = request.phoneNumber ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePhoneEncryptionPublicKey",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePhoneEncryptionPublicKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePhoneEncryptionPublicKey(_ request: UpdatePhoneEncryptionPublicKeyRequest) async throws -> UpdatePhoneEncryptionPublicKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updatePhoneEncryptionPublicKeyWithOptions(request as! UpdatePhoneEncryptionPublicKeyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePhoneMessageQrdlWithOptions(_ request: UpdatePhoneMessageQrdlRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePhoneMessageQrdlResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.generateQrImage)) {
            body["GenerateQrImage"] = request.generateQrImage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            body["PhoneNumber"] = request.phoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.prefilledMessage)) {
            body["PrefilledMessage"] = request.prefilledMessage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.qrdlCode)) {
            body["QrdlCode"] = request.qrdlCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePhoneMessageQrdl",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePhoneMessageQrdlResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePhoneMessageQrdl(_ request: UpdatePhoneMessageQrdlRequest) async throws -> UpdatePhoneMessageQrdlResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updatePhoneMessageQrdlWithOptions(request as! UpdatePhoneMessageQrdlRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePhoneWebhookWithOptions(_ request: UpdatePhoneWebhookRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePhoneWebhookResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.httpFlag)) {
            query["HttpFlag"] = request.httpFlag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            query["PhoneNumber"] = request.phoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queueFlag)) {
            query["QueueFlag"] = request.queueFlag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.statusCallbackUrl)) {
            query["StatusCallbackUrl"] = request.statusCallbackUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.upCallbackUrl)) {
            query["UpCallbackUrl"] = request.upCallbackUrl ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePhoneWebhook",
            "version": "2020-06-06",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePhoneWebhookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePhoneWebhook(_ request: UpdatePhoneWebhookRequest) async throws -> UpdatePhoneWebhookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updatePhoneWebhookWithOptions(request as! UpdatePhoneWebhookRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
