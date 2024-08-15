import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._signatureAlgorithm = "v2"
        self._endpointRule = "regional"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("gemp", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
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
    public func addProblemServiceGroupWithOptions(_ request: AddProblemServiceGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> AddProblemServiceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupIds)) {
            body["serviceGroupIds"] = request.serviceGroupIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddProblemServiceGroup",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/addServiceGroup",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddProblemServiceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addProblemServiceGroup(_ request: AddProblemServiceGroupRequest) async throws -> AddProblemServiceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await addProblemServiceGroupWithOptions(request as! AddProblemServiceGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func billingStatisticsWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> BillingStatisticsResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "BillingStatistics",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/charging/details",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(BillingStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func billingStatistics() async throws -> BillingStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await billingStatisticsWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelProblemWithOptions(_ request: CancelProblemRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelProblemResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cancelReason)) {
            body["cancelReason"] = request.cancelReason!;
        }
        if (!TeaUtils.Client.isUnset(request.cancelReasonDescription)) {
            body["cancelReasonDescription"] = request.cancelReasonDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        if (!TeaUtils.Client.isUnset(request.problemNotifyType)) {
            body["problemNotifyType"] = request.problemNotifyType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelProblem",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/cancel",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelProblemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelProblem(_ request: CancelProblemRequest) async throws -> CancelProblemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await cancelProblemWithOptions(request as! CancelProblemRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkWebhookWithOptions(_ request: CheckWebhookRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CheckWebhookResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webhook)) {
            body["webhook"] = request.webhook ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webhookType)) {
            body["webhookType"] = request.webhookType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CheckWebhook",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/check/webhook",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CheckWebhookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func checkWebhook(_ request: CheckWebhookRequest) async throws -> CheckWebhookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await checkWebhookWithOptions(request as! CheckWebhookRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmIntegrationConfigWithOptions(_ request: ConfirmIntegrationConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfirmIntegrationConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.integrationConfigId)) {
            body["integrationConfigId"] = request.integrationConfigId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfirmIntegrationConfig",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/integrationConfig/confirm",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfirmIntegrationConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func confirmIntegrationConfig(_ request: ConfirmIntegrationConfigRequest) async throws -> ConfirmIntegrationConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await confirmIntegrationConfigWithOptions(request as! ConfirmIntegrationConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEscalationPlanWithOptions(_ request: CreateEscalationPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateEscalationPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.escalationPlanDescription)) {
            body["escalationPlanDescription"] = request.escalationPlanDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.escalationPlanName)) {
            body["escalationPlanName"] = request.escalationPlanName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.escalationPlanRules)) {
            body["escalationPlanRules"] = request.escalationPlanRules ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.escalationPlanScopeObjects)) {
            body["escalationPlanScopeObjects"] = request.escalationPlanScopeObjects ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.isGlobal)) {
            body["isGlobal"] = request.isGlobal!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateEscalationPlan",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/escalationPlan/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateEscalationPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createEscalationPlan(_ request: CreateEscalationPlanRequest) async throws -> CreateEscalationPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createEscalationPlanWithOptions(request as! CreateEscalationPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIncidentWithOptions(_ request: CreateIncidentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIncidentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assignUserId)) {
            body["assignUserId"] = request.assignUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.channels)) {
            body["channels"] = request.channels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effect)) {
            body["effect"] = request.effect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentDescription)) {
            body["incidentDescription"] = request.incidentDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentLevel)) {
            body["incidentLevel"] = request.incidentLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentTitle)) {
            body["incidentTitle"] = request.incidentTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedServiceId)) {
            body["relatedServiceId"] = request.relatedServiceId!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupId)) {
            body["serviceGroupId"] = request.serviceGroupId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIncident",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/incident/manualSave",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIncidentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIncident(_ request: CreateIncidentRequest) async throws -> CreateIncidentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createIncidentWithOptions(request as! CreateIncidentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIncidentSubtotalWithOptions(_ request: CreateIncidentSubtotalRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIncidentSubtotalResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentId)) {
            body["incidentId"] = request.incidentId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIncidentSubtotal",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/incident/save/subtotal",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIncidentSubtotalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIncidentSubtotal(_ request: CreateIncidentSubtotalRequest) async throws -> CreateIncidentSubtotalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createIncidentSubtotalWithOptions(request as! CreateIncidentSubtotalRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIntegrationConfigWithOptions(_ request: CreateIntegrationConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateIntegrationConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.monitorSourceId)) {
            body["monitorSourceId"] = request.monitorSourceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateIntegrationConfig",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/integrationConfig/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateIntegrationConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createIntegrationConfig(_ request: CreateIntegrationConfigRequest) async throws -> CreateIntegrationConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createIntegrationConfigWithOptions(request as! CreateIntegrationConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProblemWithOptions(_ request: CreateProblemRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProblemResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.affectServiceIds)) {
            body["affectServiceIds"] = request.affectServiceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.discoverTime)) {
            body["discoverTime"] = request.discoverTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentId)) {
            body["incidentId"] = request.incidentId!;
        }
        if (!TeaUtils.Client.isUnset(request.mainHandlerId)) {
            body["mainHandlerId"] = request.mainHandlerId!;
        }
        if (!TeaUtils.Client.isUnset(request.preliminaryReason)) {
            body["preliminaryReason"] = request.preliminaryReason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemLevel)) {
            body["problemLevel"] = request.problemLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemName)) {
            body["problemName"] = request.problemName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemNotifyType)) {
            body["problemNotifyType"] = request.problemNotifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemStatus)) {
            body["problemStatus"] = request.problemStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.progressSummary)) {
            body["progressSummary"] = request.progressSummary ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.progressSummaryRichTextId)) {
            body["progressSummaryRichTextId"] = request.progressSummaryRichTextId!;
        }
        if (!TeaUtils.Client.isUnset(request.recoveryTime)) {
            body["recoveryTime"] = request.recoveryTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedServiceId)) {
            body["relatedServiceId"] = request.relatedServiceId!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupIds)) {
            body["serviceGroupIds"] = request.serviceGroupIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProblem",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/upgrade",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProblemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProblem(_ request: CreateProblemRequest) async throws -> CreateProblemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createProblemWithOptions(request as! CreateProblemRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProblemEffectionServiceWithOptions(_ request: CreateProblemEffectionServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProblemEffectionServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.level)) {
            body["level"] = request.level ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pictureUrl)) {
            body["pictureUrl"] = request.pictureUrl ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            body["serviceId"] = request.serviceId!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProblemEffectionService",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/process/effectionService/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProblemEffectionServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProblemEffectionService(_ request: CreateProblemEffectionServiceRequest) async throws -> CreateProblemEffectionServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createProblemEffectionServiceWithOptions(request as! CreateProblemEffectionServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProblemMeasureWithOptions(_ request: CreateProblemMeasureRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProblemMeasureResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkStandard)) {
            body["checkStandard"] = request.checkStandard ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkUserId)) {
            body["checkUserId"] = request.checkUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directorId)) {
            body["directorId"] = request.directorId!;
        }
        if (!TeaUtils.Client.isUnset(request.planFinishTime)) {
            body["planFinishTime"] = request.planFinishTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        if (!TeaUtils.Client.isUnset(request.stalkerId)) {
            body["stalkerId"] = request.stalkerId!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProblemMeasure",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/improvement/measure/save",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProblemMeasureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProblemMeasure(_ request: CreateProblemMeasureRequest) async throws -> CreateProblemMeasureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createProblemMeasureWithOptions(request as! CreateProblemMeasureRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProblemSubtotalWithOptions(_ request: CreateProblemSubtotalRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProblemSubtotalResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProblemSubtotal",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/save/subtotal",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProblemSubtotalResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProblemSubtotal(_ request: CreateProblemSubtotalRequest) async throws -> CreateProblemSubtotalResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createProblemSubtotalWithOptions(request as! CreateProblemSubtotalRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProblemTimelineWithOptions(_ request: CreateProblemTimelineRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProblemTimelineResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyNode)) {
            body["keyNode"] = request.keyNode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        if (!TeaUtils.Client.isUnset(request.time)) {
            body["time"] = request.time ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProblemTimeline",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/process/timeline/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProblemTimelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProblemTimeline(_ request: CreateProblemTimelineRequest) async throws -> CreateProblemTimelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createProblemTimelineWithOptions(request as! CreateProblemTimelineRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProblemTimelinesWithOptions(_ request: CreateProblemTimelinesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateProblemTimelinesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        if (!TeaUtils.Client.isUnset(request.timelineNodes)) {
            body["timelineNodes"] = request.timelineNodes ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateProblemTimelines",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/process/timeline/batchCreate",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateProblemTimelinesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createProblemTimelines(_ request: CreateProblemTimelinesRequest) async throws -> CreateProblemTimelinesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createProblemTimelinesWithOptions(request as! CreateProblemTimelinesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRichTextWithOptions(_ request: CreateRichTextRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRichTextResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["instanceId"] = request.instanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            body["instanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.richText)) {
            body["richText"] = request.richText ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRichText",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/rich/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRichTextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRichText(_ request: CreateRichTextRequest) async throws -> CreateRichTextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRichTextWithOptions(request as! CreateRichTextRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRouteRuleWithOptions(_ request: CreateRouteRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRouteRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assignObjectId)) {
            body["assignObjectId"] = request.assignObjectId!;
        }
        if (!TeaUtils.Client.isUnset(request.assignObjectType)) {
            body["assignObjectType"] = request.assignObjectType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.childRuleRelation)) {
            body["childRuleRelation"] = request.childRuleRelation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.convergenceFields)) {
            body["convergenceFields"] = request.convergenceFields ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.convergenceType)) {
            body["convergenceType"] = request.convergenceType!;
        }
        if (!TeaUtils.Client.isUnset(request.coverageProblemLevels)) {
            body["coverageProblemLevels"] = request.coverageProblemLevels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.effection)) {
            body["effection"] = request.effection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableStatus)) {
            body["enableStatus"] = request.enableStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentLevel)) {
            body["incidentLevel"] = request.incidentLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.matchCount)) {
            body["matchCount"] = request.matchCount!;
        }
        if (!TeaUtils.Client.isUnset(request.notifyChannels)) {
            body["notifyChannels"] = request.notifyChannels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.problemEffectionServices)) {
            body["problemEffectionServices"] = request.problemEffectionServices ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.problemLevelGroup)) {
            body["problemLevelGroup"] = request.problemLevelGroup ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.relatedServiceId)) {
            body["relatedServiceId"] = request.relatedServiceId!;
        }
        if (!TeaUtils.Client.isUnset(request.routeChildRules)) {
            body["routeChildRules"] = request.routeChildRules ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.routeType)) {
            body["routeType"] = request.routeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            body["ruleName"] = request.ruleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeWindow)) {
            body["timeWindow"] = request.timeWindow!;
        }
        if (!TeaUtils.Client.isUnset(request.timeWindowUnit)) {
            body["timeWindowUnit"] = request.timeWindowUnit ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRouteRule",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/routeRule/save",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRouteRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRouteRule(_ request: CreateRouteRuleRequest) async throws -> CreateRouteRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createRouteRuleWithOptions(request as! CreateRouteRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceWithOptions(_ request: CreateServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.escalationPlanId)) {
            body["escalationPlanId"] = request.escalationPlanId!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceDescription)) {
            body["serviceDescription"] = request.serviceDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupIdList)) {
            body["serviceGroupIdList"] = request.serviceGroupIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            body["serviceName"] = request.serviceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateService",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/save",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createService(_ request: CreateServiceRequest) async throws -> CreateServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createServiceWithOptions(request as! CreateServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceGroupWithOptions(_ request: CreateServiceGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableWebhook)) {
            body["enableWebhook"] = request.enableWebhook ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.monitorSourceTemplates)) {
            body["monitorSourceTemplates"] = request.monitorSourceTemplates ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupDescription)) {
            body["serviceGroupDescription"] = request.serviceGroupDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupName)) {
            body["serviceGroupName"] = request.serviceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            body["userIds"] = request.userIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.webhookLink)) {
            body["webhookLink"] = request.webhookLink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webhookType)) {
            body["webhookType"] = request.webhookType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateServiceGroup",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/group/insert",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceGroup(_ request: CreateServiceGroupRequest) async throws -> CreateServiceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createServiceGroupWithOptions(request as! CreateServiceGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceGroupSchedulingWithOptions(_ request: CreateServiceGroupSchedulingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateServiceGroupSchedulingResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fastScheduling)) {
            body["fastScheduling"] = request.fastScheduling!;
        }
        if (!TeaUtils.Client.isUnset(request.fineScheduling)) {
            body["fineScheduling"] = request.fineScheduling!;
        }
        if (!TeaUtils.Client.isUnset(request.schedulingWay)) {
            body["schedulingWay"] = request.schedulingWay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupId)) {
            body["serviceGroupId"] = request.serviceGroupId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateServiceGroupScheduling",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/group/scheduling/save",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateServiceGroupSchedulingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createServiceGroupScheduling(_ request: CreateServiceGroupSchedulingRequest) async throws -> CreateServiceGroupSchedulingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createServiceGroupSchedulingWithOptions(request as! CreateServiceGroupSchedulingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSubscriptionWithOptions(_ request: CreateSubscriptionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSubscriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiredType)) {
            body["expiredType"] = request.expiredType!;
        }
        if (!TeaUtils.Client.isUnset(request.notifyObjectList)) {
            body["notifyObjectList"] = request.notifyObjectList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.notifyObjectType)) {
            body["notifyObjectType"] = request.notifyObjectType!;
        }
        if (!TeaUtils.Client.isUnset(request.notifyStrategyList)) {
            body["notifyStrategyList"] = request.notifyStrategyList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            body["period"] = request.period ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["scope"] = request.scope!;
        }
        if (!TeaUtils.Client.isUnset(request.scopeObjectList)) {
            body["scopeObjectList"] = request.scopeObjectList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionTitle)) {
            body["subscriptionTitle"] = request.subscriptionTitle ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSubscription",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/notify/subscription/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSubscriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSubscription(_ request: CreateSubscriptionRequest) async throws -> CreateSubscriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createSubscriptionWithOptions(request as! CreateSubscriptionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTenantApplicationWithOptions(_ request: CreateTenantApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateTenantApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.channel)) {
            body["channel"] = request.channel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateTenantApplication",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/mobileApp/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateTenantApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createTenantApplication(_ request: CreateTenantApplicationRequest) async throws -> CreateTenantApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createTenantApplicationWithOptions(request as! CreateTenantApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUserWithOptions(_ request: CreateUserRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            body["email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            body["phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ramId)) {
            body["ramId"] = request.ramId!;
        }
        if (!TeaUtils.Client.isUnset(request.roleIdList)) {
            body["roleIdList"] = request.roleIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            body["username"] = request.username ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateUser",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/user/create",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createUser(_ request: CreateUserRequest) async throws -> CreateUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await createUserWithOptions(request as! CreateUserRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEscalationPlanWithOptions(_ request: DeleteEscalationPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteEscalationPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.escalationPlanId)) {
            body["escalationPlanId"] = request.escalationPlanId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteEscalationPlan",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/escalationPlan/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteEscalationPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteEscalationPlan(_ request: DeleteEscalationPlanRequest) async throws -> DeleteEscalationPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteEscalationPlanWithOptions(request as! DeleteEscalationPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIncidentWithOptions(_ request: DeleteIncidentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteIncidentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentId)) {
            body["incidentId"] = request.incidentId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteIncident",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/incident/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteIncidentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIncident(_ request: DeleteIncidentRequest) async throws -> DeleteIncidentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteIncidentWithOptions(request as! DeleteIncidentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIntegrationConfigWithOptions(_ request: DeleteIntegrationConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteIntegrationConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.integrationConfigId)) {
            body["integrationConfigId"] = request.integrationConfigId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteIntegrationConfig",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/integrationConfig/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteIntegrationConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteIntegrationConfig(_ request: DeleteIntegrationConfigRequest) async throws -> DeleteIntegrationConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteIntegrationConfigWithOptions(request as! DeleteIntegrationConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProblemWithOptions(_ request: DeleteProblemRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProblemResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProblem",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProblemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProblem(_ request: DeleteProblemRequest) async throws -> DeleteProblemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteProblemWithOptions(request as! DeleteProblemRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProblemEffectionServiceWithOptions(_ request: DeleteProblemEffectionServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProblemEffectionServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectionServiceId)) {
            body["effectionServiceId"] = request.effectionServiceId!;
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProblemEffectionService",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/process/effectionService/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProblemEffectionServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProblemEffectionService(_ request: DeleteProblemEffectionServiceRequest) async throws -> DeleteProblemEffectionServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteProblemEffectionServiceWithOptions(request as! DeleteProblemEffectionServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProblemMeasureWithOptions(_ request: DeleteProblemMeasureRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProblemMeasureResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.measureId)) {
            body["measureId"] = request.measureId!;
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProblemMeasure",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/improvement/measure/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProblemMeasureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProblemMeasure(_ request: DeleteProblemMeasureRequest) async throws -> DeleteProblemMeasureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteProblemMeasureWithOptions(request as! DeleteProblemMeasureRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProblemTimelineWithOptions(_ request: DeleteProblemTimelineRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteProblemTimelineResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        if (!TeaUtils.Client.isUnset(request.problemTimelineId)) {
            body["problemTimelineId"] = request.problemTimelineId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteProblemTimeline",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/process/timeline/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteProblemTimelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteProblemTimeline(_ request: DeleteProblemTimelineRequest) async throws -> DeleteProblemTimelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteProblemTimelineWithOptions(request as! DeleteProblemTimelineRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRouteRuleWithOptions(_ request: DeleteRouteRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteRouteRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeRuleId)) {
            body["routeRuleId"] = request.routeRuleId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteRouteRule",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/routeRule/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteRouteRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteRouteRule(_ request: DeleteRouteRuleRequest) async throws -> DeleteRouteRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteRouteRuleWithOptions(request as! DeleteRouteRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceWithOptions(_ request: DeleteServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            body["serviceId"] = request.serviceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteService",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteService(_ request: DeleteServiceRequest) async throws -> DeleteServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteServiceWithOptions(request as! DeleteServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceGroupWithOptions(_ request: DeleteServiceGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupId)) {
            body["serviceGroupId"] = request.serviceGroupId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteServiceGroup",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/group/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceGroup(_ request: DeleteServiceGroupRequest) async throws -> DeleteServiceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteServiceGroupWithOptions(request as! DeleteServiceGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceGroupSchedulingWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceGroupSchedulingResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteServiceGroupScheduling",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/group/scheduling/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceGroupSchedulingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceGroupScheduling() async throws -> DeleteServiceGroupSchedulingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteServiceGroupSchedulingWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceGroupUserWithOptions(_ request: DeleteServiceGroupUserRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteServiceGroupUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newUserId)) {
            body["newUserId"] = request.newUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.oldUserId)) {
            body["oldUserId"] = request.oldUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.removeUser)) {
            body["removeUser"] = request.removeUser!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupId)) {
            body["serviceGroupId"] = request.serviceGroupId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteServiceGroupUser",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/group/deleteServiceGroupUser",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteServiceGroupUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteServiceGroupUser(_ request: DeleteServiceGroupUserRequest) async throws -> DeleteServiceGroupUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteServiceGroupUserWithOptions(request as! DeleteServiceGroupUserRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSubscriptionWithOptions(_ request: DeleteSubscriptionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSubscriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.subscriptionId)) {
            body["subscriptionId"] = request.subscriptionId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSubscription",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/notify/subscription/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSubscriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSubscription(_ request: DeleteSubscriptionRequest) async throws -> DeleteSubscriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteSubscriptionWithOptions(request as! DeleteSubscriptionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUserWithOptions(_ request: DeleteUserRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteUser",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/user/delete",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteUser(_ request: DeleteUserRequest) async throws -> DeleteUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deleteUserWithOptions(request as! DeleteUserRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deliverIncidentWithOptions(_ request: DeliverIncidentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DeliverIncidentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assignUserId)) {
            body["assignUserId"] = request.assignUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentId)) {
            body["incidentId"] = request.incidentId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeliverIncident",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/incident/deliver",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeliverIncidentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deliverIncident(_ request: DeliverIncidentRequest) async throws -> DeliverIncidentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await deliverIncidentWithOptions(request as! DeliverIncidentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableEscalationPlanWithOptions(_ request: DisableEscalationPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableEscalationPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.escalationPlanId)) {
            body["escalationPlanId"] = request.escalationPlanId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableEscalationPlan",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/escalationPlan/disable",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableEscalationPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableEscalationPlan(_ request: DisableEscalationPlanRequest) async throws -> DisableEscalationPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await disableEscalationPlanWithOptions(request as! DisableEscalationPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableIntegrationConfigWithOptions(_ request: DisableIntegrationConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableIntegrationConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.integrationConfigId)) {
            body["integrationConfigId"] = request.integrationConfigId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableIntegrationConfig",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/integrationConfig/disable",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableIntegrationConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableIntegrationConfig(_ request: DisableIntegrationConfigRequest) async throws -> DisableIntegrationConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await disableIntegrationConfigWithOptions(request as! DisableIntegrationConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableRouteRuleWithOptions(_ request: DisableRouteRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableRouteRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeRuleId)) {
            body["routeRuleId"] = request.routeRuleId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableRouteRule",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/routeRule/disable",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableRouteRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableRouteRule(_ request: DisableRouteRuleRequest) async throws -> DisableRouteRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await disableRouteRuleWithOptions(request as! DisableRouteRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableServiceGroupWebhookWithOptions(_ request: DisableServiceGroupWebhookRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableServiceGroupWebhookResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupId)) {
            body["serviceGroupId"] = request.serviceGroupId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableServiceGroupWebhook",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/group/disableWebhook",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableServiceGroupWebhookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableServiceGroupWebhook(_ request: DisableServiceGroupWebhookRequest) async throws -> DisableServiceGroupWebhookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await disableServiceGroupWebhookWithOptions(request as! DisableServiceGroupWebhookRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableSubscriptionWithOptions(_ request: DisableSubscriptionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableSubscriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.subscriptionId)) {
            body["subscriptionId"] = request.subscriptionId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableSubscription",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/notify/subscription/doDisable",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableSubscriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableSubscription(_ request: DisableSubscriptionRequest) async throws -> DisableSubscriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await disableSubscriptionWithOptions(request as! DisableSubscriptionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableEscalationPlanWithOptions(_ request: EnableEscalationPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableEscalationPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.escalationPlanId)) {
            body["escalationPlanId"] = request.escalationPlanId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableEscalationPlan",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/escalationPlan/enable",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableEscalationPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableEscalationPlan(_ request: EnableEscalationPlanRequest) async throws -> EnableEscalationPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await enableEscalationPlanWithOptions(request as! EnableEscalationPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableIntegrationConfigWithOptions(_ request: EnableIntegrationConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableIntegrationConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.integrationConfigId)) {
            body["integrationConfigId"] = request.integrationConfigId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableIntegrationConfig",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/integrationConfig/enable",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableIntegrationConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableIntegrationConfig(_ request: EnableIntegrationConfigRequest) async throws -> EnableIntegrationConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await enableIntegrationConfigWithOptions(request as! EnableIntegrationConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableRouteRuleWithOptions(_ request: EnableRouteRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableRouteRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeRuleId)) {
            body["routeRuleId"] = request.routeRuleId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableRouteRule",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/routeRule/enable",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableRouteRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableRouteRule(_ request: EnableRouteRuleRequest) async throws -> EnableRouteRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await enableRouteRuleWithOptions(request as! EnableRouteRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableServiceGroupWebhookWithOptions(_ request: EnableServiceGroupWebhookRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableServiceGroupWebhookResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupId)) {
            body["serviceGroupId"] = request.serviceGroupId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableServiceGroupWebhook",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/group/enableWebhook",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableServiceGroupWebhookResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableServiceGroupWebhook(_ request: EnableServiceGroupWebhookRequest) async throws -> EnableServiceGroupWebhookResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await enableServiceGroupWebhookWithOptions(request as! EnableServiceGroupWebhookRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableSubscriptionWithOptions(_ request: EnableSubscriptionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> EnableSubscriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.subscriptionId)) {
            body["subscriptionId"] = request.subscriptionId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "EnableSubscription",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/notify/subscription/enable",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(EnableSubscriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func enableSubscription(_ request: EnableSubscriptionRequest) async throws -> EnableSubscriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await enableSubscriptionWithOptions(request as! EnableSubscriptionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func finishIncidentWithOptions(_ request: FinishIncidentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> FinishIncidentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentFinishReason)) {
            body["incidentFinishReason"] = request.incidentFinishReason!;
        }
        if (!TeaUtils.Client.isUnset(request.incidentFinishReasonDescription)) {
            body["incidentFinishReasonDescription"] = request.incidentFinishReasonDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentFinishSolution)) {
            body["incidentFinishSolution"] = request.incidentFinishSolution!;
        }
        if (!TeaUtils.Client.isUnset(request.incidentFinishSolutionDescription)) {
            body["incidentFinishSolutionDescription"] = request.incidentFinishSolutionDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentIds)) {
            body["incidentIds"] = request.incidentIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FinishIncident",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/incident/finish",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FinishIncidentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func finishIncident(_ request: FinishIncidentRequest) async throws -> FinishIncidentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await finishIncidentWithOptions(request as! FinishIncidentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func finishProblemWithOptions(_ request: FinishProblemRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> FinishProblemResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "FinishProblem",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/finish",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(FinishProblemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func finishProblem(_ request: FinishProblemRequest) async throws -> FinishProblemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await finishProblemWithOptions(request as! FinishProblemRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generatePictureLinkWithOptions(_ request: GeneratePictureLinkRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GeneratePictureLinkResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keys)) {
            body["keys"] = request.keys ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GeneratePictureLink",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/rich/oss/getPictureLink",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GeneratePictureLinkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generatePictureLink(_ request: GeneratePictureLinkRequest) async throws -> GeneratePictureLinkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await generatePictureLinkWithOptions(request as! GeneratePictureLinkRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generatePictureUploadSignWithOptions(_ request: GeneratePictureUploadSignRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GeneratePictureUploadSignResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.files)) {
            body["files"] = request.files ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["instanceId"] = request.instanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            body["instanceType"] = request.instanceType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GeneratePictureUploadSign",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/rich/oss/generatePostPolicy",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GeneratePictureUploadSignResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generatePictureUploadSign(_ request: GeneratePictureUploadSignRequest) async throws -> GeneratePictureUploadSignResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await generatePictureUploadSignWithOptions(request as! GeneratePictureUploadSignRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateProblemPictureLinkWithOptions(_ request: GenerateProblemPictureLinkRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateProblemPictureLinkResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.keys)) {
            body["keys"] = request.keys ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateProblemPictureLink",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/process/oss/getPresignedLink",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateProblemPictureLinkResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateProblemPictureLink(_ request: GenerateProblemPictureLinkRequest) async throws -> GenerateProblemPictureLinkResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await generateProblemPictureLinkWithOptions(request as! GenerateProblemPictureLinkRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateProblemPictureUploadSignWithOptions(_ request: GenerateProblemPictureUploadSignRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GenerateProblemPictureUploadSignResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileName)) {
            body["fileName"] = request.fileName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fileSize)) {
            body["fileSize"] = request.fileSize!;
        }
        if (!TeaUtils.Client.isUnset(request.fileType)) {
            body["fileType"] = request.fileType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GenerateProblemPictureUploadSign",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/process/oss/generatePostPolicy",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GenerateProblemPictureUploadSignResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func generateProblemPictureUploadSign(_ request: GenerateProblemPictureUploadSignRequest) async throws -> GenerateProblemPictureUploadSignResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await generateProblemPictureUploadSignWithOptions(request as! GenerateProblemPictureUploadSignRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEscalationPlanWithOptions(_ request: GetEscalationPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEscalationPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.escalationPlanId)) {
            body["escalationPlanId"] = request.escalationPlanId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEscalationPlan",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/escalationPlan/detail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEscalationPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEscalationPlan(_ request: GetEscalationPlanRequest) async throws -> GetEscalationPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEscalationPlanWithOptions(request as! GetEscalationPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEventWithOptions(_ request: GetEventRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetEventResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.monitorSourceId)) {
            body["monitorSourceId"] = request.monitorSourceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetEvent",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/events/getLastTimeEvent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetEventResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getEvent(_ request: GetEventRequest) async throws -> GetEventResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getEventWithOptions(request as! GetEventRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHomePageGuidanceWithOptions(_ request: GetHomePageGuidanceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetHomePageGuidanceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetHomePageGuidance",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/guidance/detail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetHomePageGuidanceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getHomePageGuidance(_ request: GetHomePageGuidanceRequest) async throws -> GetHomePageGuidanceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getHomePageGuidanceWithOptions(request as! GetHomePageGuidanceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIncidentWithOptions(_ request: GetIncidentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIncidentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentId)) {
            body["incidentId"] = request.incidentId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIncident",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/incident/detail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIncidentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIncident(_ request: GetIncidentRequest) async throws -> GetIncidentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getIncidentWithOptions(request as! GetIncidentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIncidentListByIdListWithOptions(_ request: GetIncidentListByIdListRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIncidentListByIdListResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentIdList)) {
            body["incidentIdList"] = request.incidentIdList ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIncidentListByIdList",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/incident/getIncidentListByIdList",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIncidentListByIdListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIncidentListByIdList(_ request: GetIncidentListByIdListRequest) async throws -> GetIncidentListByIdListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getIncidentListByIdListWithOptions(request as! GetIncidentListByIdListRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIncidentStatisticsWithOptions(_ request: GetIncidentStatisticsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIncidentStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIncidentStatistics",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/incident/count",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIncidentStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIncidentStatistics(_ request: GetIncidentStatisticsRequest) async throws -> GetIncidentStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getIncidentStatisticsWithOptions(request as! GetIncidentStatisticsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIncidentSubtotalCountWithOptions(_ request: GetIncidentSubtotalCountRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIncidentSubtotalCountResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentIds)) {
            body["incidentIds"] = request.incidentIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIncidentSubtotalCount",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/incident/subtotal/count",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIncidentSubtotalCountResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIncidentSubtotalCount(_ request: GetIncidentSubtotalCountRequest) async throws -> GetIncidentSubtotalCountResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getIncidentSubtotalCountWithOptions(request as! GetIncidentSubtotalCountRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIntegrationConfigWithOptions(_ request: GetIntegrationConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetIntegrationConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.integrationConfigId)) {
            body["integrationConfigId"] = request.integrationConfigId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetIntegrationConfig",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/integrationConfig/detail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetIntegrationConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getIntegrationConfig(_ request: GetIntegrationConfigRequest) async throws -> GetIntegrationConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getIntegrationConfigWithOptions(request as! GetIntegrationConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProblemWithOptions(_ request: GetProblemRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProblemResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProblem",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/detail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProblemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProblem(_ request: GetProblemRequest) async throws -> GetProblemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProblemWithOptions(request as! GetProblemRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProblemEffectionServiceWithOptions(_ request: GetProblemEffectionServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProblemEffectionServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectionServiceId)) {
            body["effectionServiceId"] = request.effectionServiceId!;
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProblemEffectionService",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/process/effectionService/detail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProblemEffectionServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProblemEffectionService(_ request: GetProblemEffectionServiceRequest) async throws -> GetProblemEffectionServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProblemEffectionServiceWithOptions(request as! GetProblemEffectionServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProblemImprovementWithOptions(_ request: GetProblemImprovementRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProblemImprovementResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProblemImprovement",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/improvement/detail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProblemImprovementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProblemImprovement(_ request: GetProblemImprovementRequest) async throws -> GetProblemImprovementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProblemImprovementWithOptions(request as! GetProblemImprovementRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProblemPreviewWithOptions(_ request: GetProblemPreviewRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetProblemPreviewResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectServiceIds)) {
            body["effectServiceIds"] = request.effectServiceIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.incidentId)) {
            body["incidentId"] = request.incidentId!;
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        if (!TeaUtils.Client.isUnset(request.problemLevel)) {
            body["problemLevel"] = request.problemLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemNotifyType)) {
            body["problemNotifyType"] = request.problemNotifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedServiceId)) {
            body["relatedServiceId"] = request.relatedServiceId!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupIds)) {
            body["serviceGroupIds"] = request.serviceGroupIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetProblemPreview",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/preview",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetProblemPreviewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getProblemPreview(_ request: GetProblemPreviewRequest) async throws -> GetProblemPreviewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getProblemPreviewWithOptions(request as! GetProblemPreviewRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceStatisticsWithOptions(_ request: GetResourceStatisticsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetResourceStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetResourceStatistics",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/config/resource/count",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetResourceStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getResourceStatistics(_ request: GetResourceStatisticsRequest) async throws -> GetResourceStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getResourceStatisticsWithOptions(request as! GetResourceStatisticsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRichTextWithOptions(_ request: GetRichTextRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRichTextResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["instanceId"] = request.instanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            body["instanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.richTextId)) {
            body["richTextId"] = request.richTextId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRichText",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/rich/detail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRichTextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRichText(_ request: GetRichTextRequest) async throws -> GetRichTextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRichTextWithOptions(request as! GetRichTextRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRouteRuleWithOptions(_ request: GetRouteRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetRouteRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.routeRuleId)) {
            body["routeRuleId"] = request.routeRuleId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetRouteRule",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/routeRule/detail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetRouteRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getRouteRule(_ request: GetRouteRuleRequest) async throws -> GetRouteRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getRouteRuleWithOptions(request as! GetRouteRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceWithOptions(_ request: GetServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            body["serviceId"] = request.serviceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetService",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/detail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getService(_ request: GetServiceRequest) async throws -> GetServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getServiceWithOptions(request as! GetServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceGroupWithOptions(_ request: GetServiceGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupId)) {
            body["serviceGroupId"] = request.serviceGroupId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetServiceGroup",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/group/detail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceGroup(_ request: GetServiceGroupRequest) async throws -> GetServiceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getServiceGroupWithOptions(request as! GetServiceGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceGroupPersonSchedulingWithOptions(_ request: GetServiceGroupPersonSchedulingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceGroupPersonSchedulingResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupId)) {
            body["serviceGroupId"] = request.serviceGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetServiceGroupPersonScheduling",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/group/scheduling/user/getScheduling",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceGroupPersonSchedulingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceGroupPersonScheduling(_ request: GetServiceGroupPersonSchedulingRequest) async throws -> GetServiceGroupPersonSchedulingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getServiceGroupPersonSchedulingWithOptions(request as! GetServiceGroupPersonSchedulingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceGroupSchedulingWithOptions(_ request: GetServiceGroupSchedulingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceGroupSchedulingResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupId)) {
            body["serviceGroupId"] = request.serviceGroupId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetServiceGroupScheduling",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/group/scheduling/detail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceGroupSchedulingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceGroupScheduling(_ request: GetServiceGroupSchedulingRequest) async throws -> GetServiceGroupSchedulingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getServiceGroupSchedulingWithOptions(request as! GetServiceGroupSchedulingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceGroupSchedulingPreviewWithOptions(_ request: GetServiceGroupSchedulingPreviewRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceGroupSchedulingPreviewResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fastScheduling)) {
            body["fastScheduling"] = request.fastScheduling!;
        }
        if (!TeaUtils.Client.isUnset(request.fineScheduling)) {
            body["fineScheduling"] = request.fineScheduling!;
        }
        if (!TeaUtils.Client.isUnset(request.schedulingWay)) {
            body["schedulingWay"] = request.schedulingWay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupId)) {
            body["serviceGroupId"] = request.serviceGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetServiceGroupSchedulingPreview",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/group/scheduling/preview",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceGroupSchedulingPreviewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceGroupSchedulingPreview(_ request: GetServiceGroupSchedulingPreviewRequest) async throws -> GetServiceGroupSchedulingPreviewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getServiceGroupSchedulingPreviewWithOptions(request as! GetServiceGroupSchedulingPreviewRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceGroupSpecialPersonSchedulingWithOptions(_ request: GetServiceGroupSpecialPersonSchedulingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetServiceGroupSpecialPersonSchedulingResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupId)) {
            body["serviceGroupId"] = request.serviceGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetServiceGroupSpecialPersonScheduling",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/group/scheduling/getUserScheduling",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetServiceGroupSpecialPersonSchedulingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getServiceGroupSpecialPersonScheduling(_ request: GetServiceGroupSpecialPersonSchedulingRequest) async throws -> GetServiceGroupSpecialPersonSchedulingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getServiceGroupSpecialPersonSchedulingWithOptions(request as! GetServiceGroupSpecialPersonSchedulingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSimilarIncidentStatisticsWithOptions(_ request: GetSimilarIncidentStatisticsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSimilarIncidentStatisticsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTime)) {
            body["createTime"] = request.createTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.events)) {
            body["events"] = request.events ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.incidentId)) {
            body["incidentId"] = request.incidentId!;
        }
        if (!TeaUtils.Client.isUnset(request.incidentTitle)) {
            body["incidentTitle"] = request.incidentTitle ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relatedServiceId)) {
            body["relatedServiceId"] = request.relatedServiceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSimilarIncidentStatistics",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/incident/similarIncident/statistics",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSimilarIncidentStatisticsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSimilarIncidentStatistics(_ request: GetSimilarIncidentStatisticsRequest) async throws -> GetSimilarIncidentStatisticsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSimilarIncidentStatisticsWithOptions(request as! GetSimilarIncidentStatisticsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSubscriptionWithOptions(_ request: GetSubscriptionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSubscriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.notFilterScopeObjectDeleted)) {
            body["notFilterScopeObjectDeleted"] = request.notFilterScopeObjectDeleted!;
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionId)) {
            body["subscriptionId"] = request.subscriptionId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSubscription",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/notify/subscription/detail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSubscriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSubscription(_ request: GetSubscriptionRequest) async throws -> GetSubscriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getSubscriptionWithOptions(request as! GetSubscriptionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTenantApplicationWithOptions(_ request: GetTenantApplicationRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTenantApplicationResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTenantApplication",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/mobileApp/detail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTenantApplicationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTenantApplication(_ request: GetTenantApplicationRequest) async throws -> GetTenantApplicationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTenantApplicationWithOptions(request as! GetTenantApplicationRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTenantStatusWithOptions(_ request: GetTenantStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetTenantStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.tenantRamId)) {
            body["tenantRamId"] = request.tenantRamId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetTenantStatus",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/tenant/getTenantStatus",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetTenantStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getTenantStatus(_ request: GetTenantStatusRequest) async throws -> GetTenantStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getTenantStatusWithOptions(request as! GetTenantStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserWithOptions(_ request: GetUserRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUser",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/user/getUser",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUser(_ request: GetUserRequest) async throws -> GetUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getUserWithOptions(request as! GetUserRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserGuideStatusWithOptions(_ request: GetUserGuideStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> GetUserGuideStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetUserGuideStatus",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/user/guide/status",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetUserGuideStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getUserGuideStatus(_ request: GetUserGuideStatusRequest) async throws -> GetUserGuideStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await getUserGuideStatusWithOptions(request as! GetUserGuideStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlertsWithOptions(_ request: ListAlertsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListAlertsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alertLevel)) {
            body["alertLevel"] = request.alertLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertName)) {
            body["alertName"] = request.alertName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.alertSourceName)) {
            body["alertSourceName"] = request.alertSourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.monitorSourceId)) {
            body["monitorSourceId"] = request.monitorSourceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.relatedServiceId)) {
            body["relatedServiceId"] = request.relatedServiceId!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            body["ruleName"] = request.ruleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListAlerts",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/alerts/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListAlertsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listAlerts(_ request: ListAlertsRequest) async throws -> ListAlertsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listAlertsWithOptions(request as! ListAlertsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listByMonitorSourceIdWithOptions(_ request: ListByMonitorSourceIdRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListByMonitorSourceIdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.monitorSourceId)) {
            body["monitorSourceId"] = request.monitorSourceId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListByMonitorSourceId",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/routeRule/listByMonitorSourceId",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListByMonitorSourceIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listByMonitorSourceId(_ request: ListByMonitorSourceIdRequest) async throws -> ListByMonitorSourceIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listByMonitorSourceIdWithOptions(request as! ListByMonitorSourceIdRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChartDataForServiceGroupWithOptions(_ request: ListChartDataForServiceGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListChartDataForServiceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListChartDataForServiceGroup",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/statistics/chartDataForServiceGroup/",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListChartDataForServiceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChartDataForServiceGroup(_ request: ListChartDataForServiceGroupRequest) async throws -> ListChartDataForServiceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listChartDataForServiceGroupWithOptions(request as! ListChartDataForServiceGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChartDataForUserWithOptions(_ request: ListChartDataForUserRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListChartDataForUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListChartDataForUser",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/statistics/chartDataForUser/",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListChartDataForUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listChartDataForUser(_ request: ListChartDataForUserRequest) async throws -> ListChartDataForUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listChartDataForUserWithOptions(request as! ListChartDataForUserRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConfigsWithOptions(_ request: ListConfigsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListConfigs",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/config/all",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listConfigs(_ request: ListConfigsRequest) async throws -> ListConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listConfigsWithOptions(request as! ListConfigsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataReportForServiceGroupWithOptions(_ request: ListDataReportForServiceGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataReportForServiceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupName)) {
            body["serviceGroupName"] = request.serviceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataReportForServiceGroup",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/statistics/listDataReportForServiceGroup",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataReportForServiceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataReportForServiceGroup(_ request: ListDataReportForServiceGroupRequest) async throws -> ListDataReportForServiceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDataReportForServiceGroupWithOptions(request as! ListDataReportForServiceGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataReportForUserWithOptions(_ request: ListDataReportForUserRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDataReportForUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDataReportForUser",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/statistics/listDataReportForUser",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDataReportForUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDataReportForUser(_ request: ListDataReportForUserRequest) async throws -> ListDataReportForUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDataReportForUserWithOptions(request as! ListDataReportForUserRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDictionariesWithOptions(_ request: ListDictionariesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDictionariesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDictionaries",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/dict/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDictionariesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDictionaries(_ request: ListDictionariesRequest) async throws -> ListDictionariesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listDictionariesWithOptions(request as! ListDictionariesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEscalationPlanServicesWithOptions(_ request: ListEscalationPlanServicesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEscalationPlanServicesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEscalationPlanServices",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/escalationPlan/services",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEscalationPlanServicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEscalationPlanServices(_ request: ListEscalationPlanServicesRequest) async throws -> ListEscalationPlanServicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listEscalationPlanServicesWithOptions(request as! ListEscalationPlanServicesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEscalationPlansWithOptions(_ request: ListEscalationPlansRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEscalationPlansResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.escalationPlanName)) {
            body["escalationPlanName"] = request.escalationPlanName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isGlobal)) {
            body["isGlobal"] = request.isGlobal!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            body["serviceName"] = request.serviceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEscalationPlans",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/escalationPlan/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEscalationPlansResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEscalationPlans(_ request: ListEscalationPlansRequest) async throws -> ListEscalationPlansResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listEscalationPlansWithOptions(request as! ListEscalationPlansRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEscalationPlansByNoticeObjectWithOptions(_ request: ListEscalationPlansByNoticeObjectRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListEscalationPlansByNoticeObjectResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.noticeObjectId)) {
            body["noticeObjectId"] = request.noticeObjectId!;
        }
        if (!TeaUtils.Client.isUnset(request.noticeObjectType)) {
            body["noticeObjectType"] = request.noticeObjectType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListEscalationPlansByNoticeObject",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/escalationPlan/listByNoticeObject",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListEscalationPlansByNoticeObjectResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listEscalationPlansByNoticeObject(_ request: ListEscalationPlansByNoticeObjectRequest) async throws -> ListEscalationPlansByNoticeObjectResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listEscalationPlansByNoticeObjectWithOptions(request as! ListEscalationPlansByNoticeObjectRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIncidentDetailEscalationPlansWithOptions(_ request: ListIncidentDetailEscalationPlansRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIncidentDetailEscalationPlansResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentId)) {
            body["incidentId"] = request.incidentId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIncidentDetailEscalationPlans",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/incident/detail/escalation",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIncidentDetailEscalationPlansResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIncidentDetailEscalationPlans(_ request: ListIncidentDetailEscalationPlansRequest) async throws -> ListIncidentDetailEscalationPlansResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listIncidentDetailEscalationPlansWithOptions(request as! ListIncidentDetailEscalationPlansRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIncidentDetailTimelinesWithOptions(_ request: ListIncidentDetailTimelinesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIncidentDetailTimelinesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idSort)) {
            body["idSort"] = request.idSort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentId)) {
            body["incidentId"] = request.incidentId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIncidentDetailTimelines",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/incident/detail/timeline",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIncidentDetailTimelinesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIncidentDetailTimelines(_ request: ListIncidentDetailTimelinesRequest) async throws -> ListIncidentDetailTimelinesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listIncidentDetailTimelinesWithOptions(request as! ListIncidentDetailTimelinesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIncidentSubtotalsWithOptions(_ request: ListIncidentSubtotalsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIncidentSubtotalsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentId)) {
            body["incidentId"] = request.incidentId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIncidentSubtotals",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/incident/list/subtotal",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIncidentSubtotalsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIncidentSubtotals(_ request: ListIncidentSubtotalsRequest) async throws -> ListIncidentSubtotalsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listIncidentSubtotalsWithOptions(request as! ListIncidentSubtotalsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIncidentTimelinesWithOptions(_ request: ListIncidentTimelinesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIncidentTimelinesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIncidentTimelines",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/incident/timeline",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIncidentTimelinesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIncidentTimelines(_ request: ListIncidentTimelinesRequest) async throws -> ListIncidentTimelinesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listIncidentTimelinesWithOptions(request as! ListIncidentTimelinesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIncidentsWithOptions(_ request: ListIncidentsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIncidentsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createEndTime)) {
            body["createEndTime"] = request.createEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createStartTime)) {
            body["createStartTime"] = request.createStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effect)) {
            body["effect"] = request.effect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentLevel)) {
            body["incidentLevel"] = request.incidentLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentStatus)) {
            body["incidentStatus"] = request.incidentStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.me)) {
            body["me"] = request.me!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.relationServiceId)) {
            body["relationServiceId"] = request.relationServiceId!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            body["ruleName"] = request.ruleName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIncidents",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/incident/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIncidentsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIncidents(_ request: ListIncidentsRequest) async throws -> ListIncidentsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listIncidentsWithOptions(request as! ListIncidentsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegrationConfigTimelinesWithOptions(_ request: ListIntegrationConfigTimelinesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIntegrationConfigTimelinesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.integrationConfigId)) {
            body["integrationConfigId"] = request.integrationConfigId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIntegrationConfigTimelines",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/integrationConfig/timeline",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIntegrationConfigTimelinesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegrationConfigTimelines(_ request: ListIntegrationConfigTimelinesRequest) async throws -> ListIntegrationConfigTimelinesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listIntegrationConfigTimelinesWithOptions(request as! ListIntegrationConfigTimelinesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegrationConfigsWithOptions(_ request: ListIntegrationConfigsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListIntegrationConfigsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.monitorSourceName)) {
            body["monitorSourceName"] = request.monitorSourceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListIntegrationConfigs",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/integrationConfig/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListIntegrationConfigsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listIntegrationConfigs(_ request: ListIntegrationConfigsRequest) async throws -> ListIntegrationConfigsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listIntegrationConfigsWithOptions(request as! ListIntegrationConfigsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMonitorSourcesWithOptions(_ request: ListMonitorSourcesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListMonitorSourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListMonitorSources",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/monitorSource/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListMonitorSourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listMonitorSources(_ request: ListMonitorSourcesRequest) async throws -> ListMonitorSourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listMonitorSourcesWithOptions(request as! ListMonitorSourcesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProblemDetailOperationsWithOptions(_ request: ListProblemDetailOperationsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProblemDetailOperationsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.createTimeSort)) {
            body["createTimeSort"] = request.createTimeSort ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProblemDetailOperations",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/detail/operations",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProblemDetailOperationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProblemDetailOperations(_ request: ListProblemDetailOperationsRequest) async throws -> ListProblemDetailOperationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProblemDetailOperationsWithOptions(request as! ListProblemDetailOperationsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProblemOperationsWithOptions(_ request: ListProblemOperationsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProblemOperationsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProblemOperations",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/operations",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProblemOperationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProblemOperations(_ request: ListProblemOperationsRequest) async throws -> ListProblemOperationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProblemOperationsWithOptions(request as! ListProblemOperationsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProblemSubtotalsWithOptions(_ request: ListProblemSubtotalsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProblemSubtotalsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProblemSubtotals",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/list/subtotal",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProblemSubtotalsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProblemSubtotals(_ request: ListProblemSubtotalsRequest) async throws -> ListProblemSubtotalsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProblemSubtotalsWithOptions(request as! ListProblemSubtotalsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProblemTimeLinesWithOptions(_ request: ListProblemTimeLinesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProblemTimeLinesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProblemTimeLines",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/detail/timeLines",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProblemTimeLinesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProblemTimeLines(_ request: ListProblemTimeLinesRequest) async throws -> ListProblemTimeLinesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProblemTimeLinesWithOptions(request as! ListProblemTimeLinesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProblemsWithOptions(_ request: ListProblemsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListProblemsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.affectServiceId)) {
            body["affectServiceId"] = request.affectServiceId!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.discoveryEndTime)) {
            body["discoveryEndTime"] = request.discoveryEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.discoveryStartTime)) {
            body["discoveryStartTime"] = request.discoveryStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mainHandlerId)) {
            body["mainHandlerId"] = request.mainHandlerId!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.problemLevel)) {
            body["problemLevel"] = request.problemLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemStatus)) {
            body["problemStatus"] = request.problemStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryType)) {
            body["queryType"] = request.queryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.repeaterId)) {
            body["repeaterId"] = request.repeaterId!;
        }
        if (!TeaUtils.Client.isUnset(request.restoreEndTime)) {
            body["restoreEndTime"] = request.restoreEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.restoreStartTime)) {
            body["restoreStartTime"] = request.restoreStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupId)) {
            body["serviceGroupId"] = request.serviceGroupId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListProblems",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/listProblems",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListProblemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listProblems(_ request: ListProblemsRequest) async throws -> ListProblemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listProblemsWithOptions(request as! ListProblemsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRouteRulesWithOptions(_ request: ListRouteRulesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRouteRulesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notFilterRouteRuleDeleted)) {
            body["notFilterRouteRuleDeleted"] = request.notFilterRouteRuleDeleted!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.routeType)) {
            body["routeType"] = request.routeType!;
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            body["ruleName"] = request.ruleName!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            body["serviceName"] = request.serviceName!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRouteRules",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/routeRule/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRouteRulesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRouteRules(_ request: ListRouteRulesRequest) async throws -> ListRouteRulesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRouteRulesWithOptions(request as! ListRouteRulesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRouteRulesByAssignWhoIdWithOptions(_ request: ListRouteRulesByAssignWhoIdRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRouteRulesByAssignWhoIdResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assignWhoId)) {
            body["assignWhoId"] = request.assignWhoId!;
        }
        if (!TeaUtils.Client.isUnset(request.assignWhoType)) {
            body["assignWhoType"] = request.assignWhoType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRouteRulesByAssignWhoId",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/routeRule/listByAssignWhoId",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRouteRulesByAssignWhoIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRouteRulesByAssignWhoId(_ request: ListRouteRulesByAssignWhoIdRequest) async throws -> ListRouteRulesByAssignWhoIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRouteRulesByAssignWhoIdWithOptions(request as! ListRouteRulesByAssignWhoIdRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRouteRulesByServiceWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListRouteRulesByServiceResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListRouteRulesByService",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/routeRule/listByService",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListRouteRulesByServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listRouteRulesByService() async throws -> ListRouteRulesByServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listRouteRulesByServiceWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceGroupMonitorSourceTemplatesWithOptions(_ request: ListServiceGroupMonitorSourceTemplatesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListServiceGroupMonitorSourceTemplatesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            body["requestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupId)) {
            body["serviceGroupId"] = request.serviceGroupId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListServiceGroupMonitorSourceTemplates",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/group/listServiceGroupMonitorSourceTemplates",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListServiceGroupMonitorSourceTemplatesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceGroupMonitorSourceTemplates(_ request: ListServiceGroupMonitorSourceTemplatesRequest) async throws -> ListServiceGroupMonitorSourceTemplatesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listServiceGroupMonitorSourceTemplatesWithOptions(request as! ListServiceGroupMonitorSourceTemplatesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceGroupsWithOptions(_ request: ListServiceGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListServiceGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.isScheduled)) {
            body["isScheduled"] = request.isScheduled!;
        }
        if (!TeaUtils.Client.isUnset(request.orderByScheduleStatus)) {
            body["orderByScheduleStatus"] = request.orderByScheduleStatus!;
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.queryName)) {
            body["queryName"] = request.queryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryType)) {
            body["queryType"] = request.queryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            body["serviceId"] = request.serviceId!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListServiceGroups",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/group/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListServiceGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceGroups(_ request: ListServiceGroupsRequest) async throws -> ListServiceGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listServiceGroupsWithOptions(request as! ListServiceGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceGroupsByUserIdWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListServiceGroupsByUserIdResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListServiceGroupsByUserId",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/group/listByUserId",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListServiceGroupsByUserIdResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServiceGroupsByUserId() async throws -> ListServiceGroupsByUserIdResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listServiceGroupsByUserIdWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServicesWithOptions(_ request: ListServicesRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListServicesResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            body["serviceName"] = request.serviceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListServices",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListServicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listServices(_ request: ListServicesRequest) async throws -> ListServicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listServicesWithOptions(request as! ListServicesRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSourceEventsWithOptions(_ request: ListSourceEventsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSourceEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["instanceId"] = request.instanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            body["instanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.startRowKey)) {
            body["startRowKey"] = request.startRowKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stopRowKey)) {
            body["stopRowKey"] = request.stopRowKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSourceEvents",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/events/listOriginalEvent",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSourceEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSourceEvents(_ request: ListSourceEventsRequest) async throws -> ListSourceEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSourceEventsWithOptions(request as! ListSourceEventsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSourceEventsForMonitorSourceWithOptions(_ request: ListSourceEventsForMonitorSourceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSourceEventsForMonitorSourceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.monitorSourceId)) {
            body["monitorSourceId"] = request.monitorSourceId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSourceEventsForMonitorSource",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/events/queryLastestEvents",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSourceEventsForMonitorSourceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSourceEventsForMonitorSource(_ request: ListSourceEventsForMonitorSourceRequest) async throws -> ListSourceEventsForMonitorSourceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSourceEventsForMonitorSourceWithOptions(request as! ListSourceEventsForMonitorSourceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSubscriptionServiceGroupsWithOptions(_ request: ListSubscriptionServiceGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSubscriptionServiceGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceIds)) {
            body["serviceIds"] = request.serviceIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSubscriptionServiceGroups",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/serviceGroup/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSubscriptionServiceGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSubscriptionServiceGroups(_ request: ListSubscriptionServiceGroupsRequest) async throws -> ListSubscriptionServiceGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSubscriptionServiceGroupsWithOptions(request as! ListSubscriptionServiceGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSubscriptionsWithOptions(_ request: ListSubscriptionsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListSubscriptionsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notFilterScopeObjectDeleted)) {
            body["notFilterScopeObjectDeleted"] = request.notFilterScopeObjectDeleted!;
        }
        if (!TeaUtils.Client.isUnset(request.notifyObject)) {
            body["notifyObject"] = request.notifyObject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyObjectType)) {
            body["notifyObjectType"] = request.notifyObjectType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scopeObject)) {
            body["scopeObject"] = request.scopeObject ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionTitle)) {
            body["subscriptionTitle"] = request.subscriptionTitle ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListSubscriptions",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/notify/subscription/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListSubscriptionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listSubscriptions(_ request: ListSubscriptionsRequest) async throws -> ListSubscriptionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listSubscriptionsWithOptions(request as! ListSubscriptionsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrendForSourceEventWithOptions(_ request: ListTrendForSourceEventRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTrendForSourceEventResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["instanceId"] = request.instanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            body["instanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.requestId)) {
            body["requestId"] = request.requestId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeUnit)) {
            body["timeUnit"] = request.timeUnit!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTrendForSourceEvent",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/events/querySourceEventTrend",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTrendForSourceEventResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTrendForSourceEvent(_ request: ListTrendForSourceEventRequest) async throws -> ListTrendForSourceEventResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listTrendForSourceEventWithOptions(request as! ListTrendForSourceEventRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserSerivceGroupsWithOptions(_ request: ListUserSerivceGroupsRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserSerivceGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserSerivceGroups",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/user/preview/detail",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserSerivceGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserSerivceGroups(_ request: ListUserSerivceGroupsRequest) async throws -> ListUserSerivceGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listUserSerivceGroupsWithOptions(request as! ListUserSerivceGroupsRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsersWithOptions(_ request: ListUsersRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            body["pageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            body["pageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            body["phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ramId)) {
            body["ramId"] = request.ramId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scene)) {
            body["scene"] = request.scene!;
        }
        if (!TeaUtils.Client.isUnset(request.synergyChannel)) {
            body["synergyChannel"] = request.synergyChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            body["username"] = request.username ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUsers",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/user/list",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUsers(_ request: ListUsersRequest) async throws -> ListUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await listUsersWithOptions(request as! ListUsersRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushMonitorWithOptions(_ apiKey: String, _ request: PushMonitorRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> PushMonitorResponse {
        try TeaUtils.Client.validateModel(request)
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": request.body ?? ""
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "PushMonitor",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/api/monitor/push/" + (AlibabaCloudOpenApiUtil.Client.getEncodeParam(apiKey)),
            "method": "POST",
            "authType": "Anonymous",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(PushMonitorResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func pushMonitor(_ apiKey: String, _ request: PushMonitorRequest) async throws -> PushMonitorResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await pushMonitorWithOptions(apiKey as! String, request as! PushMonitorRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recoverProblemWithOptions(_ request: RecoverProblemRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RecoverProblemResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        if (!TeaUtils.Client.isUnset(request.problemNotifyType)) {
            body["problemNotifyType"] = request.problemNotifyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryTime)) {
            body["recoveryTime"] = request.recoveryTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RecoverProblem",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/recovery",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RecoverProblemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func recoverProblem(_ request: RecoverProblemRequest) async throws -> RecoverProblemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await recoverProblemWithOptions(request as! RecoverProblemRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshIntegrationConfigKeyWithOptions(_ request: RefreshIntegrationConfigKeyRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RefreshIntegrationConfigKeyResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.integrationConfigId)) {
            body["integrationConfigId"] = request.integrationConfigId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RefreshIntegrationConfigKey",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/integrationConfig/refreshKey",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RefreshIntegrationConfigKeyResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func refreshIntegrationConfigKey(_ request: RefreshIntegrationConfigKeyRequest) async throws -> RefreshIntegrationConfigKeyResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await refreshIntegrationConfigKeyWithOptions(request as! RefreshIntegrationConfigKeyRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeIntegrationConfigWithOptions(_ request: RemoveIntegrationConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveIntegrationConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.integrationConfigId)) {
            body["integrationConfigId"] = request.integrationConfigId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveIntegrationConfig",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/integrationConfig/remove",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveIntegrationConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeIntegrationConfig(_ request: RemoveIntegrationConfigRequest) async throws -> RemoveIntegrationConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeIntegrationConfigWithOptions(request as! RemoveIntegrationConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeProblemServiceGroupWithOptions(_ request: RemoveProblemServiceGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveProblemServiceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupIds)) {
            body["serviceGroupIds"] = request.serviceGroupIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveProblemServiceGroup",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/removeServiceGroup",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveProblemServiceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeProblemServiceGroup(_ request: RemoveProblemServiceGroupRequest) async throws -> RemoveProblemServiceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await removeProblemServiceGroupWithOptions(request as! RemoveProblemServiceGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func replayProblemWithOptions(_ request: ReplayProblemRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> ReplayProblemResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        if (!TeaUtils.Client.isUnset(request.replayDutyUserId)) {
            body["replayDutyUserId"] = request.replayDutyUserId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ReplayProblem",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/replay",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ReplayProblemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func replayProblem(_ request: ReplayProblemRequest) async throws -> ReplayProblemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await replayProblemWithOptions(request as! ReplayProblemRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func respondIncidentWithOptions(_ request: RespondIncidentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RespondIncidentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentIds)) {
            body["incidentIds"] = request.incidentIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RespondIncident",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/incident/response",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RespondIncidentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func respondIncident(_ request: RespondIncidentRequest) async throws -> RespondIncidentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await respondIncidentWithOptions(request as! RespondIncidentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeProblemRecoveryWithOptions(_ request: RevokeProblemRecoveryRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeProblemRecoveryResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        if (!TeaUtils.Client.isUnset(request.problemNotifyType)) {
            body["problemNotifyType"] = request.problemNotifyType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokeProblemRecovery",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/revoke",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokeProblemRecoveryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeProblemRecovery(_ request: RevokeProblemRecoveryRequest) async throws -> RevokeProblemRecoveryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await revokeProblemRecoveryWithOptions(request as! RevokeProblemRecoveryRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindUserWithOptions(_ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UnbindUserResponse {
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String]
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnbindUser",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/user/unbind",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnbindUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unbindUser() async throws -> UnbindUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await unbindUserWithOptions(headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEscalationPlanWithOptions(_ request: UpdateEscalationPlanRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateEscalationPlanResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.escalationPlanDescription)) {
            body["escalationPlanDescription"] = request.escalationPlanDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.escalationPlanId)) {
            body["escalationPlanId"] = request.escalationPlanId!;
        }
        if (!TeaUtils.Client.isUnset(request.escalationPlanName)) {
            body["escalationPlanName"] = request.escalationPlanName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.escalationPlanRules)) {
            body["escalationPlanRules"] = request.escalationPlanRules ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.escalationPlanScopeObjects)) {
            body["escalationPlanScopeObjects"] = request.escalationPlanScopeObjects ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.isGlobal)) {
            body["isGlobal"] = request.isGlobal!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateEscalationPlan",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/escalationPlan/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateEscalationPlanResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateEscalationPlan(_ request: UpdateEscalationPlanRequest) async throws -> UpdateEscalationPlanResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateEscalationPlanWithOptions(request as! UpdateEscalationPlanRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIncidentWithOptions(_ request: UpdateIncidentRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateIncidentResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effect)) {
            body["effect"] = request.effect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentId)) {
            body["incidentId"] = request.incidentId!;
        }
        if (!TeaUtils.Client.isUnset(request.incidentLevel)) {
            body["incidentLevel"] = request.incidentLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentTitle)) {
            body["incidentTitle"] = request.incidentTitle ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateIncident",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/incident/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateIncidentResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIncident(_ request: UpdateIncidentRequest) async throws -> UpdateIncidentResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateIncidentWithOptions(request as! UpdateIncidentRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIntegrationConfigWithOptions(_ request: UpdateIntegrationConfigRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateIntegrationConfigResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.accessKey)) {
            body["accessKey"] = request.accessKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.integrationConfigId)) {
            body["integrationConfigId"] = request.integrationConfigId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateIntegrationConfig",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/integrationConfig/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateIntegrationConfigResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateIntegrationConfig(_ request: UpdateIntegrationConfigRequest) async throws -> UpdateIntegrationConfigResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateIntegrationConfigWithOptions(request as! UpdateIntegrationConfigRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProblemWithOptions(_ request: UpdateProblemRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProblemResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.feedback)) {
            body["feedback"] = request.feedback ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.level)) {
            body["level"] = request.level ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mainHandlerId)) {
            body["mainHandlerId"] = request.mainHandlerId!;
        }
        if (!TeaUtils.Client.isUnset(request.preliminaryReason)) {
            body["preliminaryReason"] = request.preliminaryReason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        if (!TeaUtils.Client.isUnset(request.problemName)) {
            body["problemName"] = request.problemName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.progressSummary)) {
            body["progressSummary"] = request.progressSummary ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.progressSummaryRichTextId)) {
            body["progressSummaryRichTextId"] = request.progressSummaryRichTextId!;
        }
        if (!TeaUtils.Client.isUnset(request.relatedServiceId)) {
            body["relatedServiceId"] = request.relatedServiceId!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupIds)) {
            body["serviceGroupIds"] = request.serviceGroupIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProblem",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProblemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProblem(_ request: UpdateProblemRequest) async throws -> UpdateProblemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateProblemWithOptions(request as! UpdateProblemRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProblemEffectionServiceWithOptions(_ request: UpdateProblemEffectionServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProblemEffectionServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            body["description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.effectionServiceId)) {
            body["effectionServiceId"] = request.effectionServiceId!;
        }
        if (!TeaUtils.Client.isUnset(request.level)) {
            body["level"] = request.level ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.picUrl)) {
            body["picUrl"] = request.picUrl ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            body["serviceId"] = request.serviceId!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProblemEffectionService",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/process/effectionService/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProblemEffectionServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProblemEffectionService(_ request: UpdateProblemEffectionServiceRequest) async throws -> UpdateProblemEffectionServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateProblemEffectionServiceWithOptions(request as! UpdateProblemEffectionServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProblemImprovementWithOptions(_ request: UpdateProblemImprovementRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProblemImprovementResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.customProblemReason)) {
            body["customProblemReason"] = request.customProblemReason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.discoverSource)) {
            body["discoverSource"] = request.discoverSource!;
        }
        if (!TeaUtils.Client.isUnset(request.dutyDepartmentId)) {
            body["dutyDepartmentId"] = request.dutyDepartmentId!;
        }
        if (!TeaUtils.Client.isUnset(request.dutyDepartmentName)) {
            body["dutyDepartmentName"] = request.dutyDepartmentName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dutyUserId)) {
            body["dutyUserId"] = request.dutyUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.injectionMode)) {
            body["injectionMode"] = request.injectionMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.monitorSourceName)) {
            body["monitorSourceName"] = request.monitorSourceName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        if (!TeaUtils.Client.isUnset(request.problemReason)) {
            body["problemReason"] = request.problemReason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recentActivity)) {
            body["recentActivity"] = request.recentActivity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recoveryMode)) {
            body["recoveryMode"] = request.recoveryMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.relationChanges)) {
            body["relationChanges"] = request.relationChanges ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remark)) {
            body["remark"] = request.remark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.replayDutyUserId)) {
            body["replayDutyUserId"] = request.replayDutyUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.userReport)) {
            body["userReport"] = request.userReport!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProblemImprovement",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/improvement/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProblemImprovementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProblemImprovement(_ request: UpdateProblemImprovementRequest) async throws -> UpdateProblemImprovementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateProblemImprovementWithOptions(request as! UpdateProblemImprovementRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProblemMeasureWithOptions(_ request: UpdateProblemMeasureRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProblemMeasureResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.checkStandard)) {
            body["checkStandard"] = request.checkStandard ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkUserId)) {
            body["checkUserId"] = request.checkUserId!;
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directorId)) {
            body["directorId"] = request.directorId!;
        }
        if (!TeaUtils.Client.isUnset(request.measureId)) {
            body["measureId"] = request.measureId!;
        }
        if (!TeaUtils.Client.isUnset(request.planFinishTime)) {
            body["planFinishTime"] = request.planFinishTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        if (!TeaUtils.Client.isUnset(request.stalkerId)) {
            body["stalkerId"] = request.stalkerId!;
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            body["status"] = request.status ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            body["type"] = request.type!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProblemMeasure",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/improvement/measure/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProblemMeasureResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProblemMeasure(_ request: UpdateProblemMeasureRequest) async throws -> UpdateProblemMeasureResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateProblemMeasureWithOptions(request as! UpdateProblemMeasureRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProblemNoticeWithOptions(_ request: UpdateProblemNoticeRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProblemNoticeResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        if (!TeaUtils.Client.isUnset(request.problemNotifyType)) {
            body["problemNotifyType"] = request.problemNotifyType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProblemNotice",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/notify",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProblemNoticeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProblemNotice(_ request: UpdateProblemNoticeRequest) async throws -> UpdateProblemNoticeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateProblemNoticeWithOptions(request as! UpdateProblemNoticeRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProblemTimelineWithOptions(_ request: UpdateProblemTimelineRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateProblemTimelineResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.content)) {
            body["content"] = request.content ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keyNode)) {
            body["keyNode"] = request.keyNode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.problemId)) {
            body["problemId"] = request.problemId!;
        }
        if (!TeaUtils.Client.isUnset(request.problemTimelineId)) {
            body["problemTimelineId"] = request.problemTimelineId!;
        }
        if (!TeaUtils.Client.isUnset(request.time)) {
            body["time"] = request.time ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateProblemTimeline",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/problem/process/timeline/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateProblemTimelineResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateProblemTimeline(_ request: UpdateProblemTimelineRequest) async throws -> UpdateProblemTimelineResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateProblemTimelineWithOptions(request as! UpdateProblemTimelineRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRichTextWithOptions(_ request: UpdateRichTextRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRichTextResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            body["instanceId"] = request.instanceId!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            body["instanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.richText)) {
            body["richText"] = request.richText ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.richTextId)) {
            body["richTextId"] = request.richTextId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRichText",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/rich/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRichTextResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRichText(_ request: UpdateRichTextRequest) async throws -> UpdateRichTextResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateRichTextWithOptions(request as! UpdateRichTextRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRouteRuleWithOptions(_ request: UpdateRouteRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateRouteRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.assignObjectId)) {
            body["assignObjectId"] = request.assignObjectId!;
        }
        if (!TeaUtils.Client.isUnset(request.assignObjectType)) {
            body["assignObjectType"] = request.assignObjectType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.childRuleRelation)) {
            body["childRuleRelation"] = request.childRuleRelation ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.convergenceFields)) {
            body["convergenceFields"] = request.convergenceFields ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.convergenceType)) {
            body["convergenceType"] = request.convergenceType!;
        }
        if (!TeaUtils.Client.isUnset(request.coverageProblemLevels)) {
            body["coverageProblemLevels"] = request.coverageProblemLevels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.effection)) {
            body["effection"] = request.effection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.incidentLevel)) {
            body["incidentLevel"] = request.incidentLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.matchCount)) {
            body["matchCount"] = request.matchCount!;
        }
        if (!TeaUtils.Client.isUnset(request.notifyChannels)) {
            body["notifyChannels"] = request.notifyChannels ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.problemEffectionServices)) {
            body["problemEffectionServices"] = request.problemEffectionServices ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.problemLevelGroup)) {
            body["problemLevelGroup"] = request.problemLevelGroup ?? [:];
        }
        if (!TeaUtils.Client.isUnset(request.relatedServiceId)) {
            body["relatedServiceId"] = request.relatedServiceId!;
        }
        if (!TeaUtils.Client.isUnset(request.routeChildRules)) {
            body["routeChildRules"] = request.routeChildRules ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.routeRuleId)) {
            body["routeRuleId"] = request.routeRuleId!;
        }
        if (!TeaUtils.Client.isUnset(request.routeType)) {
            body["routeType"] = request.routeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ruleName)) {
            body["ruleName"] = request.ruleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeWindow)) {
            body["timeWindow"] = request.timeWindow!;
        }
        if (!TeaUtils.Client.isUnset(request.timeWindowUnit)) {
            body["timeWindowUnit"] = request.timeWindowUnit ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateRouteRule",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/routeRule/edit",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateRouteRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateRouteRule(_ request: UpdateRouteRuleRequest) async throws -> UpdateRouteRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateRouteRuleWithOptions(request as! UpdateRouteRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceWithOptions(_ request: UpdateServiceRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.escalationPlanId)) {
            body["escalationPlanId"] = request.escalationPlanId!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceDescription)) {
            body["serviceDescription"] = request.serviceDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupIdList)) {
            body["serviceGroupIdList"] = request.serviceGroupIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.serviceId)) {
            body["serviceId"] = request.serviceId!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceName)) {
            body["serviceName"] = request.serviceName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateService",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateService(_ request: UpdateServiceRequest) async throws -> UpdateServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateServiceWithOptions(request as! UpdateServiceRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceGroupWithOptions(_ request: UpdateServiceGroupRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateServiceGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableWebhook)) {
            body["enableWebhook"] = request.enableWebhook ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.monitorSourceTemplates)) {
            body["monitorSourceTemplates"] = request.monitorSourceTemplates ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupDescription)) {
            body["serviceGroupDescription"] = request.serviceGroupDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupId)) {
            body["serviceGroupId"] = request.serviceGroupId!;
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupName)) {
            body["serviceGroupName"] = request.serviceGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userIds)) {
            body["userIds"] = request.userIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.webhookLink)) {
            body["webhookLink"] = request.webhookLink ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.webhookType)) {
            body["webhookType"] = request.webhookType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateServiceGroup",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/group/modify",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateServiceGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceGroup(_ request: UpdateServiceGroupRequest) async throws -> UpdateServiceGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateServiceGroupWithOptions(request as! UpdateServiceGroupRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceGroupSchedulingWithOptions(_ request: UpdateServiceGroupSchedulingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateServiceGroupSchedulingResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fastScheduling)) {
            body["fastScheduling"] = request.fastScheduling!;
        }
        if (!TeaUtils.Client.isUnset(request.fineScheduling)) {
            body["fineScheduling"] = request.fineScheduling!;
        }
        if (!TeaUtils.Client.isUnset(request.schedulingWay)) {
            body["schedulingWay"] = request.schedulingWay ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupId)) {
            body["serviceGroupId"] = request.serviceGroupId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateServiceGroupScheduling",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/group/scheduling/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateServiceGroupSchedulingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceGroupScheduling(_ request: UpdateServiceGroupSchedulingRequest) async throws -> UpdateServiceGroupSchedulingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateServiceGroupSchedulingWithOptions(request as! UpdateServiceGroupSchedulingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceGroupSpecialDaySchedulingWithOptions(_ request: UpdateServiceGroupSpecialDaySchedulingRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateServiceGroupSpecialDaySchedulingResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schedulingDate)) {
            body["schedulingDate"] = request.schedulingDate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.schedulingSpecialDays)) {
            body["schedulingSpecialDays"] = request.schedulingSpecialDays ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.serviceGroupId)) {
            body["serviceGroupId"] = request.serviceGroupId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateServiceGroupSpecialDayScheduling",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/services/group/scheduling/updateSpecialDayScheduling",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateServiceGroupSpecialDaySchedulingResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateServiceGroupSpecialDayScheduling(_ request: UpdateServiceGroupSpecialDaySchedulingRequest) async throws -> UpdateServiceGroupSpecialDaySchedulingResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateServiceGroupSpecialDaySchedulingWithOptions(request as! UpdateServiceGroupSpecialDaySchedulingRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSubscriptionWithOptions(_ request: UpdateSubscriptionRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateSubscriptionResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            body["endTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.expiredType)) {
            body["expiredType"] = request.expiredType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyObjectList)) {
            body["notifyObjectList"] = request.notifyObjectList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.notifyObjectType)) {
            body["notifyObjectType"] = request.notifyObjectType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.notifyStrategyList)) {
            body["notifyStrategyList"] = request.notifyStrategyList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            body["period"] = request.period ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scope)) {
            body["scope"] = request.scope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.scopeObjectList)) {
            body["scopeObjectList"] = request.scopeObjectList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            body["startTime"] = request.startTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionId)) {
            body["subscriptionId"] = request.subscriptionId!;
        }
        if (!TeaUtils.Client.isUnset(request.subscriptionTitle)) {
            body["subscriptionTitle"] = request.subscriptionTitle ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateSubscription",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/notify/subscription/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateSubscriptionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateSubscription(_ request: UpdateSubscriptionRequest) async throws -> UpdateSubscriptionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateSubscriptionWithOptions(request as! UpdateSubscriptionRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserWithOptions(_ request: UpdateUserRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.email)) {
            body["email"] = request.email ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.phone)) {
            body["phone"] = request.phone ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ramId)) {
            body["ramId"] = request.ramId!;
        }
        if (!TeaUtils.Client.isUnset(request.roleIdList)) {
            body["roleIdList"] = request.roleIdList ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            body["userId"] = request.userId!;
        }
        if (!TeaUtils.Client.isUnset(request.username)) {
            body["username"] = request.username ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUser",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/user/update",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUser(_ request: UpdateUserRequest) async throws -> UpdateUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateUserWithOptions(request as! UpdateUserRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserGuideStatusWithOptions(_ request: UpdateUserGuideStatusRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateUserGuideStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            body["clientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.guideAction)) {
            body["guideAction"] = request.guideAction ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateUserGuideStatus",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/user/update/guide/status",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateUserGuideStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateUserGuideStatus(_ request: UpdateUserGuideStatusRequest) async throws -> UpdateUserGuideStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await updateUserGuideStatusWithOptions(request as! UpdateUserGuideStatusRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyRouteRuleWithOptions(_ request: VerifyRouteRuleRequest, _ headers: [String: String], _ runtime: TeaUtils.RuntimeOptions) async throws -> VerifyRouteRuleResponse {
        try TeaUtils.Client.validateModel(request)
        var body: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.routeRuleId)) {
            body["routeRuleId"] = request.routeRuleId!;
        }
        if (!TeaUtils.Client.isUnset(request.testSourceEvents)) {
            body["testSourceEvents"] = request.testSourceEvents ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "headers": headers as! [String: String],
            "body": AlibabaCloudOpenApiUtil.Client.parseToMap(body)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VerifyRouteRule",
            "version": "2021-04-13",
            "protocol": "HTTPS",
            "pathname": "/routeRule/verify",
            "method": "POST",
            "authType": "AK",
            "style": "ROA",
            "reqBodyType": "json",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VerifyRouteRuleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyRouteRule(_ request: VerifyRouteRuleRequest) async throws -> VerifyRouteRuleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        var headers: [String: String] = [:]
        return try await verifyRouteRuleWithOptions(request as! VerifyRouteRuleRequest, headers as! [String: String], runtime as! TeaUtils.RuntimeOptions)
    }
}
