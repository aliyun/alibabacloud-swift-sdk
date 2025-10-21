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
        self._endpoint = try getEndpoint("rai", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func batchContentAsyncDetectWithOptions(_ request: BatchContentAsyncDetectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchContentAsyncDetectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneName)) {
            query["SceneName"] = request.sceneName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["ServiceName"] = request.serviceName ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceParameterList)) {
            body["serviceParameterList"] = request.serviceParameterList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchContentAsyncDetect",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchContentAsyncDetectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchContentAsyncDetect(_ request: BatchContentAsyncDetectRequest) async throws -> BatchContentAsyncDetectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchContentAsyncDetectWithOptions(request as! BatchContentAsyncDetectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchContentSyncDetectWithOptions(_ request: BatchContentSyncDetectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> BatchContentSyncDetectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneName)) {
            query["SceneName"] = request.sceneName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["ServiceName"] = request.serviceName ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceParameterList)) {
            body["serviceParameterList"] = request.serviceParameterList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BatchContentSyncDetect",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BatchContentSyncDetectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func batchContentSyncDetect(_ request: BatchContentSyncDetectRequest) async throws -> BatchContentSyncDetectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await batchContentSyncDetectWithOptions(request as! BatchContentSyncDetectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkAccountWithOptions(_ request: CheckAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckAccount",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkAccount(_ request: CheckAccountRequest) async throws -> CheckAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await checkAccountWithOptions(request as! CheckAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func contentAsyncDetectWithOptions(_ request: ContentAsyncDetectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ContentAsyncDetectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneName)) {
            query["SceneName"] = request.sceneName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["ServiceName"] = request.serviceName ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceParameter)) {
            body["serviceParameter"] = request.serviceParameter!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ContentAsyncDetect",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ContentAsyncDetectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func contentAsyncDetect(_ request: ContentAsyncDetectRequest) async throws -> ContentAsyncDetectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await contentAsyncDetectWithOptions(request as! ContentAsyncDetectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func contentSyncDetectWithOptions(_ request: ContentSyncDetectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ContentSyncDetectResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneName)) {
            query["SceneName"] = request.sceneName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["ServiceName"] = request.serviceName ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.serviceParameter)) {
            body["serviceParameter"] = request.serviceParameter!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ContentSyncDetect",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ContentSyncDetectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func contentSyncDetect(_ request: ContentSyncDetectRequest) async throws -> ContentSyncDetectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await contentSyncDetectWithOptions(request as! ContentSyncDetectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModelInstanceWithOptions(_ request: CreateModelInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateModelInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.easServiceId)) {
            query["EasServiceId"] = request.easServiceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.easServiceName)) {
            query["EasServiceName"] = request.easServiceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelCallName)) {
            query["ModelCallName"] = request.modelCallName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelCategoryId)) {
            query["ModelCategoryId"] = request.modelCategoryId!;
        }
        if (!TeaUtils.Client.isUnset(request.modelToken)) {
            query["ModelToken"] = request.modelToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelUrl)) {
            query["ModelUrl"] = request.modelUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelVpcUrl)) {
            query["ModelVpcUrl"] = request.modelVpcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateModelInstance",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateModelInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createModelInstance(_ request: CreateModelInstanceRequest) async throws -> CreateModelInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createModelInstanceWithOptions(request as! CreateModelInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPolicyWithOptions(_ tmpReq: CreatePolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePolicyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreatePolicyShrinkRequest = CreatePolicyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.harmfulCategoryConfigInfoList)) {
            request.harmfulCategoryConfigInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.harmfulCategoryConfigInfoList, "HarmfulCategoryConfigInfoList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.promptAttackInfo)) {
            request.promptAttackInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.promptAttackInfo, "PromptAttackInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.promptAttackInfoList)) {
            request.promptAttackInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.promptAttackInfoList, "PromptAttackInfoList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.regularExpressList)) {
            request.regularExpressListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.regularExpressList, "RegularExpressList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sensitiveConfigList)) {
            request.sensitiveConfigListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sensitiveConfigList, "SensitiveConfigList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sensitiveTopicList)) {
            request.sensitiveTopicListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sensitiveTopicList, "SensitiveTopicList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sensitiveWordList)) {
            request.sensitiveWordListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sensitiveWordList, "SensitiveWordList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.topicConfigInfoList)) {
            request.topicConfigInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.topicConfigInfoList, "TopicConfigInfoList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.wordGroupInfoList)) {
            request.wordGroupInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.wordGroupInfoList, "WordGroupInfoList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contentSafeModelInstanceId)) {
            query["ContentSafeModelInstanceId"] = request.contentSafeModelInstanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.enableSensitiveInputCheck)) {
            query["EnableSensitiveInputCheck"] = request.enableSensitiveInputCheck!;
        }
        if (!TeaUtils.Client.isUnset(request.enableSensitiveOutputCheck)) {
            query["EnableSensitiveOutputCheck"] = request.enableSensitiveOutputCheck!;
        }
        if (!TeaUtils.Client.isUnset(request.harmfulCategoryConfigInfoListShrink)) {
            query["HarmfulCategoryConfigInfoList"] = request.harmfulCategoryConfigInfoListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputSafeAnswer)) {
            query["InputSafeAnswer"] = request.inputSafeAnswer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputSafeAnswerSwitch)) {
            query["InputSafeAnswerSwitch"] = request.inputSafeAnswerSwitch!;
        }
        if (!TeaUtils.Client.isUnset(request.isSidecarPolicy)) {
            query["IsSidecarPolicy"] = request.isSidecarPolicy!;
        }
        if (!TeaUtils.Client.isUnset(request.outputSafeAnswer)) {
            query["OutputSafeAnswer"] = request.outputSafeAnswer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outputSafeAnswerSwitch)) {
            query["OutputSafeAnswerSwitch"] = request.outputSafeAnswerSwitch!;
        }
        if (!TeaUtils.Client.isUnset(request.policyName)) {
            query["PolicyName"] = request.policyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptAttackInfoShrink)) {
            query["PromptAttackInfo"] = request.promptAttackInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptAttackInfoListShrink)) {
            query["PromptAttackInfoList"] = request.promptAttackInfoListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptAttackModelInstanceId)) {
            query["PromptAttackModelInstanceId"] = request.promptAttackModelInstanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regularExpressListShrink)) {
            query["RegularExpressList"] = request.regularExpressListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneType)) {
            query["SceneType"] = request.sceneType!;
        }
        if (!TeaUtils.Client.isUnset(request.sensitiveConfigListShrink)) {
            query["SensitiveConfigList"] = request.sensitiveConfigListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sensitiveTopicListShrink)) {
            query["SensitiveTopicList"] = request.sensitiveTopicListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sensitiveTopicModelInstanceId)) {
            query["SensitiveTopicModelInstanceId"] = request.sensitiveTopicModelInstanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.sensitiveWordListShrink)) {
            query["SensitiveWordList"] = request.sensitiveWordListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicConfigInfoListShrink)) {
            query["TopicConfigInfoList"] = request.topicConfigInfoListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wordGroupInfoListShrink)) {
            query["WordGroupInfoList"] = request.wordGroupInfoListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePolicy",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPolicy(_ request: CreatePolicyRequest) async throws -> CreatePolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPolicyWithOptions(request as! CreatePolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTopicWithOptions(_ tmpReq: CreateTopicRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTopicResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateTopicShrinkRequest = CreateTopicShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.bodyData)) {
            request.bodyDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.bodyData, "BodyData", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicDefinition)) {
            query["TopicDefinition"] = request.topicDefinition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicName)) {
            query["TopicName"] = request.topicName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bodyDataShrink)) {
            body["BodyData"] = request.bodyDataShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTopic",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTopicResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTopic(_ request: CreateTopicRequest) async throws -> CreateTopicResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createTopicWithOptions(request as! CreateTopicRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWordGroupWithOptions(_ tmpReq: CreateWordGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateWordGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateWordGroupShrinkRequest = CreateWordGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.bodyData)) {
            request.bodyDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.bodyData, "BodyData", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commit)) {
            query["Commit"] = request.commit!;
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bodyDataShrink)) {
            body["BodyData"] = request.bodyDataShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateWordGroup",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateWordGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createWordGroup(_ request: CreateWordGroupRequest) async throws -> CreateWordGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createWordGroupWithOptions(request as! CreateWordGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModelInstanceWithOptions(_ tmpReq: DeleteModelInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteModelInstanceResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteModelInstanceShrinkRequest = DeleteModelInstanceShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.modelInstanceIdList)) {
            request.modelInstanceIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.modelInstanceIdList, "ModelInstanceIdList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modelInstanceIdListShrink)) {
            query["ModelInstanceIdList"] = request.modelInstanceIdListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteModelInstance",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteModelInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteModelInstance(_ request: DeleteModelInstanceRequest) async throws -> DeleteModelInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteModelInstanceWithOptions(request as! DeleteModelInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePolicyWithOptions(_ tmpReq: DeletePolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePolicyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeletePolicyShrinkRequest = DeletePolicyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.policyIdList)) {
            request.policyIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.policyIdList, "PolicyIdList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.policyIdListShrink)) {
            query["PolicyIdList"] = request.policyIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePolicy",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePolicy(_ request: DeletePolicyRequest) async throws -> DeletePolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deletePolicyWithOptions(request as! DeletePolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTopicWithOptions(_ tmpReq: DeleteTopicRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTopicResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteTopicShrinkRequest = DeleteTopicShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.topicIdList)) {
            request.topicIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.topicIdList, "TopicIdList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicIdListShrink)) {
            query["TopicIdList"] = request.topicIdListShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTopic",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteTopicResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTopic(_ request: DeleteTopicRequest) async throws -> DeleteTopicResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteTopicWithOptions(request as! DeleteTopicRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWordGroupWithOptions(_ tmpReq: DeleteWordGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteWordGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: DeleteWordGroupShrinkRequest = DeleteWordGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.groupIdList)) {
            request.groupIdListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.groupIdList, "GroupIdList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupIdListShrink)) {
            query["GroupIdList"] = request.groupIdListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteWordGroup",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteWordGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteWordGroup(_ request: DeleteWordGroupRequest) async throws -> DeleteWordGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteWordGroupWithOptions(request as! DeleteWordGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getContentDetectResultWithOptions(_ request: GetContentDetectResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetContentDetectResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetContentDetectResult",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetContentDetectResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getContentDetectResult(_ request: GetContentDetectResultRequest) async throws -> GetContentDetectResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getContentDetectResultWithOptions(request as! GetContentDetectResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getModelInputContentDetectResultWithOptions(_ request: GetModelInputContentDetectResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetModelInputContentDetectResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetModelInputContentDetectResult",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetModelInputContentDetectResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getModelInputContentDetectResult(_ request: GetModelInputContentDetectResultRequest) async throws -> GetModelInputContentDetectResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getModelInputContentDetectResultWithOptions(request as! GetModelInputContentDetectResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getModelInstanceInfoWithOptions(_ request: GetModelInstanceInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetModelInstanceInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.modelInstanceId)) {
            query["ModelInstanceId"] = request.modelInstanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.sceneType)) {
            query["SceneType"] = request.sceneType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetModelInstanceInfo",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetModelInstanceInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getModelInstanceInfo(_ request: GetModelInstanceInfoRequest) async throws -> GetModelInstanceInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getModelInstanceInfoWithOptions(request as! GetModelInstanceInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getModelOutputContentDetectResultWithOptions(_ request: GetModelOutputContentDetectResultRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetModelOutputContentDetectResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetModelOutputContentDetectResult",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetModelOutputContentDetectResultResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getModelOutputContentDetectResult(_ request: GetModelOutputContentDetectResultRequest) async throws -> GetModelOutputContentDetectResultResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getModelOutputContentDetectResultWithOptions(request as! GetModelOutputContentDetectResultRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPolicyDefaultOptionsWithOptions(_ request: GetPolicyDefaultOptionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPolicyDefaultOptionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPolicyDefaultOptions",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPolicyDefaultOptionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPolicyDefaultOptions(_ request: GetPolicyDefaultOptionsRequest) async throws -> GetPolicyDefaultOptionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPolicyDefaultOptionsWithOptions(request as! GetPolicyDefaultOptionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPolicyInfoWithOptions(_ request: GetPolicyInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetPolicyInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["PolicyId"] = request.policyId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetPolicyInfo",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetPolicyInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getPolicyInfo(_ request: GetPolicyInfoRequest) async throws -> GetPolicyInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getPolicyInfoWithOptions(request as! GetPolicyInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTopicWithOptions(_ request: GetTopicRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTopicResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicId)) {
            query["TopicId"] = request.topicId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTopic",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTopicResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTopic(_ request: GetTopicRequest) async throws -> GetTopicResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTopicWithOptions(request as! GetTopicRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWordGroupWithOptions(_ request: GetWordGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetWordGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetWordGroup",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetWordGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getWordGroup(_ request: GetWordGroupRequest) async throws -> GetWordGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getWordGroupWithOptions(request as! GetWordGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModelCategoryWithOptions(_ request: ListModelCategoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListModelCategoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contentSafeImageSupported)) {
            query["ContentSafeImageSupported"] = request.contentSafeImageSupported!;
        }
        if (!TeaUtils.Client.isUnset(request.contentSafeTextSupported)) {
            query["ContentSafeTextSupported"] = request.contentSafeTextSupported!;
        }
        if (!TeaUtils.Client.isUnset(request.modelCategoryName)) {
            query["ModelCategoryName"] = request.modelCategoryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelSource)) {
            query["ModelSource"] = request.modelSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptAttackTextSupported)) {
            query["PromptAttackTextSupported"] = request.promptAttackTextSupported!;
        }
        if (!TeaUtils.Client.isUnset(request.sensitiveTopicTextSupported)) {
            query["SensitiveTopicTextSupported"] = request.sensitiveTopicTextSupported!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListModelCategory",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListModelCategoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModelCategory(_ request: ListModelCategoryRequest) async throws -> ListModelCategoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listModelCategoryWithOptions(request as! ListModelCategoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModelInstanceWithOptions(_ request: ListModelInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListModelInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.easServiceName)) {
            query["EasServiceName"] = request.easServiceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isSidecarPolicy)) {
            query["IsSidecarPolicy"] = request.isSidecarPolicy!;
        }
        if (!TeaUtils.Client.isUnset(request.isSupportContentSafe)) {
            query["IsSupportContentSafe"] = request.isSupportContentSafe!;
        }
        if (!TeaUtils.Client.isUnset(request.isSupportPromptAttack)) {
            query["IsSupportPromptAttack"] = request.isSupportPromptAttack!;
        }
        if (!TeaUtils.Client.isUnset(request.isSupportSensitiveTopic)) {
            query["IsSupportSensitiveTopic"] = request.isSupportSensitiveTopic!;
        }
        if (!TeaUtils.Client.isUnset(request.modelSource)) {
            query["ModelSource"] = request.modelSource ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListModelInstance",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListModelInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listModelInstance(_ request: ListModelInstanceRequest) async throws -> ListModelInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listModelInstanceWithOptions(request as! ListModelInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPolicyWithOptions(_ request: ListPolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListPolicyResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.isSidecarPolicy)) {
            query["IsSidecarPolicy"] = request.isSidecarPolicy!;
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.policyIdentifier)) {
            query["PolicyIdentifier"] = request.policyIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyName)) {
            query["PolicyName"] = request.policyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneType)) {
            query["SceneType"] = request.sceneType!;
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListPolicy",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListPolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listPolicy(_ request: ListPolicyRequest) async throws -> ListPolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listPolicyWithOptions(request as! ListPolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTopicWithOptions(_ request: ListTopicRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTopicResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicName)) {
            query["TopicName"] = request.topicName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTopic",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTopicResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTopic(_ request: ListTopicRequest) async throws -> ListTopicResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTopicWithOptions(request as! ListTopicRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWordGroupWithOptions(_ request: ListWordGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListWordGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.order)) {
            query["Order"] = request.order ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sortBy)) {
            query["SortBy"] = request.sortBy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListWordGroup",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListWordGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listWordGroup(_ request: ListWordGroupRequest) async throws -> ListWordGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listWordGroupWithOptions(request as! ListWordGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modelInputContentAsyncDetectWithOptions(_ tmpReq: ModelInputContentAsyncDetectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModelInputContentAsyncDetectResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModelInputContentAsyncDetectShrinkRequest = ModelInputContentAsyncDetectShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.bodyData)) {
            request.bodyDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.bodyData, "BodyData", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.policyIdentifier)) {
            query["PolicyIdentifier"] = request.policyIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneName)) {
            query["SceneName"] = request.sceneName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["ServiceName"] = request.serviceName ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bodyDataShrink)) {
            body["BodyData"] = request.bodyDataShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModelInputContentAsyncDetect",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModelInputContentAsyncDetectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modelInputContentAsyncDetect(_ request: ModelInputContentAsyncDetectRequest) async throws -> ModelInputContentAsyncDetectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modelInputContentAsyncDetectWithOptions(request as! ModelInputContentAsyncDetectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modelInputContentSyncDetectWithOptions(_ tmpReq: ModelInputContentSyncDetectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModelInputContentSyncDetectResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModelInputContentSyncDetectShrinkRequest = ModelInputContentSyncDetectShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.bodyData)) {
            request.bodyDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.bodyData, "BodyData", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.policyIdentifier)) {
            query["PolicyIdentifier"] = request.policyIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneName)) {
            query["SceneName"] = request.sceneName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["ServiceName"] = request.serviceName ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bodyDataShrink)) {
            body["BodyData"] = request.bodyDataShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModelInputContentSyncDetect",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModelInputContentSyncDetectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modelInputContentSyncDetect(_ request: ModelInputContentSyncDetectRequest) async throws -> ModelInputContentSyncDetectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modelInputContentSyncDetectWithOptions(request as! ModelInputContentSyncDetectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modelOutputContentAsyncDetectWithOptions(_ tmpReq: ModelOutputContentAsyncDetectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModelOutputContentAsyncDetectResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModelOutputContentAsyncDetectShrinkRequest = ModelOutputContentAsyncDetectShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.bodyData)) {
            request.bodyDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.bodyData, "BodyData", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.policyIdentifier)) {
            query["PolicyIdentifier"] = request.policyIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneName)) {
            query["SceneName"] = request.sceneName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["ServiceName"] = request.serviceName ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bodyDataShrink)) {
            body["BodyData"] = request.bodyDataShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModelOutputContentAsyncDetect",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModelOutputContentAsyncDetectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modelOutputContentAsyncDetect(_ request: ModelOutputContentAsyncDetectRequest) async throws -> ModelOutputContentAsyncDetectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modelOutputContentAsyncDetectWithOptions(request as! ModelOutputContentAsyncDetectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modelOutputContentSyncDetectWithOptions(_ tmpReq: ModelOutputContentSyncDetectRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModelOutputContentSyncDetectResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: ModelOutputContentSyncDetectShrinkRequest = ModelOutputContentSyncDetectShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.bodyData)) {
            request.bodyDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.bodyData, "BodyData", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.policyIdentifier)) {
            query["PolicyIdentifier"] = request.policyIdentifier ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneName)) {
            query["SceneName"] = request.sceneName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            query["ServiceName"] = request.serviceName ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bodyDataShrink)) {
            body["BodyData"] = request.bodyDataShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModelOutputContentSyncDetect",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModelOutputContentSyncDetectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modelOutputContentSyncDetect(_ request: ModelOutputContentSyncDetectRequest) async throws -> ModelOutputContentSyncDetectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modelOutputContentSyncDetectWithOptions(request as! ModelOutputContentSyncDetectRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerAccountWithOptions(_ request: RegisterAccountRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RegisterAccountResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.memo)) {
            query["Memo"] = request.memo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RegisterAccount",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RegisterAccountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func registerAccount(_ request: RegisterAccountRequest) async throws -> RegisterAccountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await registerAccountWithOptions(request as! RegisterAccountRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateModelInstanceWithOptions(_ request: UpdateModelInstanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateModelInstanceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.easServiceId)) {
            query["EasServiceId"] = request.easServiceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.easServiceName)) {
            query["EasServiceName"] = request.easServiceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelCallName)) {
            query["ModelCallName"] = request.modelCallName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelCategoryId)) {
            query["ModelCategoryId"] = request.modelCategoryId!;
        }
        if (!TeaUtils.Client.isUnset(request.modelInstanceId)) {
            query["ModelInstanceId"] = request.modelInstanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.modelToken)) {
            query["ModelToken"] = request.modelToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelUrl)) {
            query["ModelUrl"] = request.modelUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.modelVpcUrl)) {
            query["ModelVpcUrl"] = request.modelVpcUrl ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateModelInstance",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateModelInstanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateModelInstance(_ request: UpdateModelInstanceRequest) async throws -> UpdateModelInstanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateModelInstanceWithOptions(request as! UpdateModelInstanceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePolicyWithOptions(_ tmpReq: UpdatePolicyRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdatePolicyResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdatePolicyShrinkRequest = UpdatePolicyShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.harmfulCategoryConfigInfoList)) {
            request.harmfulCategoryConfigInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.harmfulCategoryConfigInfoList, "HarmfulCategoryConfigInfoList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.promptAttackInfo)) {
            request.promptAttackInfoShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.promptAttackInfo, "PromptAttackInfo", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.promptAttackInfoList)) {
            request.promptAttackInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.promptAttackInfoList, "PromptAttackInfoList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.regularExpressList)) {
            request.regularExpressListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.regularExpressList, "RegularExpressList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sensitiveConfigList)) {
            request.sensitiveConfigListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sensitiveConfigList, "SensitiveConfigList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sensitiveTopicList)) {
            request.sensitiveTopicListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sensitiveTopicList, "SensitiveTopicList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.sensitiveWordList)) {
            request.sensitiveWordListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.sensitiveWordList, "SensitiveWordList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.topicConfigInfoList)) {
            request.topicConfigInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.topicConfigInfoList, "TopicConfigInfoList", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.wordGroupInfoList)) {
            request.wordGroupInfoListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.wordGroupInfoList, "WordGroupInfoList", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.contentSafeModelInstanceId)) {
            query["ContentSafeModelInstanceId"] = request.contentSafeModelInstanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.enableSensitiveInputCheck)) {
            query["EnableSensitiveInputCheck"] = request.enableSensitiveInputCheck!;
        }
        if (!TeaUtils.Client.isUnset(request.enableSensitiveOutputCheck)) {
            query["EnableSensitiveOutputCheck"] = request.enableSensitiveOutputCheck!;
        }
        if (!TeaUtils.Client.isUnset(request.harmfulCategoryConfigInfoListShrink)) {
            query["HarmfulCategoryConfigInfoList"] = request.harmfulCategoryConfigInfoListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputSafeAnswer)) {
            query["InputSafeAnswer"] = request.inputSafeAnswer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.inputSafeAnswerSwitch)) {
            query["InputSafeAnswerSwitch"] = request.inputSafeAnswerSwitch!;
        }
        if (!TeaUtils.Client.isUnset(request.isSidecarPolicy)) {
            query["IsSidecarPolicy"] = request.isSidecarPolicy!;
        }
        if (!TeaUtils.Client.isUnset(request.outputSafeAnswer)) {
            query["OutputSafeAnswer"] = request.outputSafeAnswer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.outputSafeAnswerSwitch)) {
            query["OutputSafeAnswerSwitch"] = request.outputSafeAnswerSwitch!;
        }
        if (!TeaUtils.Client.isUnset(request.policyId)) {
            query["PolicyId"] = request.policyId!;
        }
        if (!TeaUtils.Client.isUnset(request.policyName)) {
            query["PolicyName"] = request.policyName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptAttackInfoShrink)) {
            query["PromptAttackInfo"] = request.promptAttackInfoShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptAttackInfoListShrink)) {
            query["PromptAttackInfoList"] = request.promptAttackInfoListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promptAttackModelInstanceId)) {
            query["PromptAttackModelInstanceId"] = request.promptAttackModelInstanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regularExpressListShrink)) {
            query["RegularExpressList"] = request.regularExpressListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sceneType)) {
            query["SceneType"] = request.sceneType!;
        }
        if (!TeaUtils.Client.isUnset(request.sensitiveConfigListShrink)) {
            query["SensitiveConfigList"] = request.sensitiveConfigListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sensitiveTopicListShrink)) {
            query["SensitiveTopicList"] = request.sensitiveTopicListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sensitiveTopicModelInstanceId)) {
            query["SensitiveTopicModelInstanceId"] = request.sensitiveTopicModelInstanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.sensitiveWordListShrink)) {
            query["SensitiveWordList"] = request.sensitiveWordListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicConfigInfoListShrink)) {
            query["TopicConfigInfoList"] = request.topicConfigInfoListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wordGroupInfoListShrink)) {
            query["WordGroupInfoList"] = request.wordGroupInfoListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.workspaceId)) {
            query["WorkspaceId"] = request.workspaceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdatePolicy",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdatePolicyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updatePolicy(_ request: UpdatePolicyRequest) async throws -> UpdatePolicyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updatePolicyWithOptions(request as! UpdatePolicyRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTopicWithOptions(_ tmpReq: UpdateTopicRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateTopicResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateTopicShrinkRequest = UpdateTopicShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.bodyData)) {
            request.bodyDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.bodyData, "BodyData", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicDefinition)) {
            query["TopicDefinition"] = request.topicDefinition ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicId)) {
            query["TopicId"] = request.topicId!;
        }
        if (!TeaUtils.Client.isUnset(request.topicName)) {
            query["TopicName"] = request.topicName ?? "";
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bodyDataShrink)) {
            body["BodyData"] = request.bodyDataShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateTopic",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateTopicResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateTopic(_ request: UpdateTopicRequest) async throws -> UpdateTopicResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateTopicWithOptions(request as! UpdateTopicRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWordGroupWithOptions(_ tmpReq: UpdateWordGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateWordGroupResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: UpdateWordGroupShrinkRequest = UpdateWordGroupShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.bodyData)) {
            request.bodyDataShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.bodyData, "BodyData", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commit)) {
            query["Commit"] = request.commit!;
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId!;
        }
        if (!TeaUtils.Client.isUnset(request.groupName)) {
            query["GroupName"] = request.groupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.wordInfoListModified)) {
            query["WordInfoListModified"] = request.wordInfoListModified!;
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bodyDataShrink)) {
            body["BodyData"] = request.bodyDataShrink ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateWordGroup",
            "version": "2024-07-01",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateWordGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateWordGroup(_ request: UpdateWordGroupRequest) async throws -> UpdateWordGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateWordGroupWithOptions(request as! UpdateWordGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
