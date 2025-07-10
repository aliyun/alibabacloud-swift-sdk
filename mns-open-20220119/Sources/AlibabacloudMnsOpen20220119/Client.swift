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
        self._endpoint = try getEndpoint("mns-open", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func authorizeEndpointAclWithOptions(_ tmpReq: AuthorizeEndpointAclRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AuthorizeEndpointAclResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: AuthorizeEndpointAclShrinkRequest = AuthorizeEndpointAclShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.cidrList)) {
            request.cidrListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.cidrList, "CidrList", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aclStrategy)) {
            query["AclStrategy"] = request.aclStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cidrListShrink)) {
            query["CidrList"] = request.cidrListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endpointType)) {
            query["EndpointType"] = request.endpointType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AuthorizeEndpointAcl",
            "version": "2022-01-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AuthorizeEndpointAclResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func authorizeEndpointAcl(_ request: AuthorizeEndpointAclRequest) async throws -> AuthorizeEndpointAclResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await authorizeEndpointAclWithOptions(request as! AuthorizeEndpointAclRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEventRuleWithOptions(_ tmpReq: CreateEventRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEventRuleResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateEventRuleShrinkRequest = CreateEventRuleShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.endpoints)) {
            request.endpointsShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.endpoints, "Endpoints", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.eventTypes)) {
            request.eventTypesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.eventTypes, "EventTypes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.matchRules)) {
            request.matchRulesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.matchRules, "MatchRules", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.deliveryMode)) {
            query["DeliveryMode"] = request.deliveryMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endpointsShrink)) {
            query["Endpoints"] = request.endpointsShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventTypesShrink)) {
            query["EventTypes"] = request.eventTypesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.matchRulesShrink)) {
            query["MatchRules"] = request.matchRulesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.productName)) {
            query["ProductName"] = request.productName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            query["RuleName"] = request.ruleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEventRule",
            "version": "2022-01-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEventRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEventRule(_ request: CreateEventRuleRequest) async throws -> CreateEventRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createEventRuleWithOptions(request as! CreateEventRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createQueueWithOptions(_ tmpReq: CreateQueueRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateQueueResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: CreateQueueShrinkRequest = CreateQueueShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dlqPolicy)) {
            request.dlqPolicyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dlqPolicy, "DlqPolicy", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantRateLimitPolicy)) {
            request.tenantRateLimitPolicyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantRateLimitPolicy, "TenantRateLimitPolicy", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.delaySeconds)) {
            query["DelaySeconds"] = request.delaySeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.dlqPolicyShrink)) {
            query["DlqPolicy"] = request.dlqPolicyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableLogging)) {
            query["EnableLogging"] = request.enableLogging!;
        }
        if (!TeaUtils.Client.isUnset(request.maximumMessageSize)) {
            query["MaximumMessageSize"] = request.maximumMessageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.messageRetentionPeriod)) {
            query["MessageRetentionPeriod"] = request.messageRetentionPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.pollingWaitSeconds)) {
            query["PollingWaitSeconds"] = request.pollingWaitSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.queueName)) {
            query["QueueName"] = request.queueName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.tenantRateLimitPolicyShrink)) {
            query["TenantRateLimitPolicy"] = request.tenantRateLimitPolicyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.visibilityTimeout)) {
            query["VisibilityTimeout"] = request.visibilityTimeout!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateQueue",
            "version": "2022-01-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateQueueResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createQueue(_ request: CreateQueueRequest) async throws -> CreateQueueResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createQueueWithOptions(request as! CreateQueueRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTopicWithOptions(_ request: CreateTopicRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTopicResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enableLogging)) {
            body["EnableLogging"] = request.enableLogging!;
        }
        if (!TeaUtils.Client.isUnset(request.maxMessageSize)) {
            body["MaxMessageSize"] = request.maxMessageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.topicName)) {
            body["TopicName"] = request.topicName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTopic",
            "version": "2022-01-19",
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
    public func deleteEventRuleWithOptions(_ request: DeleteEventRuleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEventRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.productName)) {
            query["ProductName"] = request.productName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            query["RuleName"] = request.ruleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEventRule",
            "version": "2022-01-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEventRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEventRule(_ request: DeleteEventRuleRequest) async throws -> DeleteEventRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteEventRuleWithOptions(request as! DeleteEventRuleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteQueueWithOptions(_ request: DeleteQueueRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteQueueResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.queueName)) {
            query["QueueName"] = request.queueName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteQueue",
            "version": "2022-01-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteQueueResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteQueue(_ request: DeleteQueueRequest) async throws -> DeleteQueueResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteQueueWithOptions(request as! DeleteQueueRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteTopicWithOptions(_ request: DeleteTopicRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteTopicResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.topicName)) {
            query["TopicName"] = request.topicName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteTopic",
            "version": "2022-01-19",
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
    public func disableEndpointWithOptions(_ request: DisableEndpointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableEndpointResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endpointType)) {
            query["EndpointType"] = request.endpointType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableEndpoint",
            "version": "2022-01-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableEndpointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableEndpoint(_ request: DisableEndpointRequest) async throws -> DisableEndpointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableEndpointWithOptions(request as! DisableEndpointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableEndpointWithOptions(_ request: EnableEndpointRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableEndpointResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endpointType)) {
            query["EndpointType"] = request.endpointType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableEndpoint",
            "version": "2022-01-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableEndpointResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableEndpoint(_ request: EnableEndpointRequest) async throws -> EnableEndpointResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await enableEndpointWithOptions(request as! EnableEndpointRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEndpointAttributeWithOptions(_ request: GetEndpointAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEndpointAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endpointType)) {
            query["EndpointType"] = request.endpointType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEndpointAttribute",
            "version": "2022-01-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEndpointAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEndpointAttribute(_ request: GetEndpointAttributeRequest) async throws -> GetEndpointAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getEndpointAttributeWithOptions(request as! GetEndpointAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQueueAttributesWithOptions(_ request: GetQueueAttributesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetQueueAttributesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.queueName)) {
            query["QueueName"] = request.queueName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetQueueAttributes",
            "version": "2022-01-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetQueueAttributesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getQueueAttributes(_ request: GetQueueAttributesRequest) async throws -> GetQueueAttributesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getQueueAttributesWithOptions(request as! GetQueueAttributesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSubscriptionAttributesWithOptions(_ request: GetSubscriptionAttributesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSubscriptionAttributesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.subscriptionName)) {
            query["SubscriptionName"] = request.subscriptionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicName)) {
            query["TopicName"] = request.topicName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSubscriptionAttributes",
            "version": "2022-01-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSubscriptionAttributesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSubscriptionAttributes(_ request: GetSubscriptionAttributesRequest) async throws -> GetSubscriptionAttributesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSubscriptionAttributesWithOptions(request as! GetSubscriptionAttributesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTopicAttributesWithOptions(_ request: GetTopicAttributesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTopicAttributesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.topicName)) {
            query["TopicName"] = request.topicName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTopicAttributes",
            "version": "2022-01-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTopicAttributesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTopicAttributes(_ request: GetTopicAttributesRequest) async throws -> GetTopicAttributesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getTopicAttributesWithOptions(request as! GetTopicAttributesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQueueWithOptions(_ request: ListQueueRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListQueueResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.queueName)) {
            query["QueueName"] = request.queueName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListQueue",
            "version": "2022-01-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListQueueResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listQueue(_ request: ListQueueRequest) async throws -> ListQueueResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listQueueWithOptions(request as! ListQueueRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSubscriptionByTopicWithOptions(_ request: ListSubscriptionByTopicRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSubscriptionByTopicResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endpointType)) {
            query["EndpointType"] = request.endpointType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endpointValue)) {
            query["EndpointValue"] = request.endpointValue ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionName)) {
            query["SubscriptionName"] = request.subscriptionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicName)) {
            query["TopicName"] = request.topicName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSubscriptionByTopic",
            "version": "2022-01-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSubscriptionByTopicResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSubscriptionByTopic(_ request: ListSubscriptionByTopicRequest) async throws -> ListSubscriptionByTopicResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listSubscriptionByTopicWithOptions(request as! ListSubscriptionByTopicRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTopicWithOptions(_ request: ListTopicRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTopicResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNum)) {
            query["PageNum"] = request.pageNum!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.topicName)) {
            query["TopicName"] = request.topicName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTopic",
            "version": "2022-01-19",
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
    public func revokeEndpointAclWithOptions(_ tmpReq: RevokeEndpointAclRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeEndpointAclResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: RevokeEndpointAclShrinkRequest = RevokeEndpointAclShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.cidrList)) {
            request.cidrListShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.cidrList, "CidrList", "simple")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aclStrategy)) {
            query["AclStrategy"] = request.aclStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cidrListShrink)) {
            query["CidrList"] = request.cidrListShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endpointType)) {
            query["EndpointType"] = request.endpointType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokeEndpointAcl",
            "version": "2022-01-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokeEndpointAclResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeEndpointAcl(_ request: RevokeEndpointAclRequest) async throws -> RevokeEndpointAclResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await revokeEndpointAclWithOptions(request as! RevokeEndpointAclRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setQueueAttributesWithOptions(_ tmpReq: SetQueueAttributesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetQueueAttributesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SetQueueAttributesShrinkRequest = SetQueueAttributesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dlqPolicy)) {
            request.dlqPolicyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dlqPolicy, "DlqPolicy", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantRateLimitPolicy)) {
            request.tenantRateLimitPolicyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantRateLimitPolicy, "TenantRateLimitPolicy", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.delaySeconds)) {
            query["DelaySeconds"] = request.delaySeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.dlqPolicyShrink)) {
            query["DlqPolicy"] = request.dlqPolicyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableLogging)) {
            query["EnableLogging"] = request.enableLogging!;
        }
        if (!TeaUtils.Client.isUnset(request.maximumMessageSize)) {
            query["MaximumMessageSize"] = request.maximumMessageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.messageRetentionPeriod)) {
            query["MessageRetentionPeriod"] = request.messageRetentionPeriod!;
        }
        if (!TeaUtils.Client.isUnset(request.pollingWaitSeconds)) {
            query["PollingWaitSeconds"] = request.pollingWaitSeconds!;
        }
        if (!TeaUtils.Client.isUnset(request.queueName)) {
            query["QueueName"] = request.queueName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantRateLimitPolicyShrink)) {
            query["TenantRateLimitPolicy"] = request.tenantRateLimitPolicyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.visibilityTimeout)) {
            query["VisibilityTimeout"] = request.visibilityTimeout!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetQueueAttributes",
            "version": "2022-01-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetQueueAttributesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setQueueAttributes(_ request: SetQueueAttributesRequest) async throws -> SetQueueAttributesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setQueueAttributesWithOptions(request as! SetQueueAttributesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setSubscriptionAttributesWithOptions(_ tmpReq: SetSubscriptionAttributesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetSubscriptionAttributesResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SetSubscriptionAttributesShrinkRequest = SetSubscriptionAttributesShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dlqPolicy)) {
            request.dlqPolicyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dlqPolicy, "DlqPolicy", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantRateLimitPolicy)) {
            request.tenantRateLimitPolicyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantRateLimitPolicy, "TenantRateLimitPolicy", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dlqPolicyShrink)) {
            query["DlqPolicy"] = request.dlqPolicyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyStrategy)) {
            query["NotifyStrategy"] = request.notifyStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionName)) {
            query["SubscriptionName"] = request.subscriptionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantRateLimitPolicyShrink)) {
            query["TenantRateLimitPolicy"] = request.tenantRateLimitPolicyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicName)) {
            query["TopicName"] = request.topicName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetSubscriptionAttributes",
            "version": "2022-01-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetSubscriptionAttributesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setSubscriptionAttributes(_ request: SetSubscriptionAttributesRequest) async throws -> SetSubscriptionAttributesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setSubscriptionAttributesWithOptions(request as! SetSubscriptionAttributesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setTopicAttributesWithOptions(_ request: SetTopicAttributesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetTopicAttributesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enableLogging)) {
            query["EnableLogging"] = request.enableLogging!;
        }
        if (!TeaUtils.Client.isUnset(request.maxMessageSize)) {
            query["MaxMessageSize"] = request.maxMessageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.topicName)) {
            query["TopicName"] = request.topicName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetTopicAttributes",
            "version": "2022-01-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetTopicAttributesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setTopicAttributes(_ request: SetTopicAttributesRequest) async throws -> SetTopicAttributesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setTopicAttributesWithOptions(request as! SetTopicAttributesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func subscribeWithOptions(_ tmpReq: SubscribeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubscribeResponse {
        try TeaUtils.Client.validateModel(tmpReq)
        var request: SubscribeShrinkRequest = SubscribeShrinkRequest([:])
        AlibabaCloudOpenApiUtil.Client.convert(tmpReq, request)
        if (!TeaUtils.Client.isUnset(tmpReq.dlqPolicy)) {
            request.dlqPolicyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dlqPolicy, "DlqPolicy", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.dmAttributes)) {
            request.dmAttributesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dmAttributes, "DmAttributes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.dysmsAttributes)) {
            request.dysmsAttributesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.dysmsAttributes, "DysmsAttributes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.kafkaAttributes)) {
            request.kafkaAttributesShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.kafkaAttributes, "KafkaAttributes", "json")
        }
        if (!TeaUtils.Client.isUnset(tmpReq.tenantRateLimitPolicy)) {
            request.tenantRateLimitPolicyShrink = AlibabaCloudOpenApiUtil.Client.arrayToStringWithSpecifiedStyle(tmpReq.tenantRateLimitPolicy, "TenantRateLimitPolicy", "json")
        }
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dlqPolicyShrink)) {
            query["DlqPolicy"] = request.dlqPolicyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dmAttributesShrink)) {
            query["DmAttributes"] = request.dmAttributesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dysmsAttributesShrink)) {
            query["DysmsAttributes"] = request.dysmsAttributesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endpoint)) {
            query["Endpoint"] = request.endpoint ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.kafkaAttributesShrink)) {
            query["KafkaAttributes"] = request.kafkaAttributesShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.messageTag)) {
            query["MessageTag"] = request.messageTag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyContentFormat)) {
            query["NotifyContentFormat"] = request.notifyContentFormat ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyStrategy)) {
            query["NotifyStrategy"] = request.notifyStrategy ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pushType)) {
            query["PushType"] = request.pushType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stsRoleArn)) {
            query["StsRoleArn"] = request.stsRoleArn ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionName)) {
            query["SubscriptionName"] = request.subscriptionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tenantRateLimitPolicyShrink)) {
            query["TenantRateLimitPolicy"] = request.tenantRateLimitPolicyShrink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicName)) {
            query["TopicName"] = request.topicName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Subscribe",
            "version": "2022-01-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SubscribeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func subscribe(_ request: SubscribeRequest) async throws -> SubscribeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await subscribeWithOptions(request as! SubscribeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unsubscribeWithOptions(_ request: UnsubscribeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnsubscribeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.subscriptionName)) {
            query["SubscriptionName"] = request.subscriptionName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.topicName)) {
            query["TopicName"] = request.topicName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "Unsubscribe",
            "version": "2022-01-19",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnsubscribeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unsubscribe(_ request: UnsubscribeRequest) async throws -> UnsubscribeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unsubscribeWithOptions(request as! UnsubscribeRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
