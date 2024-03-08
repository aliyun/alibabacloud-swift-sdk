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
        self._endpoint = try getEndpoint("intelligentcreation", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func actualDeductResourceWithOptions(_ request: ActualDeductResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ActualDeductResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ActualDeductResource",
            "version": "2024-01-18",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/v1/digital-human/commands/actual-deduct",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ActualDeductResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func actualDeductResource(_ request: ActualDeductResourceRequest) async throws -> ActualDeductResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await actualDeductResourceWithOptions(request as! ActualDeductResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func actualDeductResourcesWithOptions(_ request: ActualDeductResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ActualDeductResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ActualDeductResources",
            "version": "2024-01-18",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/digitalHuman/commands/actualDeductResources",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ActualDeductResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func actualDeductResources(_ request: ActualDeductResourcesRequest) async throws -> ActualDeductResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await actualDeductResourcesWithOptions(request as! ActualDeductResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copywritingQAWithOptions(_ tmpReq: CopywritingQARequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CopywritingQAResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CopywritingQAShrinkRequest = CopywritingQAShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.histories)) {
            request.historiesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.histories, "histories", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.history)) {
            request.historyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.history, "history", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["accountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.historiesShrink)) {
            query["histories"] = request.historiesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.historyShrink)) {
            query["history"] = request.historyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.question)) {
            query["question"] = request.question ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sessionId)) {
            query["sessionId"] = request.sessionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stream)) {
            query["stream"] = request.stream!;
        }
        if (!TeaUtils.Client.isUnset(request.subAccountId)) {
            query["subAccountId"] = request.subAccountId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CopywritingQA",
            "version": "2024-01-18",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/digitalHuman/commands/copywritingQA",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CopywritingQAResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copywritingQA(_ request: CopywritingQARequest) async throws -> CopywritingQAResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await copywritingQAWithOptions(request as! CopywritingQARequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copywritingQAV1WithOptions(_ request: CopywritingQAV1Request, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CopywritingQAV1Response {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CopywritingQAV1",
            "version": "2024-01-18",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/digitalHuman/commands/copywritingQAV1",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CopywritingQAV1Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copywritingQAV1(_ request: CopywritingQAV1Request) async throws -> CopywritingQAV1Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await copywritingQAV1WithOptions(request as! CopywritingQAV1Request, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func directDeductResourceWithOptions(_ request: DirectDeductResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DirectDeductResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DirectDeductResource",
            "version": "2024-01-18",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/v1/digital-human/commands/direct-deduct",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DirectDeductResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func directDeductResource(_ request: DirectDeductResourceRequest) async throws -> DirectDeductResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await directDeductResourceWithOptions(request as! DirectDeductResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func directDeductResourcesWithOptions(_ request: DirectDeductResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DirectDeductResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DirectDeductResources",
            "version": "2024-01-18",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/digitalHuman/commands/directDeductResources",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DirectDeductResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func directDeductResources(_ request: DirectDeductResourcesRequest) async throws -> DirectDeductResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await directDeductResourcesWithOptions(request as! DirectDeductResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func expectDeductResourceWithOptions(_ request: ExpectDeductResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExpectDeductResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExpectDeductResource",
            "version": "2024-01-18",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/v1/digital-human/commands/expect-deduct",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExpectDeductResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func expectDeductResource(_ request: ExpectDeductResourceRequest) async throws -> ExpectDeductResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await expectDeductResourceWithOptions(request as! ExpectDeductResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func expectDeductResourcesWithOptions(_ request: ExpectDeductResourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ExpectDeductResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExpectDeductResources",
            "version": "2024-01-18",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/digitalHuman/commands/expectDeductResources",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExpectDeductResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func expectDeductResources(_ request: ExpectDeductResourcesRequest) async throws -> ExpectDeductResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await expectDeductResourcesWithOptions(request as! ExpectDeductResourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRemainResourceWithOptions(_ request: GetRemainResourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRemainResourceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["accountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["resourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subAccountId)) {
            query["subAccountId"] = request.subAccountId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRemainResource",
            "version": "2024-01-18",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/digitalHuman/commands/getRemainResource",
            "method": "GET",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRemainResourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRemainResource(_ request: GetRemainResourceRequest) async throws -> GetRemainResourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRemainResourceWithOptions(request as! GetRemainResourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitBulletQuestionsWithOptions(_ tmpReq: SubmitBulletQuestionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitBulletQuestionsResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubmitBulletQuestionsShrinkRequest = SubmitBulletQuestionsShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.questions)) {
            request.questionsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.questions, "questions", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accountId)) {
            query["accountId"] = request.accountId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.questionsShrink)) {
            query["questions"] = request.questionsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.roomId)) {
            query["roomId"] = request.roomId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subAccountId)) {
            query["subAccountId"] = request.subAccountId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitBulletQuestions",
            "version": "2024-01-18",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/digitalHuman/commands/submitBulletQuestions",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitBulletQuestionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitBulletQuestions(_ request: SubmitBulletQuestionsRequest) async throws -> SubmitBulletQuestionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitBulletQuestionsWithOptions(request as! SubmitBulletQuestionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitBulletQuestionsV1WithOptions(_ request: SubmitBulletQuestionsV1Request, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitBulletQuestionsV1Response {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(request.body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitBulletQuestionsV1",
            "version": "2024-01-18",
            "protocol": "HTTPS",
            "pathname": "/yic/yic-console/openService/v1/digitalHuman/commands/submitBulletQuestionsV1",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubmitBulletQuestionsV1Response(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitBulletQuestionsV1(_ request: SubmitBulletQuestionsV1Request) async throws -> SubmitBulletQuestionsV1Response {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await submitBulletQuestionsV1WithOptions(request as! SubmitBulletQuestionsV1Request, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
