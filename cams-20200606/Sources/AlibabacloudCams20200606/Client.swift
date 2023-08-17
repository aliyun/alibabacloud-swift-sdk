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
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.wabaId)) {
            body["WabaId"] = request.wabaId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
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
    public func chatappPhoneNumberRegisterWithOptions(_ request: ChatappPhoneNumberRegisterRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ChatappPhoneNumberRegisterResponse {
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
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
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
        if (!TeaUtils.Client.isUnset(request.templateCode)) {
            query["TemplateCode"] = request.templateCode ?? "";
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
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            body["CustSpaceId"] = request.custSpaceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.locale)) {
            body["Locale"] = request.locale ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.method)) {
            body["Method"] = request.method ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            body["PhoneNumber"] = request.phoneNumber ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
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
    public func isvGetAppIdWithOptions(_ request: IsvGetAppIdRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> IsvGetAppIdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
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
    public func modifyPhoneBusinessProfileWithOptions(_ tmpReq: ModifyPhoneBusinessProfileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyPhoneBusinessProfileResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModifyPhoneBusinessProfileShrinkRequest = ModifyPhoneBusinessProfileShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.websites)) {
            request.websitesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.websites, "Websites", "json")
        }
        var query: [String: Any] = [:]
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
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            query["PhoneNumber"] = request.phoneNumber ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.profilePictureUrl)) {
            query["ProfilePictureUrl"] = request.profilePictureUrl ?? "";
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
    public func queryChatappBindWabaWithOptions(_ request: QueryChatappBindWabaRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> QueryChatappBindWabaResponse {
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
        if (!TeaUtils.Client.isUnset(request.phoneNumber)) {
            query["PhoneNumber"] = request.phoneNumber ?? "";
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
