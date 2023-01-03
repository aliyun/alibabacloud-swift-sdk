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
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.custSpaceId)) {
            query["CustSpaceId"] = request.custSpaceId ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.category)) {
            body["Category"] = request.category ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.componentsShrink)) {
            body["Components"] = request.componentsShrink ?? "";
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
        if (!TeaUtils.Client.isUnset(request.name)) {
            body["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateType)) {
            body["TemplateType"] = request.templateType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
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
        if (!TeaUtils.Client.isUnset(request.templateCode)) {
            body["TemplateCode"] = request.templateCode ?? "";
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
        if (!TeaUtils.Client.isUnset(request.fallBackId)) {
            body["FallBackId"] = request.fallBackId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.from)) {
            body["From"] = request.from ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isvCode)) {
            body["IsvCode"] = request.isvCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            body["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.senderListShrink)) {
            body["SenderList"] = request.senderListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            body["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.templateCode)) {
            body["TemplateCode"] = request.templateCode ?? "";
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
        if (!TeaUtils.Client.isUnset(request.tag)) {
            body["Tag"] = request.tag ?? "";
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
}
